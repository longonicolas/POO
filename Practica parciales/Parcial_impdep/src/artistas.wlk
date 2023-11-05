class Artista {
	
	var experiencia
	var cantidadDePeliculas
	var ahorros
	
	method cantidadDePeliculas() = cantidadDePeliculas
	
	method nivelDeFama(){
		return cantidadDePeliculas / 2
	}
	
	method sueldo(){
		return experiencia.calcularSueldo(self)
	}
	
	method recategorizar(){
		experiencia = experiencia.recategorizacion(self)
	}
	
	method actuar(){
		cantidadDePeliculas ++
		ahorros += self.sueldo()
		
	}
	
}
