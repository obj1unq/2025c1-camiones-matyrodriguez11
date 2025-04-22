object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var estaEnAuto = true
	
	method peso() = 500
	method peligrosidad() = self.calPeligrosidad()
	
	method calPeligrosidad() {
		if (estaEnAuto){
			return 15
		} else {
			return 30
		}
	}

	method estaEnAuto(_estEnAuto) {
		estaEnAuto = _estEnAuto
	}
}

object paqLadrillos {
	var cantLadrillos  = 0
	const pesoLadrillo = 2
	method cargarLadrillos(cantidad) {
		cantLadrillos = cantidad
	}

	method peso() = pesoLadrillo * cantLadrillos

	method peligrosidad() = 2
}

object arenaGranel {
	var peso = 0

	method ingresarPeso(peso_) {
		peso = peso_
	}

	method peso() = peso

	method peligrosidad() = 1
}

object bateriaAntiaerea {
	var estado = "sin misiles"

	method peso() = self.calPeso()

	method peligrosidad() = self.calPeligrosidad()

	method estado(estado_) {
		estado = estado_
	}

	method calPeligrosidad() {
		if (estado == "con misiles"){
			return 100
		} else {
			return 0
		}
	}

	method calPeso() {
		if (estado == "con misiles"){
			return 300
		} else {
			return 200
		}
	}
}

object contenedorPortuario {
	const contenido = []
	var peso = 100

	method mostrarContenido() = contenido

	method declararContenido(contenido_) {
		contenido.clear()
		contenido.addAll(contenido_)
	}

	method calPeligrosidad() {
		if (contenido.size() == 0){
			return 0
		} else {
			return peligrosidadContenido()
		}
	  
	}

	method peligrosidadContenido() = contenido.max{cosa => cosa.peligrosidad()}
}
