## * AydenTFoxx @ 2025-07-05
## * 
## * Plays particles in a circular pattern with the specified distance.
## * 
## * In-game, this creates an expanding and shrinking pattern.

##? Function Arguments:
#? distance: The radius of the circle, in blocks.


# Display particles
$particle soul_fire_flame ^$(distance) ^0.2 ^$(distance) 0.0 0.0 0.0 0.01 1
$particle soul_fire_flame ^$(distance) ^0.2 ^-$(distance) 0.0 0.0 0.0 0.01 1
$particle soul_fire_flame ^-$(distance) ^0.2 ^$(distance) 0.0 0.0 0.0 0.01 1
$particle soul_fire_flame ^-$(distance) ^0.2 ^-$(distance) 0.0 0.0 0.0 0.01 1