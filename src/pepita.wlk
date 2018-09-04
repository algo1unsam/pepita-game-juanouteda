import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 
	
	var property posicion = game.at(3,3)
	var unaImagen = "pepita1.png"
	
	
	method imagen() {
		if (energia < 10){unaImagen	= "pepita.png" return unaImagen}
		if (energia > 100){unaImagen = "pepita2.png" return unaImagen}
		else{unaImagen = "pepita1.png"}
		return unaImagen
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
		if (energia >= posicion.distance(nuevaPosicion)){
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)}
		else{game.say(self, "Dame de comer primero!")}
	}	
	method teEncontro(alguien){
		alguien.darComida(self) 
		
}	
}
