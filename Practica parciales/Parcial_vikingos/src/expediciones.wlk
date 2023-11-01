import expedicionException.*

class Expedicion{
	
	const vikingosInvasores = []
	var invasiones = #{}
	var botinTotal
	
	method subirVikingoAExpedicion(unVikingo){ //ok
		if(unVikingo.puedeIrDeExpedicion()){
			vikingosInvasores.add(unVikingo)
		}
		else{
			throw new NoPuedeIrDeExpedicionException(message = "no cumple requisitos para ir a invadir")
		}
	}
	
	method cantidadDeVikingos(){ //ok
		return vikingosInvasores.size()
	}
	
	method valeLaPena(){ //ok
		invasiones.all({invasion => invasion.valeLaPena(self.cantidadDeVikingos())})
	}
	
	method dividirBotin(){
		return botinTotal / self.cantidadDeVikingos()
	}
	
	method realizarExpedicion(){
		botinTotal += invasiones.sum({invasion => invasion.serInvadida()})
		vikingosInvasores.forEach({unVikingo => unVikingo.recibirBotin(self.dividirBotin())})
	}
	
	
}

class Lugar{
	
	method botin(cantidadDeVikingos)
	method valeLaPena(cantidadDeVikingos)
	
	method serInvadido(cantidadDeVikingos){
		return self.botin(cantidadDeVikingos)
	}
}

class InvasionCapital inherits Lugar{
	
	const riquezaDelSuelo
	
	override method botin(cantidadDeVikingos){
		return cantidadDeVikingos * riquezaDelSuelo
	}
	
	override method valeLaPena(cantidadDeVikingos){
		return self.botin(cantidadDeVikingos) >= 3 * cantidadDeVikingos
	}
}

class InvasionAldea inherits Lugar{
	
	const cantidadDeCrucifijos
	
	override method botin(cantidadDeVikingos){
		return cantidadDeVikingos
	}
	
	override method valeLaPena(cantidadDeVikingos){
		return self.botin(cantidadDeVikingos) >= 15 && cantidadDeCrucifijos
	}
	

}

class InvasionAldeaAmurallada inherits InvasionAldea {
	
	const cantidadMinimaDeGuerreros
	
	override method valeLaPena(cantidadDeVikingos){
		return super(cantidadDeVikingos) && cantidadDeVikingos >= cantidadMinimaDeGuerreros
	}
}