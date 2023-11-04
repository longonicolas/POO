import faltanCaramelosException.*
import estadosDeSalud.*

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
		/*const caramelosEntregados = unAdulto.serAsustado(self)
		if(caramelosEntregados == 0){
			throw new Exception(message = "no dio caramelos")
		}
		self.recibirCaramelos(caramelosEntregados)*/
		
		if(unAdulto.serAsustado(self)){
			self.recibirCaramelos(unAdulto.darCaramelos(self))
		}
	}
	
	method recibirCaramelos(cantidad){
		caramelos += cantidad
	}
	
	method tieneMasDeNCaramelos(N){
		return self.caramelos() > N
	}
	
	method alimentarse(unosCaramelos){
		
		const nuevosCaramelos = caramelos - unosCaramelos
		if(nuevosCaramelos < 0) throw new FaltanCaramelosException(message = "insuficientes caramelos")
		
		caramelos -= unosCaramelos
		self.digerirCaramelos(unosCaramelos)
	}
	
	method digerirCaramelos(unosCaramelos){
		
		if(unosCaramelos > 10){
			estadoDeSalud = estadoDeSalud.repercutirse()
			estadoDeSalud.afectarCuerpo(self)
		}
	}
	
	method disminuirActitud(cantidad){
		actitud -= cantidad
	}

}
