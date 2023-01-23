#> mcvm:priv/modules/bus/get
# Source values into a and b

# note: 0 none, 1 a, 2 b, 3 c, 4 d, 5 e, 6 f, 7 g, 8 h, 9 RAM

execute store result score $reg mcvm.vars run data get storage mcvm:vm vm.bus.a_sel
scoreboard players set $bus mcvm.vars 0

execute if score $reg mcvm.vars matches 1..8 run function mcvm:priv/modules/regs/get
execute if score $reg mcvm.vars matches 9 run function mcvm:priv/modules/ram/get

execute store result score $reg mcvm.vars run data get storage mcvm:vm vm.bus.b_sel
scoreboard players set $bus mcvm.vars 1

execute if score $reg mcvm.vars matches 1..8 run function mcvm:priv/modules/regs/get
execute if score $reg mcvm.vars matches 9 run function mcvm:priv/modules/ram/get
