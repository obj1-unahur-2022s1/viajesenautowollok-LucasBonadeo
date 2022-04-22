// Clientas de la remiseria 

object ludmila {
	method valorKmPactado() = 18
}

object anaMaria {
	var estaEconomicamenteEstable = true 
	
	method valorKmPactado() {
		var valorKm = 30
		if (not estaEconomicamenteEstable) {
			valorKm = 25
		}
		return valorKm
	}
	
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
