class Tarjeta {
	
	const destinatario
	const valorAdjunto
	
	method precio() = 2
	method destinatario() = destinatario
	
	method esCara(){
		return self.precio() + valorAdjunto >= 1000
	}
	
}
