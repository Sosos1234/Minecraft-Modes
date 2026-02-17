scoreboard players random #break_event horror_world 1 100
execute as @r at @s run function horror:world/break/event_at_player

# Events happen faster at higher decay stages.
scoreboard players set #break_event_cd horror_world 1200
execute if score #break_stage horror_world matches 1 run scoreboard players set #break_event_cd horror_world 900
execute if score #break_stage horror_world matches 2 run scoreboard players set #break_event_cd horror_world 700
execute if score #break_stage horror_world matches 3 run scoreboard players set #break_event_cd horror_world 500
execute if score #break_stage horror_world matches 4.. run scoreboard players set #break_event_cd horror_world 360
