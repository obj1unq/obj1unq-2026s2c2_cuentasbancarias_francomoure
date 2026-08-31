object casa {
}

object cuentaCorriente{
  var saldo = 5500  
  
  method depositar(monto){
      costoDeTransaccion = 25
      saldo += monto
  }
  method extraer(monto){
      saldo -= monto
  }
  method getSaldo(){
      return saldo
  }
}

object cuentaGastos{
    var saldo = 650
    
    method depositar(monto){
        
    }
    method extraer(monto){
        
    }
    method getSaldo(){
        return saldo
    }
}

