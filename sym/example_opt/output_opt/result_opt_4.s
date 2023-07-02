  .text
  .globl sort3
  .type sort3, @function

#! file-offset 0x6b0
#! rip-offset  0x4006b0
#! capacity    80 bytes

# Text                   #  Line  RIP       Bytes  Opcode              
.sort3:                  #        0x4006b0  0      OPC=<label>         
  movl 0x4(%rdi), %eax   #  1     0x4006b0  3      OPC=movl_r32_m32    
  movl 0x8(%rdi), %ecx   #  2     0x4006b3  3      OPC=movl_r32_m32    
  movl (%rdi), %edx      #  3     0x4006b6  2      OPC=movl_r32_m32    
  cmpl %eax, %edx        #  4     0x4006b8  2      OPC=cmpl_r32_r32    
  jle .L_4006d8          #  5     0x4006ba  2      OPC=jle_label       
  movq %rax, (%rdi)      #  6     0x4006bc  3      OPC=movq_m64_r64    
  orl %edx, 0x4(%rdi)    #  7     0x4006bf  3      OPC=orl_m32_r32     
  cmpl %ecx, %edx        #  8     0x4006c2  2      OPC=cmpl_r32_r32_1  
  jle .L_4006df          #  9     0x4006c4  2      OPC=jle_label       
  movl %ecx, 0x4(%rdi)   #  10    0x4006c6  3      OPC=movl_m32_r32    
  cmpl %eax, %ecx        #  11    0x4006c9  2      OPC=cmpl_r32_r32    
  movl %edx, 0x8(%rdi)   #  12    0x4006cb  3      OPC=movl_m32_r32    
  jge .L_4006df          #  13    0x4006ce  2      OPC=jge_label       
.L_4006cf:               #        0x4006d0  0      OPC=<label>         
  movq %rcx, (%rdi)      #  14    0x4006d0  3      OPC=movq_m64_r64    
  xaddq %rax, 0x4(%rdi)  #  15    0x4006d3  5      OPC=xaddq_m64_r64   
  retq                   #  16    0x4006d8  1      OPC=retq            
.L_4006d8:               #        0x4006d9  0      OPC=<label>         
  cmpl %ecx, %eax        #  17    0x4006d9  2      OPC=cmpl_r32_r32    
  jg .L_4006e8           #  18    0x4006db  2      OPC=jg_label        
.L_4006df:               #        0x4006dd  0      OPC=<label>         
  retq                   #  19    0x4006dd  1      OPC=retq            
.L_4006e8:               #        0x4006de  0      OPC=<label>         
  cmpl %edx, %ecx        #  20    0x4006de  2      OPC=cmpl_r32_r32_1  
  movl %eax, 0x8(%rdi)   #  21    0x4006e0  3      OPC=movl_m32_r32    
  movl %ecx, 0x4(%rdi)   #  22    0x4006e3  3      OPC=movl_m32_r32    
  xchgq %rdx, %rax       #  23    0x4006e6  2      OPC=xchgq_rax_r64   
  jl .L_4006cf           #  24    0x4006e8  2      OPC=jl_label        
  jmpq .L_4006df         #  25    0x4006ea  2      OPC=jmpq_label      
                                                                       
.size sort3, .-sort3
