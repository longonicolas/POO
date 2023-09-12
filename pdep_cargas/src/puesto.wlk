import camiones.*
import pdepcargas.*

object rutatlantica{
	
	method cobrar(unCamion){
		return 7000 + 100 * (unCamion.carga() / 1000)
	}
	
	method pasar(unCamion){	
		
		pdepCargas.pagar(self.cobrar(unCamion)) 
		unCamion.peaje(400,75)
		}
		
	
}