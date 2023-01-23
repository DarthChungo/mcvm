#> mcvm:priv/modules/regs/set
# Set a register's value
# IN $reg (1 a, 2 b, 3 c, 4 d, 5 e, 6 f, 7 g, 8 h)

execute if score $reg mcvm.vars matches 1 run data modify storage mcvm:vm vm.regs.a set from storage mcvm:vm vm.bus.c
execute if score $reg mcvm.vars matches 2 run data modify storage mcvm:vm vm.regs.b set from storage mcvm:vm vm.bus.c
execute if score $reg mcvm.vars matches 3 run data modify storage mcvm:vm vm.regs.c set from storage mcvm:vm vm.bus.c
execute if score $reg mcvm.vars matches 4 run data modify storage mcvm:vm vm.regs.d set from storage mcvm:vm vm.bus.c
execute if score $reg mcvm.vars matches 5 run data modify storage mcvm:vm vm.regs.e set from storage mcvm:vm vm.bus.c
execute if score $reg mcvm.vars matches 6 run data modify storage mcvm:vm vm.regs.f set from storage mcvm:vm vm.bus.c
execute if score $reg mcvm.vars matches 7 run data modify storage mcvm:vm vm.regs.g set from storage mcvm:vm vm.bus.c
execute if score $reg mcvm.vars matches 8 run data modify storage mcvm:vm vm.regs.h set from storage mcvm:vm vm.bus.c