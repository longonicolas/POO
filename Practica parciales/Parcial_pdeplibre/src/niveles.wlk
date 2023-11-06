class Nivel {
	
	const nivelSiguiente
	const cantidadDeProductosQuePermite
	
	method cantidadDeProductosQuePermite() = cantidadDeProductosQuePermite
	
	method subirDeNivel(unUsuario){
		if(self.puedeSubirDeNivel(unUsuario)){
			return nivelSiguiente
		}
		return self
	}
	
	method permiteAgregar(productosEnCarrito){
		return cantidadDeProductosQuePermite > productosEnCarrito
	}
	
	method puedeSubirDeNivel(unUsuario)
	
}

object bronce inherits Nivel(nivelSiguiente = plata, cantidadDeProductosQuePermite = 1){
	
	override method puedeSubirDeNivel(unUsuario){
		return unUsuario.puntos() >= 5000
	}
	
}

object plata inherits Nivel(nivelSiguiente = oro, cantidadDeProductosQuePermite = 5){
	
	override method puedeSubirDeNivel(unUsuario){
		return unUsuario.puntos() >= 15000
	}
}

object oro{
	
	method permiteAgregar(productosEnCarrito) = true
	
	method puedeSubirDeNivel(unUsuario) = false
}
