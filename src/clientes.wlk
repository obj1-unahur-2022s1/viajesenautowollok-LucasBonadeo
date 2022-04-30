/*
 * Clientes: OK
 */
object ludmila {
	method valorKmPactado() = 18
}

object anaMaria {
	var estaEconomicamenteEstable = true 
	
	/*Otra forma mas corta de escribir lo mismo */
	method valorKmPactado() = if(estaEconomicamenteEstable){30}else{25}

	method estaEconomicamenteEstable() {
		return estaEconomicamenteEstable
	}
	
	method cambiarEstadoDeEconomia() {
		estaEconomicamenteEstable = !estaEconomicamenteEstable
	}
} 

object teresa {
	var valorKm = 22
	
	method valorKmPactado() = valorKm

	method nuevoValorKm(unValor) {
		valorKm = unValor
	}
}

// Melina es una cadeta que trabaja para las otras clientas de la remisería.

object melina {
	var trabajandoPara = null
	
	method valorKmPactado() {
		return trabajandoPara.valorKmPactado() - 3
	}
	
	method trabajandoPara() = trabajandoPara
	
	method trabajandoPara(unaClienta) {
		trabajandoPara = unaClienta
	}
}
