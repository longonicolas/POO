class Acompaniante{
	
	method puedeIrse() = true
}


class Rick{
	
	var demencia
	
	method irDeAventura(acompaniante){
		if(acompaniante.puedeIrse()){
			acompaniante.irDeAventura(self)
		}
		else{
			self.noIrDeAventura()
		}
	}
	
	method aumentarDemencia(cantidad){
		demencia += cantidad
	}
	
	method disminuirDemencia(cantidad){
		demencia -= cantidad
	}
	
	method noIrDeAventura(){
		self.aumentarDemencia(1000)
	}
}

class Morty{
	
	var saludMental
	//const unRick = new Rick(demencia = 100)
	
	method restarSaludMental(cantidad){
		
		saludMental -= cantidad
	}
	
	method puedeIrse(){
		return true
	}
	
	method irDeAventura(unRick){
		
		self.restarSaludMental(-30)
		unRick.disminuirDemencia(50)
	}
}

class Beth{
	
	var afectoPorElPadre
	//const unRick = new Rick(demencia = 100)
	
	method irDeAventura(unRick){
		afectoPorElPadre += 10
		unRick.restarDemencia(10)
	}
}

class Summer inherits Beth{
	
	override method irDeAventura(unRick){
	if(self.esLunes()){
	super(unRick)	
	}
	
	}
	
	method esLunes(){
		return new Date().dayOfWeek() == monday
	}
}