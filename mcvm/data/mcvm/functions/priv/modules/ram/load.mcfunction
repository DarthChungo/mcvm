#> mcvm:priv/modules/ram/load
# RAM load function

data remove storage mcvm:vm ram

function mcvm:priv/modules/ram/clear

scoreboard players set $level mcvm.vars 2
data modify storage mcvm:int root.msg set value "RAM module loaded"
function mcvm:priv/util/log