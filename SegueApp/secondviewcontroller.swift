//
//  secondviewcontroller.swift
//  SegueApp
//
//  Created by neodiyadin on 8.08.2024.
//

import UIKit

class secondviewcontroller: UIViewController {
    
    @IBOutlet weak var mylabelsecond: UILabel!
    @IBOutlet weak var namelabel: UILabel!
    
    var myname = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        namelabel.text = myname
        
    }
    



}
