#> mcvm:priv/modules/ram/enlarge
# Resizes the RAM to fit the specified size
# IN $len

execute store result score $max_len mcvm.vars run data get storage mcvm:vm vm.config.max_ram_size
execute unless score $len mcvm.vars > $max_len mcvm.vars run function mcvm:priv/modules/ram/enlarge.0

# TODO: raise exception if $len > $max_len
# TODO: add debug