//: [Previous](@previous)
/*:
 ## Eventos
 
 En este ejemplo partimos del escenario en el que estamos desarrollado una solución para crear un calendario con la funcionalidad de crear eventos. Podría ser una App para iOS y como requisito podríamos tener que integrar nuestros eventos con el calendar del dispositivo....esto nos obliga a integrarnos con EventKit.
 En el ejemplo creamos un modelo llamado Event, en este caso implementaremos un Adapter para wrappear el modelo del framework y hacerlo compatible con el nuestro
 
 - Author:  https://rubygarage.org/blog/swift-design-patterns
 
 
 */
import Foundation
import EventKit

protocol Event {
    var title: String { get }
    var startDate: String { get }
    var endDate: String { get }
}
extension Event {
    var description: String {
        return "Evento: \(title), inicio: \(startDate), fin: \(endDate)"
    }
}

struct LocalEvent: Event {
    var title: String
    var startDate: String
    var endDate: String
    init(title: String, startDate: String, endDate: String) {
        self.title = title
        self.startDate = startDate
        self.endDate = endDate
    }
}

// Adapter
class EKEventAdapter: Event {
    private var event: EKEvent
    
    private lazy var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy HH:mm"
        return dateFormatter
    }()
    
    var title: String {
        return event.title
    }
    var startDate: String {
        return dateFormatter.string(from: event.startDate)
    }
    var endDate: String {
        return dateFormatter.string(from: event.endDate)
    }
    
    init(event: EKEvent) {
        self.event = event
    }
}

//: Uso
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MM/dd/yyyy HH:mm"

let eventStore = EKEventStore()
let event = EKEvent(eventStore: eventStore)
event.title = "NSPresenter - Design Patterns"
event.startDate = dateFormatter.date(from: "11/07/2018 19:00")
event.endDate = dateFormatter.date(from: "11/07/2018 20:00")
event.description


let adapter = EKEventAdapter(event: event)
adapter.description

let miEvento = adapter
miEvento.description



//: [Next](@next)
