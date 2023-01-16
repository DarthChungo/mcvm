#> mcvm:priv/modules/ram/clear
# Clears the RAM

data remove storage mcvm:vm vm.ram.data
data modify storage mcvm:vm vm.ram.data set value []

execute store result score $i mcvm.vars run data get storage mcvm:vm vm.config.min_ram_size
data modify storage mcvm:vm vm.ram.size set from storage mcvm:vm vm.config.min_ram_size

execute run function mcvm:priv/modules/ram/clear.0

#opt
scoreboard players reset $i mcvm.vars