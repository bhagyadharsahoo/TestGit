//
//  ViewController.swift
//  acesstest
//
//  Created by Sidhartha Das on 05/08/21.
//

import UIKit
import TestFramework

class Num : Appartment{
    
}
//class num1 : Car{
//
//}
var acess :String = "bhagya"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
       var v = Car()
        var b = Appartment()
        
        v.drive()
        b.people()
    }
    


}


