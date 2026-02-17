scoreboard objectives add horror_cooldown dummy
scoreboard objectives add horror_look_ticks dummy
scoreboard objectives add horror_rng dummy
scoreboard objectives add horror_place_roll dummy
scoreboard objectives add horror_replace_done dummy

kill @e[tag=horror.watch_zone]
kill @e[tag=horror.watcher]

scoreboard players set @a horror_cooldown 0
scoreboard players set @a horror_look_ticks 0
scoreboard players set @a horror_place_roll 0
scoreboard players set @a horror_replace_done 0
