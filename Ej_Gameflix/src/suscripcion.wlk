
class Suscripcion{
	
	const categoria
	var precio
	
	method precio() = precio
	method categoria() = categoria
	
	method permiteJugar(unJuego){
		unJuego.esDeCategoria(categoria)
	}
}

const premium = new Suscripcion(categoria = "Premium", precio = 50)
const base = new Suscripcion(categoria = "Base", precio = 25)
const infantil = new Suscripcion(categoria = "Infantil", precio = 10)
const prueba = new Suscripcion(categoria = "Prueba", precio = 0)