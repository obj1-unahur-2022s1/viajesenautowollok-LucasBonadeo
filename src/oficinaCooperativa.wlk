import remiseras.*
import clientes.*


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
		primeraRemisera = segundaRemisera
		segundaRemisera = primeraRemisera
	}
	
	method remiseraElegidaParaViaje(cliente, kms) {
		var remiseraElegida = primeraRemisera
		var costoPrimerRemisera = primeraRemisera.precioViaje(cliente, kms)
		var costoSegundaRemisera = segundaRemisera.precioViaje(cliente, kms)
		// Si el costo del viaje con la segunda remisera es al menos $30 más barato, retorna la segunda remisera.
		if (( costoPrimerRemisera - costoSegundaRemisera ) > 30 ) {
			remiseraElegida = segundaRemisera
		}
		return remiseraElegida 
	}
}
