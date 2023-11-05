class Regalo {
	
	const precio
	const destinatario
	
	method precio() = precio
	method destinatario() = destinatario
	
	method superaElUmbralDePrecio(umbral){
		return precio > umbral
	}
}
