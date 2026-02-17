scoreboard players set #night_flag horror_world 1
scoreboard players add #night_count horror_world 1
execute if score #night_count horror_world matches 2.. run function horror:world/start_silence
