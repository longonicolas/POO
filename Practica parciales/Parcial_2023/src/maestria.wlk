
object amateur{
	
	method lePermiteEscapar(unaSala,unEscapista){
		return !unaSala.esSalaDificil() && unEscapista.hizoMuchasSalas()
	}
	
	method ascenderAEscapista(unEscapista){
		if(unEscapista.hizoMuchasSalas()){
			return profesional
		}
		return self
	}
}

object profesional{
	
	method lePermiteEscapar(unaSala,unEscapista) = true
	
	method ascenderAEscapista(unEscapista){
		return self
	}
}

