import pepita.*
object manzana {
	const property imagen = "manzana.png"
	method energia() = 80
	
	method teEncontro(alguien){
		alguien.levantar(self)
		// TODO está bien que pusiste el mensaje pero ojo porque roque no la come
		// la levanta
		game.say(alguien, "Comi una Manzana")
		game.removeVisual(self)
		
	}
}

object alpiste {
	const property imagen = "alpiste.png"
	method energia() = 5
	method teEncontro(alguien){
		alguien.levantar(self)
		game.removeVisual(self)
	}
}
