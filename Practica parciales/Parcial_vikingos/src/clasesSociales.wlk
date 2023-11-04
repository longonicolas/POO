import castaException.*
import vikingos.*

class Casta {
	
	const claseSiguiente
	
	method tienePermitidoExpedicionar(unVikingo) = true
	
	method subirDeCasta(unVikingo){
		return claseSiguiente
	}
}

object jarl inherits Casta(claseSiguiente = karl){
	
	override method tienePermitidoExpedicionar(unVikingo){
		return !unVikingo.tieneArmas()
	}
	
	override method subirDeCasta(unVikingo){
		unVikingo.recibirRecompensa()
		return super(unVikingo)
	}
	
}

object karl inherits Casta(claseSiguiente = thrall){
	
}

object thrall{
	
	method tienePermitidoExpedicionar(unVikingo) = true
	
	method subirDeCasta(unVikingo){
		throw new NoPuedoSubirDeCastaException()
	}
}
