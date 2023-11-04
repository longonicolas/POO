object maquillaje {
	
	var nivelDeSusto = 3
	
	method cuantoAsusta() = nivelDeSusto
	
	method cambiarNivelDeSusto(cantidad){
		nivelDeSusto = cantidad
	}
	
}

object traje{
	
	const personaje 
	
	method cuantoAsusta(){
		return personaje.nivelDeSusto()
	}
}


class Personaje{
	
	method nivelDeSusto(){
		return self.nivelTipoDePersonaje()
	}
	
	method nivelTipoDePersonaje()
}

class PersonajeTierno inherits Personaje{
	override method nivelTipoDePersonaje() = 2
}

class PersonajeTerrorifico inherits Personaje{
	override method nivelTipoDePersonaje() = 5
}