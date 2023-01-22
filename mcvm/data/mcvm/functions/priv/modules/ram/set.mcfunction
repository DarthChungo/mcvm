#> mcvm:priv/modules/ram/set
# Set a value of RAM

data modify storage mcvm:vars r.ram_copy set value []
execute store result score $i mcvm.vars run data get storage mcvm:vm vm.bus.addr
scoreboard players operation $j mcvm.vars = $i mcvm.vars

execute if score $i mcvm.vars matches 1.. run function mcvm:priv/modules/ram/set.0

data modify storage mcvm:vm vm.ram.data[0] set from storage mcvm:vm vm.bus.c

execute if score $j mcvm.vars matches 1.. run function mcvm:priv/modules/ram/set.1