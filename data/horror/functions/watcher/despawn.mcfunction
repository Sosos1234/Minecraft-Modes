particle minecraft:smoke ~ ~1 ~ 0.4 0.8 0.4 0.02 25 force @a
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 0.7 0.6

kill @e[tag=horror.watch_zone]
kill @e[tag=horror.watcher]

scoreboard players set @a horror_look_ticks 0
scoreboard players set @a horror_cooldown 160
