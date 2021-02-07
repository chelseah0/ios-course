//: [Previous](@previous)
import UIKit

class ViewController: UIViewController {
    
}

var labelA: UILabel!
var labelB: UILabel!

override func viewDidLoad() {
    super.viewDidLoad()
    
    labelA = UILabel()
    labelA.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(labelA)
    
    labelB = UILabel()
    labelB.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(labelB)
    
    // We have to activate our constraints in order to
    NSLayoutConstraint.activate([
        // Here, we can insert all the constraints that we want activated
        labelB.leadingAnchor.constraint(equalTo: labelA.trailingAnchor, constant: 20)
    ])
}

