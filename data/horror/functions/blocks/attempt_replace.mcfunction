scoreboard players set @s horror_replace_done 0

# Probe several points along the crosshair ray to find the newly placed block.
execute if score @s horror_replace_done matches 0 anchored eyes positioned ^ ^ ^1 run function horror:blocks/try_replace_here
execute if score @s horror_replace_done matches 0 anchored eyes positioned ^ ^ ^2 run function horror:blocks/try_replace_here
execute if score @s horror_replace_done matches 0 anchored eyes positioned ^ ^ ^3 run function horror:blocks/try_replace_here
execute if score @s horror_replace_done matches 0 anchored eyes positioned ^ ^ ^4 run function horror:blocks/try_replace_here
