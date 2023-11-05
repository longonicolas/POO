object impdep {
	
	const artistas = #{}
	const peliculas = []
	
	method artistaMejorPago(){
		return artistas.max({artista => artista.sueldo()})
	}
	
	method nombresDePelis(){
		return peliculas.map({pelicula => pelicula.nombre()})
	}
	
	method pelisEconomicas(){
		return peliculas.filter({peli => peli.esBarata()})
	}
	
	method nombreDepelisEconomicas(){
		return self.pelisEconomicas().nombreDePelis()
	}
	
	method gananciasDePelisEconomicas(){
		return self.pelisEconomicas().sum({peli => peli.ganancias()})
	}
	
	method recategorizarArtistas(){
		artistas.forEach({unArtista => unArtista.recategorizar()})
	}
}
