import ninies.*

class Barrio {
	
	const niniesDelBarrio = #{}
	
	method ordenarPorCaramelos(unosNinies){
		return unosNinies.sortedBy({unNinie, otroNinie => unNinie.caramelos() > otroNinie.caramelos()})
	}
	
	method losTresConMasCaramelosDelRrioba(){
		return self.ordenarPorCaramelos(niniesDelBarrio).take(3)
	}
	
	
	method niniesConMuchosCaramelos(unosNinies){
		return unosNinies.filter({unNinie => unNinie.tieneMasDeNCaramelos(10)})
	}
	
	method elementosDeNinies(unosNinies){
		return unosNinies.map({unNinie => unNinie.elementosPuestos()}).flatten()
	}
	
	method elementosDeNiniosConMuchosCaramelos(){
		return self.niniesConMuchosCaramelos(niniesDelBarrio).elementosDeNinies(niniesDelBarrio).asSet()
	}
	
	
	
}
