import suscripcion.*
import NoPoseeElJuegoException.NoPoseeElJuegoException

class Usuario {
	
	var suscripcion 
	var dineroEnCuenta
	var humor
	
	method suscripcion() = suscripcion
	method dineroEnCuenta() = dineroEnCuenta
	
	method pagarSuscripcion(){
		
		if(suscripcion.precio() <= dineroEnCuenta){
		dineroEnCuenta -= suscripcion.precio()
		}
		else{
			self.suscripcionBase()
		}
	}
	
	method suscripcionBase(){
		suscripcion = base
	}
	
	method cantidadHorasJugadas(unJuego){
		return unJuego.cantidadHorasJugadas()
	}
	
	method reducirHumor(unidades,cantidadHorasJugadas){
		humor -= unidades * cantidadHorasJugadas
	}
	
	method aumentarHumor(unidades,cantidadHorasJugadas){
		humor += unidades * cantidadHorasJugadas
	}	
	
	method comprarSkins(precio){
		dineroEnCuenta -= precio
	}
	
	method suscripcionInfantil(){
		suscripcion = infantil
	}
	
	method jugarJuego(unJuego){
		if(suscripcion.permiteJugar(unJuego)){
			if(unJuego.categoria() == "Violencia"){
				self.reducirHumor(10,self.cantidadHorasJugadas(unJuego))
			}
			else if(unJuego.categoria() == "MOBA" ){
				self.comprarSkins(30)
			}
			else if(unJuego.categoria() == "Terror"){
				self.suscripcionInfantil()
			}
			else if(unJuego.categoria() == "Estrategia"){
				self.aumentarHumor(5,self.cantidadHorasJugadas(unJuego))
			}
			
		}
		else{
			throw new NoPoseeElJuegoException(message = "Juego no incluido en suscripcion")
		}
	}
	
}

//const usuario1 = new Usuario(suscripcion = base, dineroEnCuenta = 10)