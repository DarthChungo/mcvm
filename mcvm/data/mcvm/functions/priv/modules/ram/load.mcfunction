#> mcvm:priv/modules/ram/load
# Load the RAM module

data remove storage mcvm:vm vm.ram
data merge storage mcvm:vm {vm:{ram:{data:[],size:0}}}

say finish ram load