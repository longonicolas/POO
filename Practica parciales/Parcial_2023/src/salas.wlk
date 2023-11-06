class Sala {
	
	const nombre
	const dificultad
	
	method nombre() = nombre
	
	method precio(){
		return 10000 + self.extra()
	}
	
	method esSalaDificil(){
		return dificultad > 7
	}
	
	method extra()
	
}

class SalaDeAnime inherits Sala{
	
	override method extra(){
		return 7000
	}
}

class SalaDeHistoria inherits Sala{
	
	const esBasadaEnHechosReales
	
	override method extra(){
		return dificultad * 0.314
	}
	
	override method esSalaDificil(){
		return super() && !esBasadaEnHechosReales
	}
}

class SalaDeTerror inherits Sala{
	
	const sustos
	
	method haySuficientesSustos(){
		return sustos > 5
	}
	
	override method extra(){
		if(self.haySuficientesSustos()){
			return sustos * 0.2
		}
		return 0
	}
	
	override method esSalaDificil(){
		return super() || self.haySuficientesSustos()
	}
	
	
}