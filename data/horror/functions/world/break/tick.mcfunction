# Track slow progression of world decay.
scoreboard players add #break_tick horror_world 1
execute if score #break_tick horror_world matches 1200.. run function horror:world/break/progress_step

# Trigger decay events with increasing frequency over time.
execute if score #break_event_cd horror_world matches 1.. run scoreboard players remove #break_event_cd horror_world 1
execute if score #break_event_cd horror_world matches ..0 run function horror:world/break/trigger_event
