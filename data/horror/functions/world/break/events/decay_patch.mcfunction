summon minecraft:marker ~ ~ ~ {Tags:["horror.decay_probe"]}
spreadplayers ~ ~ 8 24 false @e[type=minecraft:marker,tag=horror.decay_probe,sort=nearest,limit=1]
execute as @e[type=minecraft:marker,tag=horror.decay_probe,sort=nearest,limit=1] at @s run function horror:world/break/events/decay_patch_at_probe
kill @e[type=minecraft:marker,tag=horror.decay_probe]
