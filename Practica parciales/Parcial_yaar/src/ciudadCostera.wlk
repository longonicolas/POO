class CiudadCostera {
	
	var habitantes
	
	method esVulnerableA(unBarco){
		return self.laCiudadEstaEnProblemas(unBarco) || unBarco.barcoPasadoDeGrog()
	}
	
	method laCiudadEstaEnProblemas(unBarco){
		return unBarco.cantidadDeTripulantes() >= habitantes * 0.4 
	}
	
	method puedeSerSaqueadoPor(unPirata){
		return unPirata.ebriedad() >= 50
	}
	
	method sumarHabitante(){
		habitantes += 1
	}
}
