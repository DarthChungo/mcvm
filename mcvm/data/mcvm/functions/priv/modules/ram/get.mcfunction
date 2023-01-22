#> mcvm:priv/modules/ram/get
# Get a value from ram
# IN in.pos
# IN in.bus (0 a, 1 b)

data modify storage mcvm:io in.name set value "ram/get"
function mcvm:priv/misc/log_entry

data modify storage mcvm:vars r.ram_copy set from storage mcvm:vm vm.ram.data
execute store result score $i mcvm.vars run data get storage mcvm:io in.pos

execute if score $i mcvm.vars matches 1.. run function mcvm:priv/modules/ram/get.0

execute store result score $bus mcvm.vars run data get storage mcvm:io in.bus
execute if score $bus mcvm.vars matches 0 run data modify storage mcvm:vm vm.bus.a set from storage mcvm:vars r.ram_copy[0]
execute if score $bus mcvm.vars matches 1 run data modify storage mcvm:vm vm.bus.b set from storage mcvm:vars r.ram_copy[0]