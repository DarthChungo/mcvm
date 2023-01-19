#> mcvm:priv/util/log
# Logs a message to chat and halts if its an error
# IN mcvm:int/root.msg
# IN $level (3 debug, 2 info, 1 warn, 0 error)

execute unless data storage mcvm:int root.args run function mcvm:priv/util/log.0
execute if data storage mcvm:int root.args run function mcvm:priv/util/log.1

# TODO: halt on error