#> mcvm:priv/modules/ram/enlarge.1
# Internal

scoreboard players add $curr_len mcvm.vars 1
data modify storage mcvm:vm vm.ram.data append value 0

scoreboard players remove $i mcvm.vars 1

execute if score $i mcvm.vars matches 1.. run function mcvm:priv/modules/ram/enlarge.1