#> mcvm:priv/modules/bus/load
# Load the BUS module

data modify storage mcvm:vm vm.bus merge value {reg_a:0,reg_b:0,reg_c:0,addr:0}

say finish bus load