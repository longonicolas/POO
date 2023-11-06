class Cupon {
	
	var fueUsado = false
	const porcentajeDeDescuento
	
	method fueUsado() = fueUsado
	method porcentajeDeDescuento() = porcentajeDeDescuento
	
	method usar(){
		fueUsado = true
	}
	
	method serAplicado(unPrecio){
		return unPrecio - unPrecio * porcentajeDeDescuento
	}
}
