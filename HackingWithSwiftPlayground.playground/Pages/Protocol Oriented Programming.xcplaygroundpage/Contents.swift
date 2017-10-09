//: [Previous](@previous)

/*:
 # Interfaces
 * Only events, delegates, properties, and methods can exist
 * Classes can implement multiple interfaces
 * Interfaces would be how two objects talk with one another in object-oriented programming
 
 # Abstract Classes
 * Ability to specify default implementations of methods
 * Have slightly more control in how 'blueprint' methods are called
 * Able to provide behaviors related/unrelated to the interface
 * Can only subclass one abstract class
 
 ****  VS  ****
 
 # Protocol Oriented Programming (POP)
 * Traits - A distinguishing quality or characteristic
 * Abilities - The concept of extending protocols to give them default implementations
 
 Traits can and should have abilities. Protocols can act as a traits or an interface.
 We want to create protocols that represent traits our objects can have. We then want to
 give our traits abilities through the use of protocol extensions and constraints.
 In Swift, protocols tend to lend themselves more to the idea of a trait (a characteristic
 or quality of an object) rather than just to an interface (a contract for common communication
 for an object).
 
 */

import Foundation
import UIKit
import PlaygroundSupport

//: Example of taking a POP approach
public protocol canBlockView {
    var view: UIView! { get set }
    func blockUI()
    func unblockUI()
}

public extension canBlockView {
    func blockUI() {
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        let blockingView = UIView(frame: .zero)
        
        blockingView.tag = 100
        activityIndicator.tag = 101
        
        blockingView.backgroundColor = .black
        blockingView.alpha = CGFloat(0.85)
        
        activityIndicator.color = .white
        
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        blockingView.translatesAutoresizingMaskIntoConstraints = false
        
        blockingView.addSubview(activityIndicator)
        view.addSubview(blockingView)
        
        NSLayoutConstraint.activate(
            constraints(for: activityIndicator, on: blockingView) +
                constraints(for: blockingView)
        )
        
        activityIndicator.startAnimating()
    }
    
    func unblockUI() {
        if let blockingView = self.view.viewWithTag(100), let activityIndicator = self.view.viewWithTag(101){
            blockingView.removeFromSuperview()
            activityIndicator.removeFromSuperview()
        }
    }
    
    private func constraints(for indicator: UIActivityIndicatorView, on blockingView: UIView) -> [NSLayoutConstraint] {
        return [
            indicator.centerXAnchor.constraint(equalTo: blockingView.centerXAnchor),
            indicator.centerYAnchor.constraint(equalTo: blockingView.centerYAnchor)
        ]
    }
    
    private func constraints(for blockingView: UIView) -> [NSLayoutConstraint] {
        return [
            blockingView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            blockingView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            blockingView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            blockingView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        ]
    }
}

class ViewContainer: canBlockView {
    var view: UIView!
    
    init(view: UIView) {
        self.view = view
    }
}

let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 640))
view.backgroundColor = .white
PlaygroundPage.current.liveView = view

let container = ViewContainer(view: view)

container.blockUI()
let exampleNetworkCallTimer = Timer.scheduledTimer(withTimeInterval: 5, repeats: false, block: { _ in
    container.unblockUI()
})


//: [Next](@next)
