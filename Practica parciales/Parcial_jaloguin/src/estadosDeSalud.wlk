class EstadoDeSalud {
	
	const estadoDeSaludSiguiente
	
		method repercutirse(){
		return estadoDeSaludSiguiente
	}
	
	method afectarCuerpo(unHumano)
	
	method puedeSeguirComiendo(){
	}
}

object sano inherits EstadoDeSalud(estadoDeSaludSiguiente = empachado){
	
	override method afectarCuerpo(unHumano){
	}
}

object empachado inherits EstadoDeSalud(estadoDeSaludSiguiente = enCama){
	
	override method afectarCuerpo(unHumano){
		unHumano.disminuirActitud(unHumano.actitud() / 2)
	}
	
}

object enCama{
	
	method repercutirse(){
		return self
	}
	
	method afectarCuerpo(unHumano){
		unHumano.disminuirActitud(unHumano.actitud())
	}
	
	method puedeSeguirComiendo(){
		throw new Exception(message = "no mas candys")
	}
}