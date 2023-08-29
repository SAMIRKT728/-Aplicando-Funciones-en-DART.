void main() {
  print(saludar());
  print(calculadora(5, 8));
  print(area_circulo(4));
  print(Informacion_persona('samir', 21, 'valledupar'));
  print(converTemp(45));
  print("7.");
  print(NumeroPar(6));
  List<int> listaDeNumeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print("8.");
  cuadrados(listaDeNumeros);
  print(factorial(4));
  print(Descuento(50000, 30));

  print(Contador("zoologico"));
  print(todasAprobadas());
}

saludar() {
  print("2. HOLA BIENVENIDO");
}

calculadora(
  int num1,
  int num2,
) {
  var sum = num1 + num2;
  var rest = num1 - num2;
  var mult = num1 * num2;
  var div = num1 / num2;
  var Resultados =
      // ignore: prefer_adjacent_string_concatenation, prefer_interpolation_to_compose_strings
      "3. la suma de los numeros es : $sum " +
          "\nla Resta de los numeros es : $rest" +
          " \nla multiplicacion de los numeros es : $mult" +
          "  \nla division de los numeros es : $div";

  return Resultados;
}

area_circulo(int radio) {
  const pi = 3.14;
  var Area = pi * radio * radio;
  return "4. El area del circulo es $Area";
}

Informacion_persona(String nombre, int Edad, String ciudad) {
  String Mensaje = "5. Nombre: [$nombre], Edad: [$Edad], Ciudad: [$ciudad]";
  return Mensaje;
}

converTemp(double celsius) {
  double Faren = (celsius * 9 / 5) + 32;
  String Mensaje = "6. $celsius celsius es equivalente a $Faren F";
  return Mensaje;
}

NumeroPar(int num) => (num % 2 == 0) ? true : false;

void cuadrados(List<int> lista) => lista.forEach((numero) {
      int cuadrado = numero * numero;
      print("El cuadrado de $numero es $cuadrado");
    });

int factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    var resultado = n * factorial(n - 1);
    String Mensaje = "El factorial de $n es : $resultado";

    return resultado;
  }
}

Descuento(double monto, double dto) {
  double porcentaje = dto / 100;
  double PrecioFinal = monto - (monto * porcentaje);

  return "11. se debe pagar un total de $PrecioFinal";
}

Contador(String Palabra) {
  int cantidad = Palabra.length;

  return "12. la palabra $Palabra tiene $cantidad caracteres";
}

String todasAprobadas() {
  List<int> listaCalificaciones = [6, 7, 2, 8, 9];
  bool resultado =
      listaCalificaciones.every((calificacion) => calificacion >= 5);
  return "15. $resultado No todas las calificaciones son mayores o iguales a 5  ";
}
