class Banda {
    const property nombre

    method canon() = 1000000
    method gastoExtra()
    method presupuesto() = self.canon() + self.gastoExtra()

    method popularidad()
}

class Rock inherits Banda{
    var solosDeGuitarra

    override method gastoExtra() = 10000
    override method popularidad() = 100 * solosDeGuitarra
}
class Trap inherits Banda{
    var tieneHielo

    override method gastoExtra() = 0
    override method popularidad(){
        if(tieneHielo){
            return 1000
        }else{
            return 0
        }
    }
    override method canon() = super() * self.popularidad()
}
class Indies inherits Banda{
    var cantidadInstrumentos

    override method gastoExtra() = 500 * cantidadInstrumentos
    override method popularidad() = 3.14 * nombre.size() 
}