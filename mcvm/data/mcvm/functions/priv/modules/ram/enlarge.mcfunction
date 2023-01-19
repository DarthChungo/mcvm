#> mcvm:priv/modules/ram/enlarge
# Resizes the RAM to fit the specified size
# IN $len

scoreboard players set $level mcvm.vars 3
execute store result storage mcvm:int root.tmp int 1 run scoreboard players get $len mcvm.vars
data modify storage mcvm:int root.msg set value "Call ram/enlarge"
data modify storage mcvm:int root.args append from storage mcvm:int root.tmp
function mcvm:priv/util/log

execute store result score $max_len mcvm.vars run data get storage mcvm:vm vm.config.max_ram_size

execute unless score $len mcvm.vars > $max_len mcvm.vars run function mcvm:priv/modules/ram/enlarge.0
execute if score $len mcvm.vars > $max_len mcvm.vars run function mcvm:priv/modules/ram/enlarge.2

data remove storage mcvm:int root.tmp
data remove storage mcvm:int root.args