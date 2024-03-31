//
//  ViewController.swift
//  Ind03_Peram_Venkata_Ramana_Reddy
//
//  Created by OSU APP CENTER on 3/31/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myStateFlag: UIImageView!
    @IBOutlet weak var myStateMap: UIImageView!
    @IBOutlet weak var myStateName: UITextField!
    @IBOutlet weak var myStateArea: UITextField!
    
    
    var stateFlag = UIImage()
    var stateMap = UIImage()
    var stateName: String = ""
    var stateArea: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myStateName.text = stateName
        myStateArea.text = stateArea + " Sq. Miles"
        myStateFlag.image = stateFlag
        myStateMap.image = stateMap
        
    }


}

