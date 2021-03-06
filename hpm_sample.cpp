#include "bigHeader.h"
#include "hpm_sample.h"

extern "C" int func();
// the definition of func is written in assembly language
// raw string literal could be very useful
asm(R"(
.globl func
    .type func, @function
    func:
    .cfi_startproc
    movl $7, %eax
    ret
    .cfi_endproc
)");


std::string getCpuName(){
	uint32_t data[4] = {0};
	int cpuInfo[4]   = {0};
	__cpuid(
		cpuInfo[0],
		cpuInfo[1],
		cpuInfo[2],
		cpuInfo[3],
		cpuInfo[4]
		); 

	for(auto i = 0;i < 5 ;i++){
		std::cout << i<<"="<<cpuInfo[i]<<"\n";
	}

	return "";
}


auto optimization()->void{
	const int length = 1024*1024*64;
	return;
}

auto hpm_sample()->void{

	auto cpuName = getCpuName();
	std::cout <<"cpuName="<<cpuName<<"\n";
	
	int n = func();
	std::cout <<"n= "<<n<<"\n";

	asm ("leal (%0,%0,4),%0"
         : "=r" (n)
         : "0" (n));

	std::cout <<"7*5 = "<<n<<"\n";

	/*
		__m128 stands for 128bit float
		__m128d stands for 128bit double
		__m128i stands for 128bit integer
	*/

	/*
		single instruction multiple
		data set for parallel processing
		
		the anatomy of instruction
		set __m256_mul_ps
		_m stands for 256 values
		mul -> multiplication
		p->packed data
		s-> stands for single precsision

	*/



	__m128 a = _mm_set_ps(1,2,3,4);
	__m128 b = _mm_set_ps(4,3,2,1);
	__m128 c = _mm_add_ps(a,b);
	float f[8];
	_mm_store_ps(f,c);
	for(int i=0; i<8; i++){
		std::cout << i<<"="<<f[i]<<"\n";
	}

	/*
		another way to add two vectors
	*/




	float temp1[] __attribute__((__aligned__(16))) = {1.1,1.2,1.3,14.5,3.1,5.2,2.3,3.4};
    float temp2[] __attribute__((__aligned__(16))) = {1.2,2.3,3.4,3.5,1.2,2.3,4.2,2.2};
   	float temp3[8];
   	__m128 m, m_result;
   	__m128 arr1 = _mm_load_ps(temp1);
   	__m128 arr2 = _mm_load_ps(temp2);

	m        = _mm_mul_ps(arr1, arr2);
	m_result = _mm_add_ps(m, m); 
    _mm_store_ps(temp3, m_result); 
    for(int i = 0; i < 4; i++){   
            std::cout << temp3[i] << std::endl;
    }   

	arr1     = _mm_load_ps(temp1+4);
	arr2     = _mm_load_ps(temp2+4);
	m        = _mm_mul_ps(arr1, arr2);
	m_result = _mm_add_ps(m,m);
    _mm_store_ps(temp3, m_result); 
	
	for(int i = 0; i < 4; i++){   
        std::cout << temp3[i] << std::endl;
    }   

    /*
		-mvax compiler option is needed to work
		with _m256d
    */
    try{
    	__m256d z = _mm256_set_pd(1,2,3,4);

    }catch(std::exception &e){
    	std::cout <<"Cant do this operation\n";
    }
   	
   	optimization();

	return ;
}


void parallel_for(){
	const int length = 1024 * 1024 *64;
	float *a         = new float[length];
	float *b         = new float[length];
	float *c         = new float[length];
	float *result    = new float[length];

	/*
		cant use size_t for the forloop
		its not supported by omp
	*/
	#pragma omp parallel for

	for(unsigned long int i = 0;i < length; i++){
		result[i] = a[i] + b[i] + erff(c[i]);
		std::cout << result[i] ;
	}

	delete[] a     ;    
	delete[] b     ;    
	delete[] c     ;    
	delete[] result;    
	

}

