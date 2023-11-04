class Legion {
	
	const miembros = #{}
	
	method capacidadDeSusto(){
		return miembros.map({unMiembro => unMiembro.capacidadDeSusto()}).sum()
	}
	
	method caramelos(){
		return miembros.sum({unMiembro => unMiembro.caramelos()})
	}
	
	method lider(){
		return miembros.max({unMiembro => unMiembro.capacidadDeSusto()})
	}
	
	method asustar(unAdulto){
		if(unAdulto.serAsustado(self)){
			self.lider().recibirCaramelos(unAdulto.darCaramelos())
		}
	}	
}
