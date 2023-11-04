import legiones.*
import pocosNiniesException.*

object creadorDeLegion {
	
	method crearLegion(unosNinies){
		if(unosNinies.length() < 2){
			throw new MuyPocosNiniesException(message="minimo 2 niñes para legion")
			}
		return new Legion(miembros = unosNinies)
		}
}
