#> mcvm:priv/load
# Main load function

#declare tag mcvm.loglevel.3 receive debug, info, warn and error messages
#declare tag mcvm.loglevel.2 receive info, warn and error messages
#declare tag mcvm.loglevel.1 receive warn and error messages
#declare tag mcvm.loglevel.0 receive only error messages

#declare objective mcvm.vars global variables

#declare storage mcvm:vm main storage
#declare storage mcvm:io internal function io storage
#declare storage mcvm:vars internal variable storage

# Reset state and preserve config

data remove storage mcvm:io in
data remove storage mcvm:io out
data merge storage mcvm:io {in:{},out:{}}

data remove storage mcvm:vars r
data merge storage mcvm:vars {r:{}}

data modify storage mcvm:vars r.config set from storage mcvm:vm vm.config
data remove storage mcvm:vm vm
data modify storage mcvm:vm vm.config set from storage mcvm:vars r.config

scoreboard objectives add mcvm.vars dummy
scoreboard players reset * mcvm.vars

# Config

execute store result score $ram_size mcvm.vars run data get storage mcvm:vm vm.config.ram_size
execute store result score $stack_size mcvm.vars run data get storage mcvm:vm vm.config.stack_size

execute unless score $ram_size mcvm.vars matches 16..1024 run data modify storage mcvm:vm vm.config.ram_size set value 16
execute unless score $stack_size mcvm.vars matches 16..1024 run data modify storage mcvm:vm vm.config.stack_size set value 16

# Load modules

function mcvm:priv/modules/bus/load
function mcvm:priv/modules/ram/load
function mcvm:priv/modules/regs/load

say finish load