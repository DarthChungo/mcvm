#> mcvm:uninstall
# Deletes all storage objects and scoreboards

scoreboard objectives remove mcvm.vars

data remove storage mcvm:vm vm
data remove storage mcvm:io in
data remove storage mcvm:io out