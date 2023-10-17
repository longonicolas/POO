class Juego{
	
	const nombre
	const categoria
	var precio
	
	method categoria() = categoria
	method nombre() = nombre
	
	method esDeCategoria(unaCategoria){	
		return categoria == unaCategoria
	}
	
	method suNombreEs(unNombre){
		return nombre == unNombre
	}
	
	method jugar(jugador,horasJugadas)
	
}

class JuegoViolento inherits Juego{
	
	override method jugar(jugador,horasJugadas){
		jugador.reducirHumor(10,horasJugadas)
	}
}

class JuegoMOBA inherits Juego{
	
	override method jugar(jugador,horasJugadas){
		jugador.comprarSkins(30)
	}
}

class JuegoTerror inherits Juego{
	
	override method jugar(jugador,horasJugadas){
		jugador.suscripcionInfantil()
	}	
}

class JuegoEstrategico inherits Juego{

	override method jugar(jugador,horasJugadas){
		jugador.aumentarHumor(5,horasJugadas)
	}	
	
}



const godOfWar = new JuegoViolento(nombre = "God", categoria = "Base", precio = 200)
const DBZBTK3 = new JuegoViolento(nombre = "Budokai", categoria = "Lucha", precio = 200)
const gtaSa = new JuegoMOBA(nombre = "GTA Sa", categoria = "Mundo Abierto", precio = 200)