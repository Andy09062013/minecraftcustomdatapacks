# below the bottom of the world, about to fall out
execute if dimension minecraft:overworld if predicate shadow:below_overworld run return run function shadow:void_catch
execute unless dimension minecraft:overworld if predicate shadow:below_zero run function shadow:void_catch
