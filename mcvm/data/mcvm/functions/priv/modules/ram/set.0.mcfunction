#> mcvm:priv/modules/ram/set.0
# Internal

data modify storage mcvm:vars r.ram_copy append from storage mcvm:vm vm.ram.data[0]
data remove storage mcvm:vm vm.ram.data[0]
scoreboard players remove $i mcvm.vars 1

execute if score $i mcvm.vars matches 1.. run function mcvm:priv/modules/ram/set.0