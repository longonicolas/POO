class Recuerdo {
	
	const fecha
	const descripcion
	const emocionDominante
	
	method emocionDominante() = emocionDominante
	
	method quedarAsentadoEnMemoria(unHumano){
		emocionDominante.quedarAsentada(unHumano,self)
	}
	
	method esDificilDeExplicar(){
		return descripcion.length() > 10
	}
	
}
