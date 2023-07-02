  .text
  .globl sort3
  .type sort3, @function

#! file-offset 0x6b0
#! rip-offset  0x4006b0
#! capacity    80 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
.sort3:                 #        0x4006b0  0      OPC=<label>         
  movq (%rdi), %rdx     #  1     0x4006b0  3      OPC=movq_r64_m64    
  movl 0x8(%rdi), %ecx  #  2     0x4006b3  3      OPC=movl_r32_m32    
  movl 0x4(%rdi), %eax  #  3     0x4006b6  3      OPC=movl_r32_m32    
  cmpl %eax, %edx       #  4     0x4006b9  2      OPC=cmpl_r32_r32    
  jle .L_4006d8         #  5     0x4006bb  2      OPC=jle_label       
  cmpl %ecx, %edx       #  6     0x4006bd  2      OPC=cmpl_r32_r32    
  movl %edx, 0x4(%rdi)  #  7     0x4006bf  3      OPC=movl_m32_r32    
  movl %eax, (%rdi)     #  8     0x4006c2  2      OPC=movl_m32_r32    
  jle .L_4006df         #  9     0x4006c4  2      OPC=jle_label       
  movl %ecx, 0x4(%rdi)  #  10    0x4006c6  3      OPC=movl_m32_r32    
  movl %edx, 0x8(%rdi)  #  11    0x4006c9  3      OPC=movl_m32_r32    
  cmpl %eax, %ecx       #  12    0x4006cc  2      OPC=cmpl_r32_r32    
  jge .L_4006df         #  13    0x4006ce  2      OPC=jge_label       
.L_4006cf:              #        0x4006d0  0      OPC=<label>         
  movq %rcx, (%rdi)     #  14    0x4006d0  3      OPC=movq_m64_r64    
  xorl %eax, 0x4(%rdi)  #  15    0x4006d3  3      OPC=xorl_m32_r32    
  retq                  #  16    0x4006d6  1      OPC=retq            
.L_4006d8:              #        0x4006d7  0      OPC=<label>         
  cmpl %ecx, %eax       #  17    0x4006d7  2      OPC=cmpl_r32_r32_1  
  jg .L_4006e8          #  18    0x4006d9  2      OPC=jg_label        
.L_4006df:              #        0x4006db  0      OPC=<label>         
  retq                  #  19    0x4006db  1      OPC=retq            
.L_4006e8:              #        0x4006dc  0      OPC=<label>         
  movq %rcx, 0x4(%rdi)  #  20    0x4006dc  4      OPC=movq_m64_r64    
  orl %eax, 0x8(%rdi)   #  21    0x4006e0  3      OPC=orl_m32_r32     
  cmpl %edx, %ecx       #  22    0x4006e3  2      OPC=cmpl_r32_r32    
  xchgl %edx, %eax      #  23    0x4006e5  2      OPC=xchgl_r32_r32   
  jl .L_4006cf          #  24    0x4006e7  2      OPC=jl_label        
  jmpq .L_4006df        #  25    0x4006e9  2      OPC=jmpq_label      
                                                                      
.size sort3, .-sort3
