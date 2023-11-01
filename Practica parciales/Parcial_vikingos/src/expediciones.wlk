import invasionException.*

class Invasion{
	
	const vikingosInvasores = []
	
	method subirVikingoAInvasion(unVikingo){
		if(unVikingo.puedeIrDeExpedicion()){
			vikingosInvasores.add(unVikingo)
		}
		else{
			throw new NoPuedeIrDeInvasionException(message = "no cumple requisitos para ir a invadir")
		}
	}
}


class InvasionCapital inherits Invasion {
	
	const riquezaDelSuelo
	
	method botin(){
		return self.defensoresDerrotados() * riquezaDelSuelo
	}
	
	method defensoresDerrotados(){
		return vikingosInvasores.size()
	}
	
	method valeLaPena(){
		return self.botin() * self.defensoresDerrotados() >= 3 * self.defensoresDerrotados()
	}
	
}

class InvasionAldea inherits Invasion {
	
	const cantidadDeCrucifijos
	
	method botin(){
		return 15
	}
	
	method valeLaPena(){
		return self.botin() >= 15 && cantidadDeCrucifijos
	}
}

class InvasionAldeaAmurallada inherits InvasionAldea {
	
	const cantidadMinimaDeGuerreros
	
	override method valeLaPena(){
		return super() && vikingosInvasores.size() >= cantidadMinimaDeGuerreros
		
		
	}
}