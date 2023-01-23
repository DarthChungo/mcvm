#> mcvm:priv/modules/bus/set
# Output values fro c to the corresponding registers

# note: 0 none, 1 a, 2 b, 3 c, 4 d, 5 e, 6 f, 7 g, 8 h, 9 RAM

execute store result score $reg mcvm.vars run data get storage mcvm:vm vm.bus.c_sel

execute if score $reg mcvm.vars matches 1..8 run function mcvm:priv/modules/regs/set
execute if score $reg mcvm.vars matches 9 run function mcvm:priv/modules/ram/set