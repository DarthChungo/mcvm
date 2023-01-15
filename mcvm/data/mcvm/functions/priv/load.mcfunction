#> mcvm:priv/load
# Main load function

#declare tag mcvm.info receive info, warn and error messages
#declare tag mcvm.warn receive warn and error messages
#declare tag mcvm.error receive only error messages

#declare objective mcvm.vars global variables
scoreboard objectives add mcvm.vars dummy

#declare objective mcvm.fun function io variables
scoreboard objectives add mcvm.fun dummy

#declare objective mcvm.args argument passing object
scoreboard objectives add mcvm.args dummy

#declare storage mcvm:vm main storage object

# Set default config values

execute store result score $max_ram_size mcvm.vars run data get storage mcvm:vm vm.config.max_ram_size
execute store result score $max_size_size mcvm.vars run data get storage mcvm:vm vm.config.max_size_size
execute store result score $auto_step mcvm.vars run data get storage mcvm:vm vm.config.auto_step

execute unless score $max_ram_size mcvm.vars matches 16.. run data modify storage mcvm:vm vm.config.max_ram_size set value 16
execute unless score $max_size_size mcvm.vars matches 16.. run data modify storage mcvm:vm vm.config.max_size_size set value 16
execute unless score $auto_step mcvm.vars matches 1 run data modify storage mcvm:vm vm.config.auto_step set value 0

scoreboard players reset $max_ram_size mcvm.vars
scoreboard players reset $max_size_size mcvm.vars
scoreboard players reset $auto_step mcvm.vars

function mcvm:priv/modules/ram/load

tellraw @a[tag=mcvm.info] [{"text": "MC", "color": "aqua"},{"text": "VM", "color": "dark_aqua"},{"text": " INFO. ", "color": "white"},{"text": "Finished loading", "color": "white"}]