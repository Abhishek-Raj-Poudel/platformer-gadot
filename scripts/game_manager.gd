extends Node

var score = 0
@onready var coin_collection_text: Label = $CoinCollectionText

func add_score():
	score += 1
	coin_collection_text.text = "You've collected " + str(score)  + " Coins"
