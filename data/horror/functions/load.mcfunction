scoreboard objectives add horror_cooldown dummy
scoreboard objectives add horror_look_ticks dummy
scoreboard objectives add horror_rng dummy
scoreboard objectives add horror_place_roll dummy
scoreboard objectives add horror_replace_done dummy
scoreboard objectives add horror_world dummy

kill @e[tag=horror.watch_zone]
kill @e[tag=horror.watcher]

scoreboard players set @a horror_cooldown 0
scoreboard players set @a horror_look_ticks 0
scoreboard players set @a horror_place_roll 0
scoreboard players set @a horror_replace_done 0
scoreboard players set #night_flag horror_world 0
scoreboard players set #night_count horror_world 0
scoreboard players set #silence_timer horror_world 0
scoreboard players set #break_tick horror_world 0
scoreboard players set #break_progress horror_world 0
scoreboard players set #break_stage horror_world 0
scoreboard players set #break_event_cd horror_world 1200
scoreboard players set #break_event horror_world 0
scoreboard players set #break_roll horror_world 0
