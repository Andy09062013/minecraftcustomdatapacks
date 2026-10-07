$data modify storage shadow:gh q.s set value "$(s)"
$loot replace entity @s $(s) loot shadow:give/grappling_hook
function shadow:gh/wear with storage shadow:gh q
