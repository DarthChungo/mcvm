#> mcvm:priv/modules/regs/get
# Get a value form a register
# IN in.bus (0 a, 1 b)
# IN in.reg (0 a, 1 b, 2 c, 3 d, 4 e, 5 f, 6 g, 7 h)

execute store result score $bus mcvm.vars run data get storage mcvm:io in.bus
execute store result score $reg mcvm.vars run data get storage mcvm:io in.reg

execute if score $reg mcvm.vars matches 0 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.a 
execute if score $reg mcvm.vars matches 1 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.b 
execute if score $reg mcvm.vars matches 2 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.c 
execute if score $reg mcvm.vars matches 3 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.d 
execute if score $reg mcvm.vars matches 4 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.e 
execute if score $reg mcvm.vars matches 5 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.f 
execute if score $reg mcvm.vars matches 6 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.g 
execute if score $reg mcvm.vars matches 7 if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vm vm.regs.h 

execute if score $reg mcvm.vars matches 0 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.a 
execute if score $reg mcvm.vars matches 1 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.b 
execute if score $reg mcvm.vars matches 2 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.c 
execute if score $reg mcvm.vars matches 3 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.d 
execute if score $reg mcvm.vars matches 4 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.e 
execute if score $reg mcvm.vars matches 5 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.f 
execute if score $reg mcvm.vars matches 6 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.g 
execute if score $reg mcvm.vars matches 7 if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vm vm.regs.h 