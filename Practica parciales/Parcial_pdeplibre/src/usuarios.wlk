class Usuario {
	
	const nombre
	var dinero
	var puntos
	var nivel
	var carrito = []
	var cupones = []
	
	method puntos() = puntos
	
	method cantidadDeProductosEnCarrito(){
		return carrito.size()
	}
	
	method agregarAlCarrito(unProducto){
		if(nivel.permiteAgregar(self.cantidadDeProductosEnCarrito())){
			carrito.add(unProducto)
		}
		throw new Exception(message="carrito full")
	}
	
	method precioDelCarrito(){
		return carrito.sum({producto => producto.precio()})
	}
	
	method cuponNoUsado(){
		return cupones.filter({cupon => !cupon.fueUsado()}).anyOne()
	}
	
	method pagar(unPrecio){
		dinero -= unPrecio
	}
	
	method agregarPuntos(unMonto){
		puntos += unMonto * 0.1
	}
	
	method comprarProductos(){
		const cuponSinUsar = self.cuponNoUsado()
		cuponSinUsar.usar()
		const monto = cuponSinUsar.serUsado(self.precioDelCarrito())
		self.pagar(monto)
		self.agregarPuntos(monto)
		carrito.clear()
	}
}
