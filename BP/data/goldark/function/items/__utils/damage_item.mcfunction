$item modify entity @s weapon.$(slot) goldark:damage

$execute if items entity @s weapon.$(slot) *[damage=120] run playsound entity.item.break player @s
$execute if items entity @s weapon.$(slot) *[damage=120] run item replace entity @s weapon.$(slot) with air