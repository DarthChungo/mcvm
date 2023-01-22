#> mcvm:priv/modules/ram/load.0
# Internal

data modify storage mcvm:vm vm.ram.data append value 0
scoreboard players add $i mcvm.vars 1

execute unless score $i mcvm.vars = $end mcvm.vars run function mcvm:priv/modules/ram/load.0