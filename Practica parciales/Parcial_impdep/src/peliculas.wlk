class Pelicula{
	
	const nombre
	const elenco = #{}
	
	method nombre() = nombre
	
	method presupuesto(){
		return self.sueldoDeElenco() + self.sueldoDeElenco() * 0.7
	}
	
	method sueldoDeElenco(){
		return elenco.sum({artista => artista.sueldo()})
	}
	
	method ganancias(){
		return self.dineroRecaudado() - self.presupuesto()
	}
	
	method dineroRecaudado(){
		return 1000000
	}
	
	method rodar(){
		elenco.forEach({artista => artista.actuar()})
	}
	
	method esBarata(){
		return self.presupuesto() < 500000
	}
}

class PeliculaDeAccion inherits Pelicula{
	
	var vidriosRotos
	
	override method presupuesto(){
		return super() + 1000 * vidriosRotos
	}
	
	method cantidadDeIntegrantes(){
		return elenco.size()
	}
	
	method extra(){
		return 50000 * self.cantidadDeIntegrantes()
	}
	
	override method dineroRecaudado(){
		return super() + self.extra()
	}
}

class PeliculaDeDrama inherits Pelicula{
	
	method letrasEnNombre(){
		return nombre.length()
	}
	
	method extra(){
		return 100000 * self.letrasEnNombre()
	}
	
	override method dineroRecaudado(){
		return super() + self.extra()
	}
}

class PeliculaDeTerror inherits Pelicula{
	
	const cuchos
	
	method extra(){
		return 25000 * cuchos
	}
	
	override method dineroRecaudado(){
		return super() + self.extra()
	}
}

class PeliculaDeComedia inherits Pelicula{
	
	
}
