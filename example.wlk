// MENSAJEROS DE PELICULA PARTE 1
object puenteDeBrooklyn{
  method pesaMenosDe1Tonelada(mensajero, paquete){
    return mensajero + paquete <= 1000
  }
  method puedePasar(paquete, mensajero){
    return paquete.estaPago() and self.pesaMenosDe1Tonelada(paquete, mensajero)
  }
}
object LaMatrix{
  method puedeHacerUnaLlamada(mensajero){
    return mensajero.tieneCredito()
  }
  method puedeEntregarElPaquete(mensajero, paquete){
      return self.puedeHacerUnaLlamada(mensajero) and paquete.estaPago()
  }
}
object roberto{
  var transporte = camion
  const peso = 90 + transporte
  method cambiarTransporte(vehiculo){
    transporte = vehiculo
  }
  method peso(){
    return peso
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
  method peso(){
    return 0
  }
  method tieneCredito(){
    return 
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

}