#> mcvm:priv/misc/log_entry
# Log when entering a new function
# IN in.name
# IN in.*

data modify storage mcvm:vars r.name set from storage mcvm:io in.name
data remove storage mcvm:io in.name

tellraw @a[tag=mcvm.loglevel.3] [{"text": "called ", "color": "gray"}, {"storage": "mcvm:vars", "nbt": "r.name"}, {"text": ", args: "}, {"storage": "mcvm:io", "nbt": "in"}]