# Revoke immediately so the advancement can trigger again on next placement.
advancement revoke @s only horror:block_replace_on_place

# Rare corruption event after placing a block.
scoreboard players random @s horror_place_roll 1 10
execute if score @s horror_place_roll matches 1 run function horror:blocks/attempt_replace
