import recuerdos.*
import felicidadEnNegativoException.*
import emociones.*

object riley {
	
	var felicidad = 1000
	var emocionDominante
	const recuerdos = #{}
	const pensamientosCentrales = #{}
	const memoriaALargoPlazo = []
	
	
	method felicidad() = felicidad
	
	method emocionDominante() = emocionDominante
	
	method vivirEvento(){
		const unRecuerdo = new Recuerdo(fecha = "11/10/2020", descripcion="fui a tomar un helado", emocionDominante=alegria)
		recuerdos.add(unRecuerdo)
	}
	
	method asentarRecuerdo(unRecuerdo){
		unRecuerdo.quedarAsentadoEnMemoria(self)
	}
	
	method agregarPensamientoCentral(unPensamiento){
		pensamientosCentrales.add(unPensamiento)
	}
	
	method disminuirCoeficienteDeFelicidad(porcentaje){
		const nuevaFelicidad = felicidad - felicidad * porcentaje
		
		if(nuevaFelicidad < 0) throw new FelicidadEnNegativoException()
		
		felicidad -= felicidad * porcentaje
	}
	
	method recuerdosRecientes(){
		return recuerdos.take(5)
	}
	
	method pensamientosCentrales() = pensamientosCentrales
	
	method pensamientosCentralesDificilesDeExplicar(){
		return pensamientosCentrales.filter({unPensamiento => unPensamiento.esDificilDeExplicar()})
	}
	
	method asentamientoDeRecuerdos(unosRecuerdos){
		unosRecuerdos.forEach({unRecuerdo => unRecuerdo.quedarAsentadoEnMemoria(self)})
	}
	
	method recuerdosSelectivos(palabraClave){
		return recuerdos.filter({unRecuerdo => unRecuerdo.tienePalabraClave(palabraClave)})
	}
	
	method asentamientoSelectivoDeRecuerdos(palabraClave, unosRecuerdos){
		self.asentamientoDeRecuerdos(unosRecuerdos.recuerdosSelectivos(palabraClave))
	}
	
	method recuerdosNoCentralesDelDia(){
		return recuerdos.difference(pensamientosCentrales)
	}
	
	method profundizacion(){
		memoriaALargoPlazo.addAll(self.recuerdosNoCentralesDelDia()) //falta condicion de recuerdos negados
	}
	
	method poseeRecuerdosDelPasado(){
		return pensamientosCentrales.any({unRecuerdo => memoriaALargoPlazo.contains(unRecuerdo)})
	}
	
	method todosLosRecuerdosPoseenLaMismaEmocion(){
		return recuerdos.all({unRecuerdo => unRecuerdo.esDeEmocion(self.emocionDominante())})
	}
	
	method estaDesequilibrada(){
		return self.poseeRecuerdosDelPasado() || self.todosLosRecuerdosPoseenLaMismaEmocion()
	}
	
	
	method perderPensamientosAntiguos(){
		pensamientosCentrales.removeAll(self.pensamientosViejos().take(3))
	}
	
	method pensamientosViejos(){
		return pensamientosCentrales.sortedBy({unPensamiento,otroPensamiento => unPensamiento.esMasViejoQue(otroPensamiento)})
	}
	
	method desequilibrioHormonal(){
		if(self.estaDesequilibrada()){
			self.perderPensamientosAntiguos()
			self.disminuirCoeficienteDeFelicidad(0.15)
		}
	}
	
	method restauracionCognitiva(){
		felicidad += 100
		if(felicidad > 1000) felicidad = 1000
	}
	
	method liberacionDeRecuerdosDelDia(){
		recuerdos.clear()
	}
	
	method dormir(){
		self.asentamientoDeRecuerdos(unosRecuerdos)
		
	}
}
