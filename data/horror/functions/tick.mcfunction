function horror:world/tick
execute unless score #silence_timer horror_world matches 1.. run function horror:watcher/tick
