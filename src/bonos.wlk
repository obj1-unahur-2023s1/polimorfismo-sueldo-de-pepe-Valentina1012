import categorias.*

object bonoPorcentaje{
	method bono(empleado){
		return empleado.categoria().neto()*0.1
	}
}

object bonoFijo{
	method bono(empleado){
		return 80
	}
}

object bonoNulo{
	method bono(empleado){
		return 0	
	}
}

object bonoDependeFaltas{
	method monto(empleado){
		const faltas= empleado.cantFaltas()
		
		if(faltas==0){
			return 100
		}else if(faltas==1){
			return 50
		}else{
			return 0
		}
	}
}
