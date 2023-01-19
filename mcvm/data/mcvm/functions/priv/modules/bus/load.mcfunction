#> mcvm:priv/modules/bus/load
# Buses load function

data remove storage mcvm:vm vm.bus

data modify storage mcvm:vm vm.bus.regs_a set value 0
data modify storage mcvm:vm vm.bus.regs_b set value 0
data modify storage mcvm:vm vm.bus.regs_c set value 0
data modify storage mcvm:vm vm.bus.addr set value 0

scoreboard players set $level mcvm.vars 2
data modify storage mcvm:int root.msg set value "BUS module loaded"
function mcvm:priv/util/log