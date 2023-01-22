#> mcvm:priv/modules/regs/load
# Load the registers module

data modify storage mcvm:vm vm.regs merge value {a: 0, b: 0, c: 0, d: 0, e: 0, f: 0, g: 0, h: 0}

say finish register load