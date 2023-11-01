import clasesSociales.*

class Vikingo{
	
	var casta
	var armas
	
	method armas() = armas
	
	method puedeIrDeExpedicion(){
		return self.esProductivo() && casta.tienePermitidoExpedicionar(self)
	}
	
	method esProductivo()
	method ascenderDeEscalaSocial(){
		casta = casta.subirDeCasta(self)
	}
	
}

class Soldado inherits Vikingo{
	
	var homicidios
	
	override method esProductivo(){
		return homicidios > 20 && armas >= 1
	}
	
	override method ascenderDeEscalaSocial(){
		super()
		if(casta != thrall){
			armas += 10
		}
	}
	
}

class Granjero inherits Vikingo{
	
	var cantidadDeHijos
	var hectareasDesignadas
	
	override method esProductivo(){
		return cantidadDeHijos * hectareasDesignadas >= cantidadDeHijos * 2
	}
	
	override method ascenderDeEscalaSocial(){
		super()
		if(casta != thrall){
			cantidadDeHijos += 2
			hectareasDesignadas += 2
		}
	}
	
	
}