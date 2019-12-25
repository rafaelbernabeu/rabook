```
gdb /path/program

set disassembly-flavor intel

disassemble main

info proc mappings

break *0x00000000               -> put a breakpoint
break *main                     -> put a breakpoint

del                             -> remove all breakpoints

info registers                  -> ver os registradores

x/s 0x000000                    -> print string
x/wx $esp


c                               -> continue
r                               -> run 
r < /file                       -> redirect file contents to the stdin

x functionname                  -> examine function
p functionname                  -> print function

define hook-stop                -> print the registers, the stack and the next two instructions 
>info registers
>x/24wx $esp
>x/2i $eip
>end

```