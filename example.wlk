
// MENSAJEROS DE PELICULA PARTE 1
object puenteDeBrooklyn{
  method pesaMenosDe1Tonelada(mensajero, paquete){
    return mensajero.peso() + paquete.peso() <= 1000
  }
  method puedeEntregarElPaquete(paquete, mensajero){
    return paquete.estaPago() and self.pesaMenosDe1Tonelada(paquete, mensajero)
  }
}
object laMatrix{
  method puedeHacerUnaLlamada(mensajero){
    return mensajero.tieneCredito()
  }
  method puedeEntregarElPaquete(mensajero, paquete){
      return self.puedeHacerUnaLlamada(mensajero) and paquete.estaPago()
  }
}
object roberto{
  var transporte = camion
  const peso = 90
  method cambiarTransporte(vehiculo){
    transporte = vehiculo
  }
  method peso(){
    return peso + transporte.peso()
  }
  method tieneCredito(){
    return false
  }
}
object chuckNorris{
  const peso = 80
   method peso(){
    return peso
   }
   method tieneCredito(){
    return true
   }
}
object neo{
  var credito = false
  method cargarCredito(){
    credito = true
  }
  method peso(){
    return 0
  }
  method tieneCredito(){
    return credito
  }
}
object camion{
  var peso = 500
  method pesoPorAcoplado(cantidadDeAcoplados){ 
    peso = cantidadDeAcoplados * 500
  }
  method peso(){
    return peso
  }
}
object bicicleta{
   method peso(){
    return 5
   }
}
object unPaquete{
  var peso = 0
  var pagoAprobado = false
  method aprobarPago(){
    pagoAprobado = !pagoAprobado
  }
  method cambiarPaquete(otroPaquete){
    peso = otroPaquete.peso()
  }
  method peso(){
    return peso
  }
  method estaPago(){
    return pagoAprobado
  }
  method precio(){
    return 50
  }
}

// MENSAJERIA 2DA PARTE

object empresaDeMensajeria{
  const mensajeros = []
  method contratarMensajero(mensajero){
    mensajeros.add(mensajero)
  }
  method despedirMensajero(mensajero){
    mensajeros.remove(mensajero)
  }
  method despedirATodos(){
   // mensajeros.removeAll(mensajeros)
    mensajeros.clear()
  }
  method laMensajeriaEsGrande(){
    return
    mensajeros.size() > 2
  }
  method primerMensajeroDeLaLista(){ 
    return mensajeros.first()
  }
  method elPrimerEmpleadoDeLaListaPuedeEntregarEl(paquete){
    return null.puedeEntregarElPaquete(paquete, self.primerMensajeroDeLaLista())
  }
  method ultimoMensajero(){
    return 
    mensajeros.last()
  }
  method pesoUltimoMensajero(){
    self.ultimoMensajero().peso()
  }
  method mensajeros(){
    return mensajeros
  }
}
//TERCERA PARTE MENSAJERIA RECARGADA
object paquetito{
  method estaPago(){
    return true
 }
  method precio(){
   return 0
 }
}
object paquetonViajero{
   var destinos = 0
   var pagos = 0
   method modificarDestinos(cantDestinos){
    destinos = cantDestinos
   }
   method realizarUnPago(cantidadAPagar){
    pagos += cantidadAPagar
   }
   method precio(){
    return destinos * 100
   }
   method estaPago(){
    return pagos == 12
   }
   
}
