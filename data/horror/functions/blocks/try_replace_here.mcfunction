# Never touch container/inventory blocks.
execute if score @s horror_replace_done matches 0 if block ~ ~ ~ #horror:protected_storage run scoreboard players set @s horror_replace_done 1

# Replace only normal world blocks (skip air and fluids).
execute if score @s horror_replace_done matches 0 unless block ~ ~ ~ #horror:protected_storage unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless block ~ ~ ~ minecraft:void_air unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:lava run function horror:blocks/apply_random_replacement
