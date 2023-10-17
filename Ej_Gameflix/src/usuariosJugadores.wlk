import suscripcion.*
import juegos.*
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
	
	method reducirHumor(unidades,horasJugadas){
		humor -= unidades * horasJugadas
	}
	
	method aumentarHumor(unidades,horasJugadas){
		humor += unidades * horasJugadas
	}	
	
	method comprarSkins(precio){
		dineroEnCuenta -= precio
	}
	
	method suscripcionInfantil(){
		suscripcion = infantil
	}
	
	method jugarJuego(unJuego,horasJugadas){
		if(suscripcion.permiteJugar(unJuego)){
			unJuego.jugar(self,horasJugadas)
		}
		else{
			throw new NoPoseeElJuegoException(message = "Juego no incluido en suscripcion")
		}
	}
	
}

object usuario1 inherits Usuario(suscripcion = base, dineroEnCuenta = 50, humor = 100){
	
}
