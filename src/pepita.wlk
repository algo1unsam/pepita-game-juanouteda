import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 
	
	var property posicion = game.at(3,3)
	var unaImagen = "pepita.png"

	method imagen() {
		if (energia < 10){unaImagen	= "pepita.png"}
		if (energia >100){unaImagen = "pepita1.png"}
		else{unaImagen = "pepita2.png"}
  }
	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
			}
			else{
			game.say(self, "Ya estoy en la ciudad" )}
		}
	

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		if (energia >= 0){
		self.posicion(nuevaPosicion)}
		else{game.say(self, "Dame de comer primero!")}
	}	
	method teEncontro(alguien){
		alguien.darComida(self) //modificar para que le de la comida
		
}	
}
