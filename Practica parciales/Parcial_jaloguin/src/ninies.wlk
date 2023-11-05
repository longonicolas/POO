import faltanCaramelosException.*
import estadosDeSalud.*
import asustador.*

class Ninie {
	
	const elementosPuestos = []
	var actitud
	var caramelos
	var estadoDeSalud = sano
	
	method caramelos() = caramelos
	method elementosPuestos() = elementosPuestos
	
	method sustoDeElementos(){
		return elementosPuestos.sum({unElemento => unElemento.cuantoAsusta()})
	}
	
	method capacidadDeSusto(){
		return self.sustoDeElementos() * actitud
	}
	
	method asustar(unAdulto){
		
		if(unAdulto.serAsustado(self)){
			self.recibirCaramelos(unAdulto.darCaramelos(self))
		}
	}
	
	method recibirCaramelos(cantidad){
		caramelos += cantidad
	}
	
	method tieneMasDeNCaramelos(N){
		return caramelos > N
	}
	
	method alimentarse(unosCaramelos){
		
		if(caramelos < unosCaramelos) throw new FaltanCaramelosException(message = "insuficientes caramelos")
		
		self.digerirCaramelos(unosCaramelos)
		caramelos -= unosCaramelos
		
	}
	
	method digerirCaramelos(unosCaramelos){
		
		if(unosCaramelos > 10){
			estadoDeSalud.puedeSeguirComiendo()
			estadoDeSalud = estadoDeSalud.repercutirse()
			estadoDeSalud.afectarCuerpo(self)
		}
	}
	
	method disminuirActitud(cantidad){
		actitud -= cantidad
	}

}

const ninio1 = new Ninie(actitud = 10, caramelos = 20)
