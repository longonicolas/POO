class EstadoDeSalud {
	
	const estadoDeSaludSiguiente
	
		method repercutirse(){
		return estadoDeSaludSiguiente
	}
	
	method afectarCuerpo(unHumano)
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

	const estadoDeSaludSiguiente = self	
	
	method afectarCuerpo(unHumano){
		unHumano.disminuirActitud(unHumano.actitud())
	}
}