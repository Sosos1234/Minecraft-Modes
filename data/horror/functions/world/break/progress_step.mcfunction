scoreboard players set #break_tick horror_world 0
scoreboard players add #break_progress horror_world 1

# Increase decay stage as time passes.
scoreboard players set #break_stage horror_world 0
execute if score #break_progress horror_world matches 30.. run scoreboard players set #break_stage horror_world 1
execute if score #break_progress horror_world matches 90.. run scoreboard players set #break_stage horror_world 2
execute if score #break_progress horror_world matches 180.. run scoreboard players set #break_stage horror_world 3
execute if score #break_progress horror_world matches 300.. run scoreboard players set #break_stage horror_world 4
