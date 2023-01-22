#> mcvm:priv/modules/ram/get.0
# Internal

data remove storage mcvm:vars r.ram_copy[0]
scoreboard players remove $i mcvm.vars 1

execute if score $i mcvm.vars matches 1.. run function mcvm:priv/modules/ram/get.0