//
//  BViewController.swift
//  ComunicaciónHaciaAtrás
//
//  Created by L Daniel De San Pedro on 22/05/18.
//  Copyright © 2018 iOS Lab. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    weak var delegate: ColorSetteable!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func changeColor(_ sender: UIButton)
    {
        var color: UIColor!
        
        switch sender.tag {
        case 1:
            color = UIColor.red
            break
        case 2:
            color = UIColor.green
            break
        case 3:
            color = UIColor.blue
            break
        default:
            color = UIColor.white
            break
        }
        
        guard let delegate = self.delegate else {
            return
        }
        
        delegate.changeBackgroundColor(to: color)
        
        
        self.dismiss(animated: true, completion: nil)
    }

}


protocol ColorSetteable : AnyObject { //Hacemos que el protocolo sólo sea aplicable
    func changeBackgroundColor(to color: UIColor)
}
