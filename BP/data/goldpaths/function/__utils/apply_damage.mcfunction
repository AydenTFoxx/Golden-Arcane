## * AydenTFoxx @ 2025-07-05
## * 
## * Applies damage to the player based on their Wolf form's stored value.

##? Function Arguments:
#? goldark_health: The health to be taken. This argument is provided by the Wolf entity's "data" property.


# Remove health
$damage @s $(goldark_health) goldpaths:deferred