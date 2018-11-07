import UIKit

/*:
 ## Estrella de la muerte legacy
 
 El imperio acaba de empezar con la segunda versión de la estrella de la muerte. Como es lógico, entre ambas versiones reutilizan muchos componentes, en particular el sistema de guiado de misiles.
 
 
 - Author:  https://github.com/ochococo/Design-Patterns-In-Swift
 
 
 */
protocol OlderDeathStartSuperLaserAiming {
    var angleV: Double { get }
    var angleH: Double { get }
}

// adaptee
struct DeathStarSuperLaserTarget {
    let angleHorizontal: Double
    let angleVertical: Double
    
    init(angleHorizontal: Double, angleVertical: Double) {
        self.angleHorizontal = angleHorizontal
        self.angleVertical = angleVertical
    }
}

// adapter
struct DeathStarSuperLaserAdapter: OlderDeathStartSuperLaserAiming {
    private let target: DeathStarSuperLaserTarget
    var angleV: Double {
        return target.angleVertical
    }
    var angleH: Double {
        return target.angleHorizontal
    }
    init(_ target: DeathStarSuperLaserTarget) {
        self.target = target
    }
}

// ejemplo de uso

let target = DeathStarSuperLaserTarget(angleHorizontal: 10.0,
                                       angleVertical: 10.0)
let olderFormat = DeathStarSuperLaserAdapter(target)

print(olderFormat.angleH)
print(olderFormat.angleV)
