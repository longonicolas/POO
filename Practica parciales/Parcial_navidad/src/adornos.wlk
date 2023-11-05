class Adorno {
	
	const peso
	const coeficienteDeSuperioridad
	
	method peso() = peso
	
	method importancia(){
		return peso * coeficienteDeSuperioridad
	}
	
	
}

class Luz inherits Adorno{
	
	const lamparitas
	
	override method importancia(){
		return super() * lamparitas
	}
}

class Figura inherits Adorno{
	
	const volumen
	
	override method importancia(){
		return super() + volumen
	}
}

class Guirnalda inherits Adorno{
	
	const aniosEnUso
	
	override method peso(){
		return peso - 100 * aniosEnUso
	}
	
	override method importancia(){
		return self.peso() * coeficienteDeSuperioridad 
	}
}