fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:coarse_dirt replace minecraft:grass_block
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:mud replace minecraft:dirt
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:gravel replace minecraft:stone
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:moss_block replace minecraft:podzol

execute if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:cobweb
playsound minecraft:ambient.basalt_deltas.additions master @a[distance=..24] ~ ~ ~ 0.5 0.8
