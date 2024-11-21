//
//  ViewController.swift
//  SegueApp
//
//  Created by neodiyadin on 8.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""
    
    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var nametext: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        print("viewdidload function called")
        
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewdiddisapper function called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewwilldisapper function called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewwillapper function called")
        nametext.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewdidapper function called")
    }

    @IBAction func nextclicked(_ sender: Any) {
        userName = nametext.text!
        performSegue(withIdentifier: "tosecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tosecondVC" {
            let destinationVC = segue.destination as! secondviewcontroller
            destinationVC.myname = userName
        }
    }
    
}

