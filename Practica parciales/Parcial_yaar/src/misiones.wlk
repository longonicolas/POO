class Mision {
	
	method puedeSerCompletadaPor(unBarco){
		return unBarco.tieneSuficienteTripulacion()
	}
	
	method sirveParaMision(unPirata)
}

class BusquedaDelTesoro inherits Mision{
	
	override method puedeSerCompletadaPor(unBarco){
		return super(unBarco) && unBarco.hayUnaLLaveDeCofre()
	}
	
	method tieneAlgunElemento(unPirata){
		return unPirata.tiene("brujula") || unPirata.tiene("mapa") || unPirata.tiene("grogXD")
	}
	
	override method sirveParaMision(unPirata){
		return self.tieneAlgunElemento(unPirata) && unPirata.dinero() < 5
	}
}

class ConvertirseEnLeyenda inherits Mision{
	
	const itemObligatorio
	
	override method sirveParaMision(unPirata){
		return unPirata.cantidadDeItems() >= 10 && unPirata.tiene(itemObligatorio)
	}
}

class Saqueo inherits Mision{
	
	const objetivo
	var dineroEstablecido
	
	override method puedeSerCompletadaPor(unBarco){
		return super(unBarco) && objetivo.esVulnerableA(unBarco)
	}
	
	override method sirveParaMision(unPirata){
		return unPirata.dinero() < dineroEstablecido && unPirata.seAnimaASaquear(objetivo)
	}
	
	method cambiarDineroEstablecido(cantidad){
		dineroEstablecido = cantidad
	}
}