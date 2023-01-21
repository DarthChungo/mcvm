#> mcvm:priv/load
# Main load function

#declare tag mcvm.loglevel.3 receive debug, info, warn and error messages
#declare tag mcvm.loglevel.2 receive info, warn and error messages
#declare tag mcvm.loglevel.1 receive warn and error messages
#declare tag mcvm.loglevel.0 receive only error messages

#declare objective mcvm.vars global variables
scoreboard objectives add mcvm.vars dummy

#declare storage mcvm:vm main storage
#declare storage mcvm:io internal function io storage

# Config

execute store result score $ram_size mcvm.vars run data get storage mcvm:vm vm.config.ram_size
execute store result score $stack_size mcvm.vars run data get storage mcvm:vm vm.config.ram_size

execute unless score $ram_size mcvm.vars matches 16..1024 run data modify storage mcvm:vm vm.config.ram_size set value 16
execute unless score $stack_size mcvm.vars matches 16..1024 run data modify storage mcvm:vm vm.config.stack_size set value 16

# Load modules

function mcvm:priv/modules/ram/load

say finish load