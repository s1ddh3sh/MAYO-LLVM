#include <stdint.h>
#include <string.h>

extern uint32_t _stack_top;

// Forward-declare your mayo function you want to test
extern int mayo_sign(...);   // adjust signature

void Reset_Handler(void);

// Minimal vector table
__attribute__((section(".isr_vector")))
uint32_t vector_table[] = {
    (uint32_t)&_stack_top,
    (uint32_t)Reset_Handler,
};

void Reset_Handler(void) {
    // call your function here
    // mayo_sign(...);

    // Signal completion via semihosting EXIT
    __asm volatile (
        "mov r0, #0x18\n"   // SYS_EXIT
        "mov r1, #0\n"
        "bkpt 0xAB\n"       // semihosting trap
    );
    while(1);
}