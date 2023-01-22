#> mcvm:priv/load
# Main load function

#declare tag mcvm.loglevel.3 receive debug, info, warn and error messages
#declare tag mcvm.loglevel.2 receive info, warn and error messages
#declare tag mcvm.loglevel.1 receive warn and error messages
#declare tag mcvm.loglevel.0 receive only error messages

#declare objective mcvm.vars global variables
scoreboard objectives add mcvm.vars dummy

#declare storage mcvm:vm main storage
data merge storage mcvm:vm {}

#declare storage mcvm:io internal function io storage
data merge storage mcvm:io {in:{},out:{}}

#declare storage mcvm:vars internal variable storage
data merge storage mcvm:vars {r:{}}

# Reset state and preserve config

data modify storage mcvm:vars r.config set from storage mcvm:vm vm.config
data remove storage mcvm:vm vm
data modify storage mcvm:vm vm.config set from storage mcvm:vars r.config

# Config

execute store result score $ram_size mcvm.vars run data get storage mcvm:vm vm.config.ram_size
execute store result score $stack_size mcvm.vars run data get storage mcvm:vm vm.config.stack_size

execute unless score $ram_size mcvm.vars matches 16..1024 run data modify storage mcvm:vm vm.config.ram_size set value 16
execute unless score $stack_size mcvm.vars matches 16..1024 run data modify storage mcvm:vm vm.config.stack_size set value 16

# Load modules

function mcvm:priv/modules/bus/load
function mcvm:priv/modules/ram/load

say finish load