#> mcvm:priv/load
# Main load function

#declare tag mcvm.loglevel.3 receive debug, info, warn and error messages
#declare tag mcvm.loglevel.2 receive info, warn and error messages
#declare tag mcvm.loglevel.1 receive warn and error messages
#declare tag mcvm.loglevel.0 receive only error messages

#declare objective mcvm.vars global variables
scoreboard objectives add mcvm.vars dummy

#declare storage mcvm:int internal storage
data remove storage mcvm:int root

#declare storage mcvm:vm main storage object

# Set default config values

execute store result score $max_ram_size mcvm.vars run data get storage mcvm:vm vm.config.max_ram_size
execute store result score $min_ram_size mcvm.vars run data get storage mcvm:vm vm.config.min_ram_size
execute store result score $max_stack_size mcvm.vars run data get storage mcvm:vm vm.config.max_stack_size
execute store result score $auto_step mcvm.vars run data get storage mcvm:vm vm.config.auto_step

execute unless score $max_ram_size mcvm.vars matches 256.. run data modify storage mcvm:vm vm.config.max_ram_size set value 256
execute unless score $min_ram_size mcvm.vars matches 16..256 run data modify storage mcvm:vm vm.config.min_ram_size set value 16
execute unless score $max_stack_size mcvm.vars matches 16.. run data modify storage mcvm:vm vm.config.max_stack_size set value 16
execute unless score $auto_step mcvm.vars matches 1 run data modify storage mcvm:vm vm.config.auto_step set value 0

scoreboard players set $level mcvm.vars 2
data modify storage mcvm:int root.msg set value "Loading MCVM ver 1.0.0"
function mcvm:priv/util/log

scoreboard players set $level mcvm.vars 3
data modify storage mcvm:int root.msg set value "Call load"
function mcvm:priv/util/log

# Load modules

function mcvm:priv/modules/bus/load
function mcvm:priv/modules/ram/load

scoreboard players set $level mcvm.vars 2
data modify storage mcvm:int root.msg set value "Finished loading"
function mcvm:priv/util/log