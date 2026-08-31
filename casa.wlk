object casa {
}

object cuentaCorriente{
  var saldo = 5500  
  
  method depositar(monto){
      costoDeTransaccion = 25
if(monto >= costoDeTransaccion){
        return error"debe depositar mas que 25"
      }
      saldo += monto
  }
  method extraer(monto){
      saldo -= monto
  }
  method saldo(){
        return saldo
  }
}

object cuentaGastos{
    var saldo = 650
    
    method depositar(monto){
        costoDeTransaccion = 25
        if(monto >= costoDeTransaccion){
          return error"debe depositar mas que 25"
        }
        saldo -= monto
      }
    method extraer(monto){
        
    }
    method saldo(){
        return saldo
  }
}

object cuentaCombinada{
var cuentaPrimaria = cuentaCorriente
var cuentaSecundaria = cuentaGastos

  method depositar(monto){
      costoDeTransaccion = 25
      if(monto >= costoDeTransaccion){
        return error"debe depositar mas que 25"
      }
      saldo += monto
  }
  method extraer(monto){
      saldo -= monto
  }
  method saldo(){
      if((cuentaPrimaria.saldo() + cuentaSecundaria.saldo()) < 0){
        return 0
      }else{
        return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
  }
}

