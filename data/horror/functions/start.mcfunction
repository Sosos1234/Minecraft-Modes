kill @e[tag=horror.watch_zone]
kill @e[tag=horror.watcher]
scoreboard players set @a horror_cooldown 0
scoreboard players set @a horror_look_ticks 0
scoreboard players set @a horror_place_roll 0
scoreboard players set @a horror_replace_done 0

tellraw @s {"text":"Horror mode started: distant watcher is active.","color":"dark_red"}
