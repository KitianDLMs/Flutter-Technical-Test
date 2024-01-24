# movies

Proyecto de postulación a Equifax

## Movies App

Este proyecto es el punto de partida para la conexion a una api real (agregar metodos: post, put, get/:id, delete, patch)

* Detalles destacables de la app

- Esta app utiliza SQFLite para manejar la persisetncia de datos relacionados con peliculas favoritas en una BBDD SQLite, La clase FavMovielist tiene como principal proposito facilitar la interaccion con la base de datos SQLite para las operaciones relacionadas con las películas favoritas

* Otros detalles

- La app cumple con los requerimientos especificados en el documento entregado(Obtiene un listado de peliculas y/o series ordenadas por popularidad y evaluacion, se puede acceder al detalle de cada pelicula y serie y tambien se puede buscar una pelicula o serie por el nombre)

- En cuanto a los requerimientos tecnicos lo unico que me falta es la prueba unitaria

- En este proyecto el patron de diseño que mas destaco su uso es el patron singleton, que esta dentro del metodo main, se utiliza para obtener una instancia unica de las preferencias compartidas o shared preferences. SharedPreferences se utiliza como una unica instancia para almacenar datos persistentes, sirve para almacenar el token del login en caso de que existiera en esta app, en el caso de esta app se usa para guardar y obtener(get) la cadena de imagepath. Este patrón tabien se usa en la llamada a la api

- La app utiliza, una estructura de directorios sugerida por clean architecture, especificamente para Flutter

- Lo que no he logrado hasta ahora es realizar una prueba unitaria, aunque creo que es por la forma en la que llamo a la api, ya he consultado con la IA y tampoco a logrado hacer la prueba unitaria; En este test unitario el objetivo es verificar el correcto funcionamiento de la funcion searchlistfunciton mas especificamente