fill ~-7 ~-3 ~-7 ~7 ~5 ~7 minecraft:air replace minecraft:torch
fill ~-7 ~-3 ~-7 ~7 ~5 ~7 minecraft:air replace minecraft:wall_torch
fill ~-7 ~-3 ~-7 ~7 ~5 ~7 minecraft:air replace minecraft:soul_torch
fill ~-7 ~-3 ~-7 ~7 ~5 ~7 minecraft:air replace minecraft:soul_wall_torch
fill ~-7 ~-3 ~-7 ~7 ~5 ~7 minecraft:air replace minecraft:redstone_torch
fill ~-7 ~-3 ~-7 ~7 ~5 ~7 minecraft:air replace minecraft:redstone_wall_torch
fill ~-7 ~-3 ~-7 ~7 ~5 ~7 minecraft:air replace minecraft:lantern
fill ~-7 ~-3 ~-7 ~7 ~5 ~7 minecraft:air replace minecraft:soul_lantern

playsound minecraft:block.fire.extinguish master @a[distance=..24] ~ ~ ~ 0.7 0.6
particle minecraft:smoke ~ ~1 ~ 0.7 0.4 0.7 0.03 24 force @a[distance=..24]