void single_master(){
	#pragma omp parallel
	{
		#pragma omp single
		
			printf("gathering input:%d\n",omp_get_thread_num());
			
			printf("in parallel on %d\n",omp_get_thread_num());

		#pragma omp barrier

		#pragma omp master
			printf("output on: %d\n",omp_get_thread_num());
		
	}	
}


void sections(){
	/*
		sections assign different code block 
		to different thread

		single block executed only one thread
		implied barrier in the end

		master -executed by the master thread
		no barrier in the end
	*/


	#pragma omp parallel sections
	{
		#pragma omp section
		{
			for(unsigned long int i = 0;i < 1000; i++){
				std::cout << i ;
			}
		}
		
		#pragma omp section
		{
			for(unsigned long int i = 0;i < 1000; i++){
				std::cout << static_cast<char>('a'+(i % 26));
			}
		}
	}
}

/*
	synchronization in c++
*/

void sync_sample(){
	/*
		critical ->block executed by 
		one thread at a time
	
		atomic:- next memory update
		is atomic

		ordered:- block executed in same
		order as if it were sequential

		barrier:- all threads wait untill
		each one has reached this point

		nowait:- threads can proceed without
		waiting waiting for on other threads
	*/

	printf("\nATOMIC\n");
	int sum = 0;
	
	#pragma omp parallel for num_threads(128)
	for(int i = 0; i < 100; i++){
	/*
	here the atomic pragma ensures that
	the value of sum is always 100
	otherwise we will get a value of 99
	or 98
	*/
	#pragma omp atomic	
		++sum;
	}
	std::cout <<"sum=" << sum <<"\n";

	printf("\nORDERED\n");
	std::vector<int> squares;
	#pragma omp parallel for ordered
	for(int i = 0; i < 20; ++i){
		printf("%d:%d \t",omp_get_thread_num(),i);
		int j = i*i;
	#pragma omp ordered
	squares.push_back(j);	
	}

	printf("\n");
	for(auto v: squares){
		printf("%d\t",v);
	}

	printf("\nNOWAIT\n");

	#pragma omp parallel
	{
		#pragma omp single nowait
		{
			int n;
			std::cin >>n ;
			printf("gathering input:%d\n",omp_get_thread_num());
		}	
		printf("in parallel on %d\n",omp_get_thread_num());

		#pragma omp barrier

		#pragma omp master
			printf("output on: %d\n",omp_get_thread_num());
		
	}	
}



	

void data_sharing_sample(){
	/*
	data sharing in openmp
	
	shared:- item is accessible by 
	all the threads simultaneously
	all variables except loop counter
	shared by default
	
	private:-
	item is thread-local not initilazed
	or available outside parallel region

	firstprivate:- like private 
	but inited to original value
	
	lastprivate:-
	like private except original value
	updated on exit
	
	default:-
	defines whether by default variables 
	are shared or not (none)

	note:-
	By default all variables are private


*/

	int i = 10;

	#pragma omp parallel for lastprivate(i)
	for(int a =0; a<10;a++){
		printf("thread %d i = %d\n",omp_get_thread_num(),i);
		i = 1000 + omp_get_thread_num(); 
	}

	printf("%d\n",i);

	i = 10;

	#pragma omp parallel for private(i)
	for(int a =0; a<10;a++){
		printf("thread %d i = %d\n",omp_get_thread_num(),i);
		i = 1000 + omp_get_thread_num(); 
	}

	printf("%d\n",i);

	i = 10;

	#pragma omp parallel for 
	for(int a =0; a<10;a++){
		printf("thread %d i = %d\n",omp_get_thread_num(),i);
		i = 1000 + omp_get_thread_num(); 
	}

	printf("%d\n",i);
}

auto open_mp()-> void{
	omp_set_num_threads(4);
	/*#pragma omp parallel
	{
	
		critical pragma unparallelizes the section
		here we are telling that this part
		of the code is critical section
		one thread access at a time
		
	#pragma omp critical	
		std::cout <<"hello world openMP" \
		<< omp_get_thread_num() <<"/" \
		<< omp_get_num_threads() <<"\n";
	}*/

	/*
		parallel for loop
	*/
	//parallel_for();
	//sections();
	//single_master();

	//sync_sample();
	data_sharing_sample();
	
	return;
}