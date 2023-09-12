object verdurin{
	
	var cajones = 20
	var kilometraje = 700000
	
	method carga() = cajones * 50
	
	method obtenerVelocidad(){
		return 80 - (self.carga() / 500)
	}
	
	method peaje(kilometros,velocidad){
		kilometraje += kilometros
	}
}
 object scanion5000{
 	
 	var densidadLiquido = 2
 	const volumen = 5000
 	
 	method carga() = volumen * densidadLiquido
 	
 	method obtenerVelocidad() = 140
 	
 	method peaje(kilometros,unaVelocidad){
 	}
 }
 
 object cerealita{
 	
 	var peso = 500
 	var deterioro = 0
 	
 	 method carga(pesoCarga){
 		peso = pesoCarga
 	}
 	
 	method carga() = peso
 	
 	method obtenerVelocidad(){
 		
 		if(deterioro < 10){
 			return 40
 		}
 		return 60 - deterioro
 	}
 	
 	
 	method peaje(kilometros,velocidad){
 		
 		deterioro += 0.max(velocidad - 45)
 		
 		//otra forma de delimitar el minimo (=0) :
 		
 		/*deterioro += velocidad - 45
 		
 		if(deterioro < 0)
 		deterioro = 0*/
 		
 		
 		
 		
 	}
 	
 }