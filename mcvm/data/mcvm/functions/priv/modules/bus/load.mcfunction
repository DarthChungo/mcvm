#> mcvm:priv/modules/bus/load
# Buses load function

data remove storage mcvm:vm vm.bus

data modify storage mcvm:vm vm.bus.regs_a set value 0
data modify storage mcvm:vm vm.bus.regs_b set value 0
data modify storage mcvm:vm vm.bus.regs_c set value 0
data modify storage mcvm:vm vm.bus.addr set value 0

tellraw @a[tag=mcvm.info] [{"text": "MC", "color": "aqua"},{"text": "VM", "color": "dark_aqua"},{"text": " INFO. ", "color": "white"},{"text": "BUS module loaded", "color": "white"}]