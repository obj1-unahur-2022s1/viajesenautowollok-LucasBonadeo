import clientes.*

// Remiseras

object roxana {
	// Roxana no le agrega valor al precio pactado por km
	method precioViaje(pasajero, km) {
		return km * pasajero.valorKmPactado()
	}
}

object gabriela {
	// Gabriela le agrega un 20% al precio pactado por km
	method precioViaje(pasajero, km) {
		return km * (pasajero.valorKmPactado() * 1.2 )
	}
}

object mariela {
	// Mariela no le agrega valor al precio pactado por km pero tiene un minimo de $50
	method precioViaje(pasajero, km) {
		var precioViaje = km * pasajero.valorKmPactado()
		if (precioViaje < 50) {
			precioViaje = 50
		}
		return precioViaje
	}
}

object juana {
	// Juana le cobra a todos lo mismo, menos de 8 km $100. Sino $200.
	method precioViaje(pasajero, km) {
		var precioViaje = 100
		if (km > 8) {
			precioViaje = 200
		}
		return precioViaje
	}
}

// Lucía es una remisera que hace reemplazos

object lucia {
	var reemplazoDe = null
	
	method precioViaje(pasajero, km) {
		return reemplazoDe.precioViaje(pasajero, km)
	}
	
	method reemplazoDe(unaRemisera) {
		reemplazoDe = unaRemisera
	}
   	
   	method reemplazoDe() = reemplazoDe
}

