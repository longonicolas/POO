import NoHayDineroSuficienteException.*

class Grupo {
	
	const integrantes = #{}
	
	method puedeEscaparDeSala(unaSala){
		return integrantes.any({unIntegrante => unIntegrante.puedeEscaparDe(unaSala)})
	}
	
	method escapar(unaSala){
		self.pagoDeSala(unaSala.precio())
		integrantes.forEach({unIntegrante => unIntegrante.agregarSala(unaSala)}) // en el caso de que no haya que evaluar si el integrante puede escapar de la sala
	}
	
	method pagoDeSala(unPrecio){
		if(self.puedenPagar(unPrecio)){
			integrantes.forEach({unIntegrante => unIntegrante.pagar(self.montoPorPersona(unPrecio))})
		}
		throw new NoHayDineroSuficienteException()
	}
	
	method montoPorPersona(montoSala){
		return montoSala / integrantes.size()
	}
	
	method dineroTotalDeIntegrantes(unosIntegrantes){
		return unosIntegrantes.sum({unIntegrante => unIntegrante.saldo()})
	}
	
	method integrantesQuePuedenPagar(montoDividido){
		return integrantes.filter({unIntegrante => unIntegrante.puedePagar(montoDividido)})
	}	
	
	method elGrupoPuedePagar(montoSala){
		return self.dineroTotalDeIntegrantes(self.integrantesQuePuedenPagar(self.montoPorPersona(montoSala))) >= montoSala
	}	
	
	method todosLosIntegrantesPuedenPagar(montoSala){
		return integrantes.all({unIntegrante => unIntegrante.puedePagar(self.montoPorPersona(montoSala))})
	}
	
	method puedenPagar(montoSala){
		return self.todosLosIntegrantesPuedenPagar(montoSala) || self.elGrupoPuedePagar(montoSala)
	}
	
}
