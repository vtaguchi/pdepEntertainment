object productora{
    const asistentes = #{}
    const bandas = #{}
    var property impuesto = 0

    method agregarAsistente(asistente){asistentes.add(asistente)}

    method agregarBanda(banda){bandas.add(banda)}

    method gananciasTotales() = asistentes.sum{asistente => asistente.dineroTotalEntradas()} - bandas.sum{banda => banda.presupuesto()}

    method cantidadEntradasVendidas() = asistentes.sum{asistente => asistente.totalEntradas()}

    method bandaMasPopular() = bandas.max{banda => asistentes.sum{asistente => asistente.cantEntradasBanda(banda)}}

    method bonificar(){
        asistentes.forEach{asistente => asistente.bonificar()}
    }
}