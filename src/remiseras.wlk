import clientes.*

// Roxana no le agrega valor al precio pactado por km

object roxana {
	
	method precioViaje(pasajero, km) {
		return km * pasajero.valorKmPactado()
	}
}

// Gabriela le agrega un 20% al precio pactado por km

object gabriela {
	
	method precioViaje(pasajero, km) {
		return km * (pasajero.valorKmPactado() * 1.2 )
	}
}

// Mariela no le agrega valor al precio pactado por km pero tiene un minimo de $50

object mariela {
	/*Perfecto usando el max */
	method precioViaje(pasajero, km) {
		return 50.max(km * pasajero.valorKmPactado())
	}
}

// Juana le cobra a todos lo mismo, si es menos de 8 km $100. Sino $200.

object juana {
	/* Fijate de usar la forma corta */
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

