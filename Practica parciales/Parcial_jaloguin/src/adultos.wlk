class Adulto {
	
	const niniosQueIntentaronAsustarlo = #{}
	
		method un(){
		return niniosQueIntentaronAsustarlo.filter({ninio => ninio.tieneMasDeNCaramelos(15)}).size()
	}
	
	method tolerancia(){
		return 10 * self.asustadoresConMuchosCaramelos()
	}
	
	method serAsustado(unNinie)
	method darCaramelos()
	
	
}

class AdultoComun inherits Adulto{
	
	override method serAsustado(unNinie){
		return self.tolerancia() < unNinie.capacidadDeSusto()
	}
	
	override method darCaramelos(){
		return self.tolerancia() / 2
	}	
	
}

class Anciano inherits Adulto {
	
	
	override method serAsustado(unNinie) = true
	
	override method darCaramelos(){
		return self.tolerancia() / 4
	}
	
}

class AdultoNecio {
	
	method serAsustado(unNinie) = false
}