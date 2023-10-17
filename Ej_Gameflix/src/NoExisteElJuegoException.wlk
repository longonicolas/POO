class NoExisteElJuegoException inherits Exception {
	
	const nombreJuego
	
	override method message(){
		
		return "No existe el juego" + nombreJuego
	}
	
}
