class Escapista {
	
	var maestria
	var salasDeLasQueSalio = []
	var saldo
	
	method saldo() = saldo
	
	method puedeEscaparDe(unaSala){
		return maestria.lePermiteEscapar(unaSala,self)
	}
	
	method cantidadDeSalasDeLasQueSalio(){
		return salasDeLasQueSalio.size()
	}
	
	method hizoMuchasSalas(){
		return self.cantidadDeSalasDeLasQueSalio() >= 6
	}
	
	method subirDeMaestria(){
		maestria = maestria.ascenderAEscapista(self)
	}
	
	method nombreDeSalas(unasSalas){
		return unasSalas.map({sala => sala.nombre()})
	}
	
	method nombreDeSalasDeLasQueSalio(){
		return self.nombreDeSalas(salasDeLasQueSalio.withoutDuplicates())
	}
	
	method agregarSala(unaSala){
		salasDeLasQueSalio.add(unaSala)
	}
	
	method puedePagar(unMonto){
		return saldo >= unMonto
	}
	
	method pagar(unPrecio){
		saldo -= unPrecio
	}
}
