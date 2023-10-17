class Juego{
	
	const nombre
	const categoria
	var precio
	var cantidadHorasJugadas
	
	method categoria() = categoria
	method nombre() = nombre
	
	method esDeCategoria(unaCategoria){	
		return categoria == unaCategoria
	}
	
	method suNombreEs(unNombre){
		return nombre == unNombre
	}
	
}

/*const godOfWar = new Juego(nombre = "God", categoria = "Accion", precio = 200)
const DBZBTK3 = new Juego(nombre = "Budokai", categoria = "Lucha", precio = 200)
const gtaSa = new Juego(nombre = "GTA Sa", categoria = "Mundo Abierto", precio = 200)*/