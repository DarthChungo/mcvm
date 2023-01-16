#> mcvm:priv/modules/bus/load
# Buses load function

data remove storage mcvm:vm vm.bus

data modify storage mcvm:vm vm.bus.reg_in set value 0
data modify storage mcvm:vm vm.bus.reg_out set value 0
data modify storage mcvm:vm vm.bus.addr set value 0