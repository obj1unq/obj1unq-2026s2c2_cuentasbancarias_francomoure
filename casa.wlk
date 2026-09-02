object casa{
	var cuentaDefault = cuentaCorriente
	var mes = 1	
	var totalGastadoEsteMes = 0 /////////////////////
	var porcentajeDeViveres = 40
	var reparaciones = 0

	method gastar(monto){
		//validación
		cuentaDefault.extraer(monto)
		totalGastadoEsteMes += monto
	}

	method validarGastar(monto)??

	method mes(_mes){
		mes = _mes
	}

	method debeHacerReparaciones(){
		return reparaciones > 0
	}

	method tieneViveresSuficientes(){
		return porcentajeDeViveres >= 40
	}

	method registrarRotura(monto){
		reparaciones += monto
	}

	method comprarViveres(porcentaje, calidad){
		//validar
		cuentaDefault.extraer(porcentaje * calidad)
	}

	method estaLaCasaEnOrden(){
		return (debeHacerReparaciones() == false && tieneViveresSuficientes() == false)
	}

}

object cuentaCorriente{

	var saldo = 5000
		
	method depositar(monto){
		sueldo = sueldo + monto
	}

	method extraer(monto){
		sueldo = sueldo - monto
	}
	
	method saldo(){
		return saldo
	}

}

object cuentaGastos{

	var saldo = 12000
	var costoDeposito = 20	

	method depositar(monto){
		self.validarDeposito(monto)           //////////////
		saldo = saldo + monto - costoDeposito
	}
	
	method extraer(monto){
		sueldo = sueldo - monto
	}
	
	method saldo(){
		return saldo
	}

	method validarDeposito(monto){
		if(costoDeposito > monto){
			self.error("debe depositar mas dinero")
		}
	}
}

object cuentaCombinada{
	var cuentaPrimaria = cuentaCorriente
	var cuentaSecundaria = cuentaGastos

	method depositar(monto){
		cuentaPrimaria.depositar(monto)
	}

	method extraer(monto){
			//primero valido que tenga para pagar
			self.validarExtraer(monto)
		
			//cuando se que tengo para pagar, decido como pagar
			if(monto < cuentaPrimaria.saldo()){
				cuentaPrimaria.extraer(monto)
			}else{
				cuentaPrimaria.extraer(monto)
				cuentaSecundaria.extraer(//aca iria lo que falta pagar...) 
			}
	}

	method validarExtraerMonto(monto){
		if(monto > self.saldo()){
			self.error("saldo total insuficiente para pagar")
		}
	}

	method sueldo(){
		
	}
}


