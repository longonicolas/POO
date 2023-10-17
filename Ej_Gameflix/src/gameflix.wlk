import juegos.*
import suscripcion.*
import usuariosJugadores.*
import NoExisteElJuegoException.NoExisteElJuegoException

object gameflix{
	
	const juegos = #{DBZBTK3, godOfWar, gtaSa}
	const clientes = []
	
	method juegos() = juegos
	
	method filtrarJuegos(categoria){
		return juegos.filter({unJuego => unJuego.esDeCategoria(categoria)})
	}
	
	method buscarJuego(nombreDelJuego){
		return juegos.findOrElse({unJuego => unJuego.suNombreEs(nombreDelJuego)}, {throw new NoExisteElJuegoException(nombreJuego = nombreDelJuego)})
	}
	
	method recomendarJuego(){
		return juegos.anyOne()
	}
	
	method cobrarSuscripcion(){
		clientes.forEach({cliente => cliente.pagarSuscripcion()})
		}
	
	}
	




