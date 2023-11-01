import castaException.*
import vikingos.*

class Casta {
	
	const claseSiguiente
	
	
	method tienePermitidoExpedicionar(unVikingo)
	
	method subirDeCasta(unVikingo){
		return claseSiguiente
	}
}

object jarl inherits Casta(claseSiguiente = karl){
	
	override method tienePermitidoExpedicionar(unVikingo){
		return unVikingo.armas() < 1
	}
	

}

object karl inherits Casta(claseSiguiente = thrall){
	
	override method tienePermitidoExpedicionar(unVikingo) = true
}

object thrall{
	
	method tienePermitidoExpedicionar(unVikingo) = true
	
	method subirDeCasta(unVikingo){
		throw new NoPuedoSubirDeCastaException()
	}
}
