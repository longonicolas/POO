import excepcion.*

class Experiencia {
	
	const categoriaSiguiente
	
	method recategorizacion(unArtista){
			if(self.puedeRecategorizarse(unArtista)) return categoriaSiguiente
			else return self
	}
	
	method puedeRecategorizarse(unArtista)
}

object amateur inherits Experiencia(categoriaSiguiente = establecida){
	
	method calcularSueldo(unArtista){
		return 10000
	}
	
	override method puedeRecategorizarse(unArtista){
		return unArtista.cantidadDePeliculas() > 10
	}
	
}

object establecida inherits Experiencia(categoriaSiguiente = estrella){
	
	method calcularSueldo(unArtista){
		if(unArtista.nivelDeFama() >= 15){
			return 5000 * unArtista.nivelDeFama()
		}
		return 15000
	}
	
	override method puedeRecategorizarse(unArtista){
		return unArtista.nivelDeFama() > 10
	}
}

object estrella{
	
	method calcularSueldo(unArtista){
		return 30000 * unArtista.cantidadDePeliculas()
	}
	
	method recategorizacion(unArtista){
		throw new NoPuedeRecategorizarseException()
	}
}