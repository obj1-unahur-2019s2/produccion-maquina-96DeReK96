object registroProduccion {
	var produccionPorDia = [53,18,49,62,33,39]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}
	
	method algunDiaSeProdujo(cantidad) {
		return produccionPorDia.any({ pd => pd == cantidad })
	}
	method algunDiaSeProdujo_ok(cantidad) {
		return produccionPorDia.contains(cantidad)
	}
	method maximoValor() {
		return produccionPorDia.max()
	}
	
	method valorDeProduccionesPares() {
		//return produccionPorDia.any({ pd => pd % 2 == 0})
		return produccionPorDia.filter({ pd => pd.even()})
	}
	method valoresDeProduccionPares(num1, num2) {
		return produccionPorDia.all({ pd => pd.between(num1, num2)})
	}
	method produccionesSuperioresA(n) {
		return produccionPorDia.filter({ pd => pd > n })
	}
	method produccionesSumando(n) {
		// quiero la lista que se obtiene
		// aplicando una operaciom sobre cada elemento: map
		return produccionPorDia.map({pd => pd + n})
	}
	method totalProducido() {
		return produccionPorDia.sum()
	}
	
	method ultimoValorDeProduccion() {
		return produccionPorDia.last()
	}
	method cantidadProduccionesMayorAlaPrimera() {
		return produccionPorDia.count({ pd => pd > produccionPorDia.first() })
	}
	method cantidadProduccionesMayorAlaPrimera_con_variable() {
		
		var laPrimera = produccionPorDia.first()
		return produccionPorDia.count({ pd => pd > laPrimera})
	}
}
