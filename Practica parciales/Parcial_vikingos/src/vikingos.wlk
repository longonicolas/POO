import clasesSociales.*

class Vikingo{
	
	var casta
	var armas
	var dinero
	
	method armas() = armas
	
	method puedeIrDeExpedicion(){ //ok
		return self.esProductivo() && casta.tienePermitidoExpedicionar(self)
	}
	
	method esProductivo() //ok
	
	method ascenderDeEscalaSocial(){ //ok
		casta = casta.subirDeCasta(self)
	}
	
	method recibirBotin(oro){ //ok
		dinero += oro
	}
	
	method tieneArmas(){ //ok
		return self.armas() > 0
	}
	
	method recibirRecompensa()
	
}

class Soldado inherits Vikingo{
	
	var homicidios
	
	override method esProductivo(){ //ok
		return homicidios > 20 && self.tieneArmas()
	}
	
	override method recibirRecompensa(){ //ok
		armas += 10
	}
	
}

class Granjero inherits Vikingo{
	
	
	var cantidadDeHijos
	var hectareasDesignadas
	
	
	override method tieneArmas() = false
	
	override method esProductivo(){ //ok
		return cantidadDeHijos * hectareasDesignadas >= cantidadDeHijos * 2
	}
	
	override method recibirRecompensa(){ //ok
		cantidadDeHijos += 2
		hectareasDesignadas += 2
	}
	
	
}