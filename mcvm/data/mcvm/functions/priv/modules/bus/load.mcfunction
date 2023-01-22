#> mcvm:priv/modules/bus/load
# Load the BUS module

data modify storage mcvm:io in.name set value "bus/load"
function mcvm:priv/misc/log_entry

data modify storage mcvm:vm vm.bus merge value {a:0,b:0,c:0,addr:0}

say finish bus load