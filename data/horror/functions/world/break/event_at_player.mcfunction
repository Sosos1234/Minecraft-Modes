# Common low-intensity corruption.
execute if score #break_event horror_world matches 1..55 run function horror:world/break/events/corrupt_block

# Light sources start failing over time.
execute if score #break_event horror_world matches 56..80 run function horror:world/break/events/break_lights

# Higher stages can rot small ground patches.
execute if score #break_event horror_world matches 81..95 if score #break_stage horror_world matches 2.. run function horror:world/break/events/decay_patch
execute if score #break_event horror_world matches 81..95 unless score #break_stage horror_world matches 2.. run function horror:world/break/events/corrupt_block

# Atmospheric cue.
execute if score #break_event horror_world matches 96..100 run function horror:world/break/events/ambient_crack
