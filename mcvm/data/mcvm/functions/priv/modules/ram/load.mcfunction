#> mcvm:priv/modules/ram/load
# RAM load function

data remove storage mcvm:vm ram

function mcvm:priv/modules/ram/clear

tellraw @a[tag=mcvm.info] [{"text": "MC", "color": "aqua"},{"text": "VM", "color": "dark_aqua"},{"text": " INFO. ", "color": "white"},{"text": "RAM module loaded", "color": "white"}]