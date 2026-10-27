class Asistente {

    const property entradas = #{} // es el HISTORIAL de las entradas compradas
    var dineroDisponible

    method entradasAnioAnterior() = entradas.filter{entrada => entrada.esDelAnioPasado()}

    method nombreBandas() = entradas.map{entrada => entrada.banda().nombre()}.asSet()

    method agregarEntrada(entrada) {entradas.add(entrada)}

    method montoAPagar(entrada) = entrada.precioPublico()

    method puedeComprarEntrada() = dineroDisponible > 0 

    method comprarEntrada(entrada){

        if(!self.puedeComprarEntrada()){
            throw noPuedePagarEntrada
        }
        dineroDisponible -= self.montoAPagar(entrada)
        self.agregarEntrada(entrada)

    }

    method totalEntradas() = entradas.size()

    method cantEntradasBanda(banda) = entradas.filter{entrada => entrada.banda() == banda}.size()

    method dineroTotalEntradas() = entradas.sum{entrada => entrada.precioPublico()}

    method bonificar(){}
}

class Vip inherits Asistente{

    var property descuento

    override method bonificar(){
        descuento = (descuento + 1).min(100)
    }

    override method montoAPagar(entrada) = entrada.precioPublico() * (1 - descuento / 100)
}
// no puedo hacerlo como objeto porque se modifican en TODOS los objetos

// excepcion
object noPuedePagarEntrada inherits Exception(message = "Saldo insuficiente para pagar la entrada") {}