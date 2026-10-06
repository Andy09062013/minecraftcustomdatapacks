$execute unless data storage shadow:mbox box[{id:$(id),v:$(v)}] run return run function shadow:mb/destroy
$execute if data storage shadow:mbox box[{id:$(id)}].items[0] run return run function shadow:mb/flag_up
function shadow:mb/flag_down
