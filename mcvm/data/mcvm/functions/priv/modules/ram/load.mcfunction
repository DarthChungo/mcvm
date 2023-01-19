#> mcvm:priv/modules/ram/load
# RAM load function

scoreboard players set $level mcvm.vars 3
data modify storage mcvm:int root.msg set value "Call ram/load"
function mcvm:priv/util/log

data remove storage mcvm:vm ram

data modify storage mcvm:vm vm.ram.data set value []
data modify storage mcvm:vm vm.ram.size set value 0

execute store result score $len mcvm.vars run data get storage mcvm:vm vm.config.min_ram_size
function mcvm:priv/modules/ram/enlarge

scoreboard players set $level mcvm.vars 2
data modify storage mcvm:int root.msg set value "RAM module loaded"
function mcvm:priv/util/log