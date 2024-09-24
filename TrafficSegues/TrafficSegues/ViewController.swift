//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Tanishq Malik on 24/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        
//        let myButton = UIButton(type: .system)
//        myButton.setTitle("Unwind", for: .normal)
//        view.addSubview(myButton)
//        
//        myButton.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            myButton.widthAnchor.constraint(equalToConstant: 100),
//            myButton.heightAnchor.constraint(equalToConstant: 44)
//        ])
    }
    
    @IBAction func yellowButtonTapped(_ sender: Any){
        if(segueSwitch.isOn){
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButttonTapped(_ sender: Any){
        if(segueSwitch.isOn){
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    
//    @IBAction func unwindToRed(unwindSegue : UIStoryboardSegue){
//        
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
    
    

}

