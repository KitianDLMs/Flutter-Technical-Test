# movies

Proyecto de postulación a Equifax

## Movies App

Este proyecto es el punto de partida para la conexion a una api real (metodos: post, put, get/:id, delete, patch)

* Detalles destacables de la app

- En este proyecto el patron de diseño que mas destaco su uso es el patron singleton, que esta dentro del metodo main, se utiliza para obtener una instancia unica de las preferencias compartidas o shared preferences. SharedPreferences se utiliza como una unica instancia para almacenar datos persistentes, sirve para almacenar el token del login en caso de que existiera en esta app, en el caso de esta app se usa para guardar y obtener(get) la cadena de imagepath. Este patrón tabien se usa en la llamada a la api

- La app utiliza, una estructura de directorios sugerida por clean architecture, especificamente para Flutter

- Lo que no he logrado hasta ahora es realizar una prueba unitaria, aunque creo que es por la forma en la que llamo a la api, ya he consultado con la IA y tampoco a logrado hacer la prueba unitaria