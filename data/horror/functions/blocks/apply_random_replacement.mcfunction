scoreboard players random @s horror_place_roll 1 6

execute if score @s horror_place_roll matches 1 run setblock ~ ~ ~ minecraft:cobweb
execute if score @s horror_place_roll matches 2 run setblock ~ ~ ~ minecraft:blackstone
execute if score @s horror_place_roll matches 3 run setblock ~ ~ ~ minecraft:deepslate_tiles
execute if score @s horror_place_roll matches 4 run setblock ~ ~ ~ minecraft:crying_obsidian
execute if score @s horror_place_roll matches 5 run setblock ~ ~ ~ minecraft:soul_sand
execute if score @s horror_place_roll matches 6 run setblock ~ ~ ~ minecraft:mossy_cobblestone

scoreboard players set @s horror_replace_done 1
