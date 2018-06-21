Instrucciones de uso:

Clonar el repositorio en local

Ejecutar `pod install` desde un terminal para la carga de dependecias del proyecto(Si no tienes instalado cocoapods, por favor, [sigue estas instrucciones](https://cocoapods.org))

Abrir el proyecto desde el icono de xcworkspace una vez instaladas las depedencias

Sustituir en el archivo Constants el string YOUR_API_KEY por la api key del servicio elegido(en mi caso [newsapi.org](https://newsapi.org))

He elegido usar dos bibliotecas de 3os, a saber:

Kingfisher: Para la carga de imágenes más rápido y elegante que implementarlo yo a mano.

Reachability(Implementado en la rama CoreData, que es muy experimental): Para la comprobación del estado de la conexión y actuar en consecuencia para cargar las noticias desde CoreData

Para hacer la app he elegido una arquitectura MVC, pero con cuidado de no convertir el Controlador en un Massive View Controller, ya que toda la lógica de negocio ha sido abstraida a un interactor que se encarga de todo el "trabajo sucio", y dejando al controller sólo tareas de pintado en la vista y poco más. El posible escalado de la app es posible a que cada caso de uso se puede programar en su propio interactor. También uso extensiones para separar un poco más el código de cada vista y tener todo menos acoplado.

Un saludo!



