object gimenez {
	var dinero = 3000000
	method dinero() = dinero
	method pagarA(unEmpleado) {
		dinero -= unEmpleado.sueldo()
		unEmpleado.cobrarSueldo()
	}
}