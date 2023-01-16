#> mcvm:priv/modules/ram/enlarge.0
# Internal

execute store result score $curr_len mcvm.vars run data get storage mcvm:vm vm.ram.size
scoreboard players operation $i mcvm.vars = $len mcvm.vars
scoreboard players operation $i mcvm.vars -= $curr_len mcvm.vars

execute if score $i mcvm.vars matches 1.. run function mcvm:priv/modules/ram/enlarge.1

execute store result storage mcvm:vm vm.ram.size int 1 run scoreboard players get $curr_len mcvm.vars