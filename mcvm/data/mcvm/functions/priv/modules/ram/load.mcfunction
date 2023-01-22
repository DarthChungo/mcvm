#> mcvm:priv/modules/ram/load
# Load the RAM module

data modify storage mcvm:io in.name set value "ram/load"
function mcvm:priv/misc/log_entry

data merge storage mcvm:vm {vm:{ram:{data:[],size:0}}}

execute store result score $end mcvm.vars run data get storage mcvm:vm vm.config.ram_size
scoreboard players set $i mcvm.vars 0
function mcvm:priv/modules/ram/load.0

execute store result storage mcvm:vm vm.ram.size int 1 run scoreboard players get $i mcvm.vars

say finish ram load