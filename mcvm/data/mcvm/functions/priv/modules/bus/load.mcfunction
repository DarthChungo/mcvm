#> mcvm:priv/modules/bus/load
# Load the BUS module

data modify storage mcvm:vm vm.bus merge value {a: 0, b: 0, c: 0, addr: 0, a_sel: 0, b_sel:0, c_sel: 0}

say finish bus load