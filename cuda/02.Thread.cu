#include <stdio.h>
#include <time.h>

__global__ void thread_id(){
    printf("---inThread---\n[%d %d %d]\n[%d %d %d] %u\n---out---\n", 
    blockIdx.x, blockIdx.y, blockIdx.z, 
    threadIdx.x, threadIdx.y, threadIdx.z, clock());
    return;
}

int main(){
    dim3 threadsPerBlock(3, 3, 3);

    thread_id<<<2, threadsPerBlock>>>();
    getchar();
    return 0;
}