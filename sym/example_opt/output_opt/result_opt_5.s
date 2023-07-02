  .text
  .globl sort3
  .type sort3, @function

#! file-offset 0x6b0
#! rip-offset  0x4006b0
#! capacity    80 bytes

# Text                     #  Line  RIP       Bytes  Opcode               
.sort3:                    #        0x4006b0  0      OPC=<label>          
  movl 0x4(%rdi), %eax     #  1     0x4006b0  3      OPC=movl_r32_m32     
  movl (%rdi), %edx        #  2     0x4006b3  2      OPC=movl_r32_m32     
  cmpl %eax, %edx          #  3     0x4006b5  2      OPC=cmpl_r32_r32_1   
  cmovnzl 0x8(%rdi), %ecx  #  4     0x4006b7  4      OPC=cmovnzl_r32_m32  
  jle .L_4006d8            #  5     0x4006bb  2      OPC=jle_label        
  cmpl %ecx, %edx          #  6     0x4006bd  2      OPC=cmpl_r32_r32_1   
  movl %eax, (%rdi)        #  7     0x4006bf  2      OPC=movl_m32_r32     
  movl %edx, 0x4(%rdi)     #  8     0x4006c1  3      OPC=movl_m32_r32     
  jle .L_4006df            #  9     0x4006c4  2      OPC=jle_label        
  movq %rcx, 0x4(%rdi)     #  10    0x4006c6  4      OPC=movq_m64_r64     
  xaddl %edx, 0x8(%rdi)    #  11    0x4006ca  4      OPC=xaddl_m32_r32    
  cmpl %eax, %ecx          #  12    0x4006ce  2      OPC=cmpl_r32_r32_1   
  jge .L_4006df            #  13    0x4006d0  2      OPC=jge_label        
.L_4006cf:                 #        0x4006d2  0      OPC=<label>          
  movq %rcx, (%rdi)        #  14    0x4006d2  3      OPC=movq_m64_r64     
  xorl %eax, 0x4(%rdi)     #  15    0x4006d5  3      OPC=xorl_m32_r32     
  retq                     #  16    0x4006d8  1      OPC=retq             
.L_4006d8:                 #        0x4006d9  0      OPC=<label>          
  cmpl %ecx, %eax          #  17    0x4006d9  2      OPC=cmpl_r32_r32_1   
  jg .L_4006e8             #  18    0x4006db  2      OPC=jg_label         
.L_4006df:                 #        0x4006dd  0      OPC=<label>          
  retq                     #  19    0x4006dd  1      OPC=retq             
.L_4006e8:                 #        0x4006de  0      OPC=<label>          
  movq %rcx, 0x4(%rdi)     #  20    0x4006de  4      OPC=movq_m64_r64     
  addl %eax, 0x8(%rdi)     #  21    0x4006e2  3      OPC=addl_m32_r32     
  cmpl %edx, %ecx          #  22    0x4006e5  2      OPC=cmpl_r32_r32_1   
  cmovll %edx, %eax        #  23    0x4006e7  3      OPC=cmovll_r32_r32   
  jl .L_4006cf             #  24    0x4006ea  2      OPC=jl_label         
  jmpq .L_4006df           #  25    0x4006ec  2      OPC=jmpq_label       
                                                                          
.size sort3, .-sort3
