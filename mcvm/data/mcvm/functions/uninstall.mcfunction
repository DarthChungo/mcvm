#> mcvm:uninstall
# Deletes all storage objects and scoreboards

scoreboard objectives remove mcvm.args
scoreboard objectives remove mcvm.fun
scoreboard objectives remove mcvm.vars

data remove storage mcvm:vm vm