object alegria {
	
	method quedarAsentada(unHumano,unRecuerdo){
		if(unHumano.felicidad() > 500){
			unHumano.agregarPensamientoCentral(unRecuerdo)
		}
	}
}

object tristeza {
	
	method quedarAsentada(unHumano,unRecuerdo){
		unHumano.agregarPensamientoCentral(unRecuerdo)
		unHumano.disminuirCoeficienteDeFelicidad(10)
	}
	
}

object otraEmocion {
	
	method quedarAsentada(unHumano,unRecuerdo){
		
	}
}