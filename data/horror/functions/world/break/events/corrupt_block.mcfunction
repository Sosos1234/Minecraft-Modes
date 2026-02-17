summon minecraft:marker ~ ~ ~ {Tags:["horror.break_probe"]}
spreadplayers ~ ~ 6 20 false @e[type=minecraft:marker,tag=horror.break_probe,sort=nearest,limit=1]
execute as @e[type=minecraft:marker,tag=horror.break_probe,sort=nearest,limit=1] at @s run function horror:world/break/events/corrupt_block_at_probe
kill @e[type=minecraft:marker,tag=horror.break_probe]
