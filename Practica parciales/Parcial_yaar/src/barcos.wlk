class Barco{
	
	var mision
	const capacidad
	var tripulantes = #{}
	
	method cantidadDeTripulantes(){
		return tripulantes.size()
	}
	
	method tieneSuficienteTripulacion(){
		return self.cantidadDeTripulantes() >= capacidad * 0.9
	}
	
	method hayUnaLLaveDeCofre(){
		return tripulantes.any({tripulante => tripulante.tiene("llaveDeCofre")})
	}
	
	method esVulnerableA(otroBarco){
		return self.cantidadDeTripulantes() <= otroBarco.cantidadDeTripulantes() / 2
	}
	
	method barcoPasadoDeGrog(){
		return tripulantes.all({tripulante => tripulante.estaPasadoDeGrog()})
	}
	
	method puedeSerSaqueadoPor(unPirata){
		return unPirata.estaPasadoDeGrog()
	}
	
	method hayEspacio(){
		return capacidad > self.cantidadDeTripulantes()
	}
	
	method puedeFormarParteDeLaTripulacion(unPirata){
		return self.hayEspacio() && unPirata.esUtilPara(mision)
	}
	
	method subirAlBarco(unPirata){
		if(self.puedeFormarParteDeLaTripulacion(unPirata)){
			tripulantes.add(unPirata)
		}
	}
	
	method cambiarDeMision(unaMision){
		mision = unaMision
		tripulantes = tripulantes.filter({tripulante => tripulante.esUtilPara(unaMision)})
	}
	
	method pirataMasEbrio(){
		return tripulantes.max({tripulante => tripulante.nivelDeEbriedad()})
	}
	
	method todosBeben(){
		tripulantes.forEach({tripulante => tripulante.tragoDeGrog()})
	}
	
	method sePierdeElMasEbrio(){
		tripulantes.remove(self.pirataMasEbrio())
	}
	
	method anclarEnCiudad(unaCiudad){
		self.todosBeben()
		self.sePierdeElMasEbrio()
		unaCiudad.sumarHabitante()
	}
	
	method esBarcoTemible(){
		return mision.puedeSerCompletadaPor(self)
	}
	
	method tripulantesPasadosDeGrog(){
		return tripulantes.filter({tripulante => tripulante.estaPasadoDeGrog()})
	}
	
	method cantidadDePasadosDeGrog(){
		return self.tripulantesPasadosDeGrog().size()
	}
	
	method cantidadDeItemsDeTripulantesPasadosDeGrogSinRepetir(){
		return self.tripulantesPasadosDeGrog().sum({tripulante => tripulante.itemsDistintos().size()})
	}
	
	method ebrioConMasDinero(){
		return self.tripulantesPasadosDeGrog().max({tripulante => tripulante.dinero()})
	}
	
	method cantidadDeTripulantesQueHaInvitado(unTripulante){
		return tripulantes.count({tripulante => tripulante.meInvito(unTripulante)})
	}
	
	method tripulanteQueMasInvito(){
		return tripulantes.max({tripulante => self.cantidadDeTripulantesQueHaInvitado(tripulante)})
	} 
}