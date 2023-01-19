#> mcvm:priv/util/log
# Logs a message to chat and halts if its an error
# IN mcvm:int/root.msg
# IN $level (3 debug, 2 info, 1 warn, 0 error)

execute if score $level mcvm.vars matches 0 run tellraw @a[tag=mcvm.loglevel.0] [{"text": "MC", "color": "aqua"},{"text": "VM", "color": "dark_aqua"},{"text": " ERROR. ", "color": "red"},{"storage": "mcvm:int", "nbt": "root.msg", "color": "red"}]

execute if score $level mcvm.vars matches 1 run tellraw @a[tag=mcvm.loglevel.0] [{"text": "MC", "color": "aqua"},{"text": "VM", "color": "dark_aqua"},{"text": " WARN. ", "color": "yellow"},{"storage": "mcvm:int", "nbt": "root.msg", "color": "yellow"}]
execute if score $level mcvm.vars matches 1 run tellraw @a[tag=mcvm.loglevel.1] [{"text": "MC", "color": "aqua"},{"text": "VM", "color": "dark_aqua"},{"text": " WARN. ", "color": "yellow"},{"storage": "mcvm:int", "nbt": "root.msg", "color": "yellow"}]

execute if score $level mcvm.vars matches 2 run tellraw @a[tag=mcvm.loglevel.0] [{"text": "MC", "color": "aqua"},{"text": "VM", "color": "dark_aqua"},{"text": " INFO. ", "color": "white"},{"storage": "mcvm:int", "nbt": "root.msg", "color": "white"}]
execute if score $level mcvm.vars matches 2 run tellraw @a[tag=mcvm.loglevel.1] [{"text": "MC", "color": "aqua"},{"text": "VM", "color": "dark_aqua"},{"text": " INFO. ", "color": "white"},{"storage": "mcvm:int", "nbt": "root.msg", "color": "white"}]
execute if score $level mcvm.vars matches 2 run tellraw @a[tag=mcvm.loglevel.2] [{"text": "MC", "color": "aqua"},{"text": "VM", "color": "dark_aqua"},{"text": " INFO. ", "color": "white"},{"storage": "mcvm:int", "nbt": "root.msg", "color": "white"}]

execute if score $level mcvm.vars matches 3 run tellraw @a[tag=mcvm.loglevel.0] [{"text": "MC", "color": "aqua"},{"text": "VM", "color": "dark_aqua"},{"text": " DEBUG. ", "color": "gray"},{"storage": "mcvm:int", "nbt": "root.msg", "color": "gray"}]
execute if score $level mcvm.vars matches 3 run tellraw @a[tag=mcvm.loglevel.1] [{"text": "MC", "color": "aqua"},{"text": "VM", "color": "dark_aqua"},{"text": " DEBUG. ", "color": "gray"},{"storage": "mcvm:int", "nbt": "root.msg", "color": "gray"}]
execute if score $level mcvm.vars matches 3 run tellraw @a[tag=mcvm.loglevel.2] [{"text": "MC", "color": "aqua"},{"text": "VM", "color": "dark_aqua"},{"text": " DEBUG. ", "color": "gray"},{"storage": "mcvm:int", "nbt": "root.msg", "color": "gray"}]
execute if score $level mcvm.vars matches 3 run tellraw @a[tag=mcvm.loglevel.3] [{"text": "MC", "color": "aqua"},{"text": "VM", "color": "dark_aqua"},{"text": " DEBUG. ", "color": "gray"},{"storage": "mcvm:int", "nbt": "root.msg", "color": "gray"}]

#opt
scoreboard players reset $level mcvm.vars
data remove storage mcvm:int root.msg

# TODO: halt on error