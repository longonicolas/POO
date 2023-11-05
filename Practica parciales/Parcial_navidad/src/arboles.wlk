import noHayEspacioException.*
import regalos.*
import tarjetas.*


class Arbol{
	
	const regalos
	const tarjetas
	const adornos
	
	method agregarRegalo(unRegalo){
		
		if(!self.hayEspacio()) throw new NoHayEspacioException(message="Arbol full")
		
		regalos.add(unRegalo)
	}
	
	method cantidadDeRegalos(){
		return regalos.size()
	}
	
	method hayEspacio(){
		return self.capacidadParaRegalos() > self.cantidadDeRegalos()
	}
	
	method beneficiarios(){
		return tarjetas.map({tarjeta => tarjeta.destinatario()}) + regalos.map({regalo => regalo.destinatario()})
	}
	
	method costoTotalDeRegalos(){
		return regalos.sum({regalo => regalo.precio()})
	}
	
	method importanciaDeAdornos(){
		return adornos.sum({adorno => adorno.importancia()})
	}
	
	method hayRegaloTeQuierenMucho(umbralDePrecio){
		return regalos.any({unRegalo => unRegalo.superaElUmbralDePrecio(umbralDePrecio)})
	}
	
	method cantidadDeRegalosTeQuierenMucho(umbralDePrecio){
		return regalos.filter(self.hayRegaloTeQuierenMucho(umbralDePrecio)).size()
	}
	
	method hayTarjetaCara(){
		return tarjetas.any({tarjeta => tarjeta.esCara()})
	}
	
	method arbolPortentoso(umbralDePrecio){
		return self.cantidadDeRegalosTeQuierenMucho(umbralDePrecio) > 5 || self.hayTarjetaCara()
	}
	
	method adornoMasPesado(){
		return adornos.max({unAdorno => unAdorno.peso()})
	}
	
	method capacidadParaRegalos()
}

class ArbolNatural inherits Arbol{
	
	const vejez
	const tamanioDeTronco
	
	override method capacidadParaRegalos(){
		return vejez * tamanioDeTronco
	}
}

class ArbolArtificial inherits Arbol{
	
	const varas
	
	override method capacidadParaRegalos() = varas
}