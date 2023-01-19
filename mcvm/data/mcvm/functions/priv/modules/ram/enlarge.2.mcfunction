#> mcvm:priv/modules/ram/enlarge.2
# Internal

scoreboard players set $level mcvm.vars 0
data modify storage mcvm:int root.msg set value "Trying to resize RAM to a value too large"
function mcvm:priv/util/log
