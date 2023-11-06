class Producto {
	
	const nombre
	const precioBase
	
	method precio(){
		return precioBase + precioBase * 0.21
	}
}

class Mueble inherits Producto{
	
	override method precio(){
		return super() + 1000
	}
}

class Indumentaria inherits Producto{
	
	var esDeLaTemporada
	
	method esDeLaTemporada() = esDeLaTemporada
	
	override method precio(){
		if(self.esDeLaTemporada()){
			return super() + precioBase * 0.1
		}
		return super()
	}
}

class Ganga inherits Producto{
	
	override method precio(){
		return 0
	}
	
}

