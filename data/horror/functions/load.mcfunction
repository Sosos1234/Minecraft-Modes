scoreboard objectives add horror_cooldown dummy
scoreboard objectives add horror_look_ticks dummy
scoreboard objectives add horror_rng dummy

kill @e[tag=horror.watch_zone]
kill @e[tag=horror.watcher]

scoreboard players set @a horror_cooldown 0
scoreboard players set @a horror_look_ticks 0
