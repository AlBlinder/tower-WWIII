extends Node


var diners = 100
var vida_base = 100
var dades_torres = {
	"T1": {
		"mal": 30,
		"temps_recarrega": 2,
		"preu" : 500},
	"T2": {
		"mal": 7,
		"temps_recarrega": 0.4,
		"preu" : 600},
	"T3": {
		"mal": 50,
		"temps_recarrega": 3,
		"preu" : 800}
}

var dades_tancs = {
	"1": {
		"velocitat": 80,
		"vida": 200,
		"benefici" : 100},
	"2": {
		"velocitat": 150,
		"vida": 100,
		"benefici" : 200},
	"3": {
		"velocitat": 60,
		"vida": 500,
		"benefici" : 500}
}
var guanyat = false

