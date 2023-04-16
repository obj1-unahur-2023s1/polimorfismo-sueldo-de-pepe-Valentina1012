import categorias.*
import bonos.*

object sofia{
	var categoria
	var bonoResultado
	
	//setters y getters//
	method sueldoNeto()=categoria.neto()*0.3+categoria.neto()

	method categoria()=categoria
	
	method setCategoria(cat){
		categoria=cat
	}
	method bonoResultado()=bonoResultado
	
	method setBonoResultado(bono){
		bonoResultado=bono
	}
	
	method sueldo(){
		return self.sueldoNeto() + bonoResultado.bono(self)
	}
}


object vendedor{
	var neto
	
	method activarAumentoPorMuchasVentas(){
		neto=neto*0.25+20000
	}
	
	method desactivarAumentoPorMuchasVentas(){
		neto=20000
	}
}

object medioTiempo{
	var neto
	method setCategoriaBase(categoria){
		neto=categoria.neto()/2
	}
}

