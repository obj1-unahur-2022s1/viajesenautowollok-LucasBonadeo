import remiseras.*

object oficina {
	var primeraRemisera = null
	var segundaRemisera = null
	
	method primeraRemisera() = primeraRemisera
	
	method segundaRemisera() = segundaRemisera
	
	method asignarRemiseras(remisera1, remisera2) {
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	
	method cambiarPrimerRemiseraPor(remisera) {
		primeraRemisera = remisera
	}
	
	method cambiarSegundoRemiseraPor(remisera) {
		segundaRemisera = remisera
	}
	
	method intercambiarRemiseras() {
		var remisera1 = primeraRemisera
		var remisera2 = segundaRemisera
		
		self.cambiarPrimerRemiseraPor(remisera2)
		self.cambiarSegundoRemiseraPor(remisera1)
	}
	
	// Si el costo del viaje con la segunda remisera es al menos $30 más barato, retorna la segunda remisera.
	
	method remiseraElegidaParaViaje(cliente, kms) {
		var remiseraElegida = primeraRemisera
		var costoPrimerRemisera = primeraRemisera.precioViaje(cliente, kms)
		var costoSegundaRemisera = segundaRemisera.precioViaje(cliente, kms)
	
		if (( costoPrimerRemisera - costoSegundaRemisera ) > 30 ) {
			remiseraElegida = segundaRemisera
		}
		return remiseraElegida 
	}
}
