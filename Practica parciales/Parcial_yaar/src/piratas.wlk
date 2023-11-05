class Pirata {
	
	const items = []
	var nivelDeEbriedad
	var dinero
	const invitadoPor
	
	method dinero() = dinero
	method nivelDeEbriedad() = nivelDeEbriedad
	method items() = items
	method invitadoPor() = invitadoPor
	
	method esUtilPara(unaMision){
		return unaMision.sirveParaMision(self)
	}
	
	method tiene(unItem){
		return items.contains(unItem)
	}
	
	method cantidadDeItems(){
		return items.size()
	}
	
	method estaPasadoDeGrog(){
		return self.nivelDeEbriedad() >= 90
	}
	
	method seAnimaASaquear(unObjetivo){
		return unObjetivo.puedeSerSaqueadoPor(self)
	}
	
	method tragoDeGrog(){
		nivelDeEbriedad += 5
		dinero -= 1
	}
	
	method itemsDistintos(){
		return items.withoutDuplicates()
	}
	
	method meInvitoEl(unTripulante){
		return unTripulante == invitadoPor
	}
}

class PirataEspia inherits Pirata{
	
	override method estaPasadoDeGrog() = false
	
	override method seAnimaASaquear(unObjetivo){
		return super(unObjetivo) && self.tiene("permisoDeLaCorona")
	}
}
