object villaGesell {
	method imagen() = "ciudad.png"
	method nombre() = "Villa Gesell"
	method posicion() = game.at(8,3)
	method teEncontro(alguien){game.say(alguien, "Bienvenido a la Costa")}
}

object buenosAires {
	method imagen() = "ciudad.png"
	method nombre() = "Buenos Aires"
	method posicion() = game.at(1,1)
	// TODO implementar
	method teEncontro(alguien){	}
}
