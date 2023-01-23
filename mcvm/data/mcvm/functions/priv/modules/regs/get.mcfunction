#> mcvm:priv/modules/regs/get
# Get a value form a register
# IN $bus (0 a, 1 b)
# IN $reg (1 a, 2 b, 3 c, 4 d, 5 e, 6 f, 7 g, 8 h)

execute if score $reg mcvm.vars matches 1 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.a 
execute if score $reg mcvm.vars matches 2 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.b 
execute if score $reg mcvm.vars matches 3 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.c 
execute if score $reg mcvm.vars matches 4 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.d 
execute if score $reg mcvm.vars matches 5 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.e 
execute if score $reg mcvm.vars matches 6 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.f 
execute if score $reg mcvm.vars matches 7 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.g 
execute if score $reg mcvm.vars matches 8 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.h 

execute if score $reg mcvm.vars matches 1 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.a 
execute if score $reg mcvm.vars matches 2 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.b 
execute if score $reg mcvm.vars matches 3 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.c 
execute if score $reg mcvm.vars matches 4 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.d 
execute if score $reg mcvm.vars matches 5 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.e 
execute if score $reg mcvm.vars matches 6 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.f 
execute if score $reg mcvm.vars matches 7 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.g 
execute if score $reg mcvm.vars matches 8 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.h 