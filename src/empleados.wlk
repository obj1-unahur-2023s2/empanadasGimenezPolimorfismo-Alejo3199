import duenio.*
object galvan {
	var property sueldo = 150000
	var totalDinero = 0
	var totalDeuda = 0

	method cobrarSueldo() {
		totalDinero += 0.max ( sueldo - totalDeuda)
		totalDeuda = 0.max (totalDeuda - sueldo )
	}
	method gastar(cuanto){
		totalDeuda += 0.max (cuanto - totalDinero )
		totalDinero = 0.max ( totalDinero - cuanto)
	} 
	method totalDeuda() = totalDeuda
	method totalDinero() = totalDinero
}
object baigorria {
	var cantidadEmpanadasVendidas = 0
	const montoPorEmpanada = 150
	var totalCobrado = 0
	
	method venderEmpanadas(cantidadEmpanadasAVender) {
		cantidadEmpanadasVendidas += cantidadEmpanadasAVender
	}
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
		cantidadEmpanadasVendidas = 0
	}
	method totalCobrado() = totalCobrado 
}
