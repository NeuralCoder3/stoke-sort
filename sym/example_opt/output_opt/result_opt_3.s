  .text
  .globl sort3
  .type sort3, @function

#! file-offset 0x6b0
#! rip-offset  0x4006b0
#! capacity    80 bytes

# Text                  #  Line  RIP       Bytes  Opcode               
.sort3:                 #        0x4006b0  0      OPC=<label>          
  movq 0x4(%rdi), %rax  #  1     0x4006b0  4      OPC=movq_r64_m64     
  movq (%rdi), %rdx     #  2     0x4006b4  3      OPC=movq_r64_m64     
  movl 0x8(%rdi), %ecx  #  3     0x4006b7  3      OPC=movl_r32_m32     
  cmpl %eax, %edx       #  4     0x4006ba  2      OPC=cmpl_r32_r32     
  jle .L_4006d8         #  5     0x4006bc  2      OPC=jle_label        
  movq %rax, (%rdi)     #  6     0x4006be  3      OPC=movq_m64_r64     
  cmpl %ecx, %edx       #  7     0x4006c1  2      OPC=cmpl_r32_r32_1   
  movl %edx, 0x4(%rdi)  #  8     0x4006c3  3      OPC=movl_m32_r32     
  jle .L_4006df         #  9     0x4006c6  2      OPC=jle_label        
  movl %ecx, 0x4(%rdi)  #  10    0x4006c8  3      OPC=movl_m32_r32     
  cmpl %eax, %ecx       #  11    0x4006cb  2      OPC=cmpl_r32_r32     
  movl %edx, 0x8(%rdi)  #  12    0x4006cd  3      OPC=movl_m32_r32     
  jge .L_4006df         #  13    0x4006d0  2      OPC=jge_label        
.L_4006cf:              #        0x4006d2  0      OPC=<label>          
  movl %eax, 0x4(%rdi)  #  14    0x4006d2  3      OPC=movl_m32_r32     
  movl %ecx, (%rdi)     #  15    0x4006d5  2      OPC=movl_m32_r32     
  retq                  #  16    0x4006d7  1      OPC=retq             
.L_4006d8:              #        0x4006d8  0      OPC=<label>          
  xchgl %edx, %esi      #  17    0x4006d8  2      OPC=xchgl_r32_r32    
  cmpl %ecx, %eax       #  18    0x4006da  2      OPC=cmpl_r32_r32_1   
  jg .L_4006e8          #  19    0x4006dc  2      OPC=jg_label         
.L_4006df:              #        0x4006de  0      OPC=<label>          
  retq                  #  20    0x4006de  1      OPC=retq             
.L_4006e8:              #        0x4006df  0      OPC=<label>          
  cmovgl %eax, %edx     #  21    0x4006df  3      OPC=cmovgl_r32_r32   
  movq %rcx, 0x4(%rdi)  #  22    0x4006e2  4      OPC=movq_m64_r64     
  addl %edx, 0x8(%rdi)  #  23    0x4006e6  3      OPC=addl_m32_r32     
  cmovncl %esi, %eax    #  24    0x4006e9  3      OPC=cmovncl_r32_r32  
  cmpl %esi, %ecx       #  25    0x4006ec  2      OPC=cmpl_r32_r32     
  jl .L_4006cf          #  26    0x4006ee  2      OPC=jl_label         
  jmpq .L_4006df        #  27    0x4006f0  2      OPC=jmpq_label       
                                                                       
.size sort3, .-sort3
