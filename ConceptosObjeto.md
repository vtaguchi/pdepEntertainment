# Conceptos

## Super Clase
Se implementó el concepto de super clase en _Banda_ ya que las clases _Rock_, _Trap_ e _Indies_ tienen comportamiento en común. 

## Herencia
Las clases _Rock_, _Trap_ e _Indies_ heredan de _Banda_, asi como también _Vip_ de _Asistente_.

Se decidio representar a los asistentes vip con una clase que herede de _Asistente_ ya que comparte su comportamiento general, pero 
incorpora un descuento individual y redefinen los métodos _montoAPagar()_ y _bonificar()_.

## Clases
Se usó el concepto de clases en los siguientes casos ya que múltiples objetos comparten un mismo comportamiento, pero mantienen su propio estado:
- Banda
- Rock
- Trap
- Indies
- Asistente
- Vip
- Entrada

## Objetos
Se usó el concepto de objeto en los siguientes casos para modelar comportamientos específicos:
- productora
- noPuedePagarEntrada

## Polimorfismo
En distintos métodos de _productora_ se utiliza asistente polimorficamente, es decir, no nos interesa saber si es fan o vip ya
que tenemos definido comportamientos para cada tipo. También se utilizó para _bandas_, ya que todas entienden el mismo mensaje pero
tienen comportamientos distintos. Por ejemplo, _presupuesto()_ usa _canon()_ y _gastoExtra()_ que dependen del tipo de banda.

## Encapsulamiento
Se usó el concepto de encapsulamiento para no exponer el estado de los objetos en los siguientes casos:
- dineroDisponible
- asistentes
- bandas

Se utilizó _var property_ para exponer y cambiar el estado de las variables:

- impuesto

Se utilizó _const property_ para únicamente exponer el estado pero no cambiar el valor de las variables:

- banda
- fecha
- entradas
- nombre

## Responsabilidad
En _Entrada_, necesitamos el impuesto de la productura pero es su responsabilidad saber cuál es. Además, se consideró que
el método _esDelAnioPasado_ no era responsabilidad de _Asistente_, asi que se incorporó en esta clase.

En _Asistente_ se incoporaron algunos métodos que _productora_ necesitaba pero no eran de su responsabilidad.