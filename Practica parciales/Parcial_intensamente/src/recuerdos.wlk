import emociones.*

class Recuerdo {
	
	const fecha
	const descripcion
	const emocionDominante

	
	method emocionDominante() = emocionDominante
	method fecha() = fecha
	
	method quedarAsentadoEnMemoria(unHumano){
		emocionDominante.quedarAsentada(unHumano,self)
	}
	
	method esDificilDeExplicar(){
		return descripcion.words().size() > 10
	}
	
	method tienePalabraClave(palabraClave){
		return descripcion.contains(palabraClave)
	}
	
	method esDeEmocion(unaEmocion){
		return emocionDominante == unaEmocion
	}
	
	method esMasViejoQue(unPensamiento){
		return fecha > unPensamiento.fecha()
	}
	
}
