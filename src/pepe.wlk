import categorias.*
import bonos.*

object pepe{
	var categoria
	var bonoPresentismo
	var bonoResultado
	var cantFaltas
	
	//setters y getters//
	
	method sueldoNeto()=categoria.neto()

	method categoria()=categoria
	
	method setCategoria(cat){
		categoria=cat
	}
	method cantFaltas()=cantFaltas
	
	method setCantFaltas(faltas){
		cantFaltas=faltas
	}
	
	method bonoPresentismo()=bonoPresentismo
	
	method setBonoPresentismo(bono){
		bonoPresentismo=bono
	}
	
	method bonoResultado()=bonoResultado
	
	method setBonoResultado(bono){
		bonoResultado=bono
	}
	
	method sueldo(){
		return self.sueldoNeto() + bonoPresentismo.monto(self) + bonoResultado.bono(self)
	}
	
}
