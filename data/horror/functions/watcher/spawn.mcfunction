summon minecraft:enderman ~ ~ ~ {Tags:["horror.watcher"],Silent:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"Distant Watcher","color":"dark_red","italic":false}'}
tag @e[type=minecraft:enderman,tag=horror.watcher,sort=nearest,limit=1,distance=..4] add horror.just_spawned

# Place watcher far from player and force it to look back.
spreadplayers ~ ~ 24 48 false @e[tag=horror.just_spawned,limit=1]
execute as @e[tag=horror.just_spawned,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest,limit=1] eyes
tag @e[tag=horror.just_spawned,limit=1] remove horror.just_spawned

# Delay next spawn attempts after any appearance.
scoreboard players set @a horror_cooldown 200
