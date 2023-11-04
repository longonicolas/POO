import recuerdos.*

object alegria{
	
	method quedarAsentada(unHumano,unRecuerdo){
		if(unHumano.felicidad() > 500){
			unHumano.agregarPensamientoCentral(unRecuerdo)
		}
	}
	
}

object tristeza {
	
	method quedarAsentada(unHumano,unRecuerdo){
		unHumano.agregarPensamientoCentral(unRecuerdo)
		unHumano.disminuirCoeficienteDeFelicidad(0.1)
	}

}

class OtraEmocion {
	
	method quedarAsentada(unHumano,unRecuerdo){
	}
}

const disgusto = new OtraEmocion()
const furia = new OtraEmocion()
const temor = new OtraEmocion()
