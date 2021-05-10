#execute if block ~ ~ ~ #minecraft:rails run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"#minecraft:rails"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ #minecraft:anvil run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"#minecraft:anvil"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:blast_furnace run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:blast_furnace"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:iron_block run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:iron_block"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:cauldron run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:cauldron"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:cauldron run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:cauldron"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:chain run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:chain"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:heavy_weighted_pressure_plate"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:light_weighted_pressure_plate"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:hopper run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:hopper"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:iron_trapdoor run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:iron_trapdoor"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:iron_bars run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:iron_bars"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:piston run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:piston"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:sticky_piston run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:sticky_piston"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:smithing_table run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:smithing_table"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:stonecutter run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:stonecutter"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:tripwire_hook run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:tripwire_hook"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#execute if block ~ ~ ~ minecraft:gold_block run summon minecraft:falling_block ~ ~ ~ {Time:200,DropItem:0b,BlockState:{Name:"minecraft:gold_block"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"]}
#"minecraft:netherite_block"

#clone ~ ~ ~ ~ ~ ~ 10000 60 10000



#loot spawn 10000 100 10000 mine ~ ~ ~ diamond_pickaxe{Enchantments:[{id:"silk_touch",lvl:1s}]}
#summon minecraft:falling_block 10000 100 10000 {Time:-1000,DropItem:1b,BlockState:{Name:"minecraft:activator_rail"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"],NoAI:1b}
#execute as @e[tag=magnesisFallingBlock] at @s run data modify entity @s BlockState.Name set from entity @e[type=item,limit=1,sort=nearest] Item.id
#kill @e[type=item,limit=1,sort=nearest]
#tp @e[tag=magnesisFallingBlock,tag=!old] ~ ~ ~

#clone 10000 60 10000 10000 60 10000 ~ ~ ~
