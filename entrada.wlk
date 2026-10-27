import productora.*
class Entrada{
    const property banda
    const property fecha //tiene que tener formato fecha

    method precioPublico() = 1000 + productora.impuesto()

    method esDelAnioPasado() {
        const fechaHoy = new Date()
        return fecha.year() == fechaHoy.year() - 1        
    }
}