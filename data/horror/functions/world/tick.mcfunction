# Reduce active silence duration every tick.
execute if score #silence_timer horror_world matches 1.. run scoreboard players remove #silence_timer horror_world 1

# Detect night start once per night.
execute if predicate horror:is_night unless score #night_flag horror_world matches 1.. run function horror:world/on_night_start
execute unless predicate horror:is_night if score #night_flag horror_world matches 1.. run scoreboard players set #night_flag horror_world 0

# During silence: keep only players in the world.
execute if score #silence_timer horror_world matches 1.. run kill @e[type=!minecraft:player]
