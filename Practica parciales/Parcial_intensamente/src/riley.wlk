import recuerdos.*
import felicidadEnNegativoException.*

object riley {
	
	var felicidad = 1000
	var emocionDominante
	var recuerdos = []
	var pensamientosCentrales = #{}
	
	
	method vivirEvento(){
		const unRecuerdo = new Recuerdo(fecha = "11/10/2020", descripcion="fui a tomar un helado", emocionDominante="alegria")
		recuerdos.add(unRecuerdo)
	}
	
	method asentarRecuerdo(unRecuerdo){
		unRecuerdo.quedarAsentadoEnMemoria(self)
	}
	
	method agregarPensamientoCentral(unPensamiento){
		pensamientosCentrales.add(unPensamiento)
	}
	
	method disminuirCoeficienteDeFelicidad(porcentaje){
		felicidad -= felicidad * 0.1
		if(felicidad < 0){
			felicidad = 0
			throw new FelicidadEnNegativoException(message="Error de felicidad en negativo")
		}
	}
	
	method recuerdosRecientes(){
		return recuerdos.take(5)
	}
	
	method pensamientosCentrales() = pensamientosCentrales
	
	method pensamientosCentralesDificilesDeExplicar(){
		return pensamientosCentrales.filter({unPensamiento => unPensamiento.esDificilDeExplicar()})
	}
	
	method asentamientoDeRecuerdos(){
		recuerdos.all({unRecuerdo => unRecuerdo.quedarAsentadoEnMemoria(self)})
	}
	
	method asentamientoSelectivoDeRecuerdos(palabraClave){
		recuerdos.filter({unRecuerdo => unRecuerdo.tienePalabraClave(palabraClave)})
	}
}
