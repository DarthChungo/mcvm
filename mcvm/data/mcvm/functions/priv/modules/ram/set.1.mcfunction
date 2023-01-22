#> mcvm:priv/modules/ram/set.1
# Internal

data modify storage mcvm:vm vm.ram.data prepend from storage mcvm:vars r.ram_copy[-1]
data remove storage mcvm:vars r.ram_copy[-1]
scoreboard players remove $j mcvm.vars 1

execute if score $j mcvm.vars matches 1.. run function mcvm:priv/modules/ram/set.1