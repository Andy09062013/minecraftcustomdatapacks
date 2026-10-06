$data remove storage shadow:mbox reg[{id:$(id)}]
$data modify storage shadow:mbox reg append value {id:$(id),name:"$(name)"}
