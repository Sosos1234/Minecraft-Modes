# Keep only one watcher and one target zone entity.
execute if entity @e[tag=horror.watcher,limit=2] run kill @e[tag=horror.watcher,sort=furthest,limit=1]
execute if entity @e[tag=horror.watch_zone,limit=2] run kill @e[tag=horror.watch_zone,sort=furthest,limit=1]

# Decrement cooldowns.
execute as @a[scores={horror_cooldown=1..}] run scoreboard players remove @s horror_cooldown 1

# Try to spawn watcher while none exists.
execute as @a[scores={horror_cooldown=..0}] at @s unless entity @e[tag=horror.watcher,limit=1] run function horror:watcher/spawn_attempt

# Create and sync an upper-body target zone for crosshair detection.
execute if entity @e[tag=horror.watcher,limit=1] unless entity @e[tag=horror.watch_zone,limit=1] at @e[tag=horror.watcher,limit=1] run summon minecraft:interaction ~ ~1.2 ~ {Tags:["horror.watch_zone"],width:0.8f,height:0.9f}
execute if entity @e[tag=horror.watcher,limit=1] if entity @e[tag=horror.watch_zone,limit=1] run function horror:watcher/update_zone
execute unless entity @e[tag=horror.watcher,limit=1] if entity @e[tag=horror.watch_zone,limit=1] run kill @e[tag=horror.watch_zone]

# Track whether the player keeps the crosshair on the target zone.
execute unless entity @e[tag=horror.watcher,limit=1] run scoreboard players set @a horror_look_ticks 0
execute if entity @e[tag=horror.watcher,limit=1] as @a unless predicate horror:player_looking_at_zone run scoreboard players set @s horror_look_ticks 0
execute if entity @e[tag=horror.watcher,limit=1] as @a if predicate horror:player_looking_at_zone run scoreboard players add @s horror_look_ticks 1

# Despawn triggers.
execute if entity @e[tag=horror.watcher,limit=1] if entity @a[scores={horror_look_ticks=2..}] run function horror:watcher/despawn
execute as @e[tag=horror.watcher,limit=1] at @s if entity @a[distance=..8] run function horror:watcher/despawn
