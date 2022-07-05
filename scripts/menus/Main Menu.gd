extends Node2D

func _ready():
	$start.visible = false
	$start.disabled = true
	$restart.visible = false
	$start.disabled = true
	$settings.visible = false
	$settings.disabled = true
	$quit.visible = false
	$quit.disabled = true
	
	$Title.visible_characters = 0
	while $Title.visible_characters < $Title.text.length():
		$Title.visible_characters += 1
		yield(get_tree().create_timer(0.05), "timeout")
	
	$start.visible = true
	$start.disabled = false
	$restart.visible = true
	$start.disabled = false
	$settings.visible = true
	$settings.disabled = false
	$quit.visible = true
	$quit.disabled = false
