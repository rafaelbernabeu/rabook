# Some useful GDB Commands

```
gdb /path/program

set disassembly-flavor intel

disassemble main

info proc mappings

break *0x00000000               -> put a breakpoint
break *main                     -> put a breakpoint

del                             -> remove all breakpoints

info registers                  -> ver os registradores

x/wx $esp                       -> print word (32-bit value) as hex
x/gx $esp+0x5c                  -> print giant word (64-bit value) as hex
x/2i $eip                       -> print two next values as instructions
x/a $esp                        -> print as address
x/s $eip                        -> print as string

c                               -> continue
r                               -> run 
r < /file                       -> redirect file contents to the stdin
si                              -> step single instruction

x functionname                  -> examine function
p functionname                  -> print function

define hook-stop                -> print the registers, the stack and the next two instructions 
>info registers
>x/24wx $esp
>x/2i $eip
>end

```

See [gdb-reference](http://visualgdb.com/gdbreference/commands/)
