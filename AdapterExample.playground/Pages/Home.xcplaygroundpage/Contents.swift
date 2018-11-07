
/*:
 
 # Design Patterns
 
 ![Tabla de Patrones de Diseño](DesignPatternsTable.png)
 [Vince Huston blog - ejemplos en C++ y Java]:
 http://www.vincehuston.org/dp/
 
 Los patrones de diseño nos ayudan a resolver problemas comunes en el desarrollo de software. Podemos clasificarlos en tres grupos:
 
 * Creacionales:
 Corresponden a patrones de diseño de software que solucionan problemas de creación de instancias. Nos ayudan a encapsular y abstraer dicha creación. (Builder, Factory....)
 
 * Estructurales:
 Son los patrones de diseño software que solucionan problemas de composición (agregación) de clases y objetos (Adapter, Decorator...)
 
 * Comportamiento:
 Se definen como patrones de diseño software que ofrecen soluciones respecto a la interacción y responsabilidades entre clases y objetos, así como los algoritmos que encapsulan (Command, Interpreter...)
 
 ## Adapter Design Pattern
 
 ![TheAdapter](adapter.png)
 
 ![Adapter](adaptadorUSBC-VGA.jpeg)
 
 - Tipo: Structural Pattern
 
 - Alias: conocido como Wrapper
 
 - Motivaciones:
 Trasnformar la interfaz de un objeto existente en otra que los clientes puedan utilizar. Con esto conseguimos que una clase que no puede utilizar la primera, pueda usarla a través de la segunda.
 La definición del patrón Adapter dice que cambia la interfaz de una clase por otra interfaz para que podamos utilizarla desde un cliente. Hay que entender que la clase a la que queremos cambiar la interfaz tiene la funcionalidad que necesitamos pero no cumple la interfaz que requiere nuestra clase cliente.

 
 - Estructura:
 
 ![Adapter Estructura](AdapterEstructura.jpg)
 
 - Participantes:
    * Target: define la interfaz específica que el cliente usa
    * Client: interactúa con los objetos según la interfaz del target
    * Adaptee: define una interfaz existente que necesita ser adaptada
    * Adapter: adapta la interfaz de Adaptee a la interfaz de destino
 
 - Patrones similares o relacionados:
    * Decorator
    * Facade
 
 
 ## Demos
 * [Eventos](AdapterEvents)
 * [Estrella de la muerte legacy](DeathStartAdapter)
 * [Animales](JumpAdapter)
 
 
 ### Bibliografía y referencias:
 * http://design-patterns-with-uml.blogspot.com/2013/02/adapter-pattern.html
 * http://designcodetips.blogspot.com
 * https://www.amazon.es/Design-Patterns-Object-Oriented-professional-computing/dp/0201633612
 * https://www.amazon.es/First-Design-Patterns-Brain-Friendly/dp/0596007124/ref=pd_lpo_sbs_14_img_2?_encoding=UTF8&psc=1&refRID=VJWRKF3G4Z72TWYDDJGR
 * https://gizmodo.com/this-is-the-actual-hack-that-saved-the-astronauts-of-th-1598385593
 
 ### Author:
 Juan Antonio Martin - @byjuanamn
 
 */

//: [Next](@next)
