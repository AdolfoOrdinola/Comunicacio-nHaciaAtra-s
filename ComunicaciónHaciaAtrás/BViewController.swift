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
        var color : UIColor!
        switch sender.tag {
        case 1:
            color = .red
        case 2:
            color = .green
        case 3:
            color = .blue
        default:
            color = .white
        }
        guard let delegate = self.delegate else
        {
            return
        }
        delegate.changeBackGroundColor(to: color)
        self.dismiss(animated: true, completion: nil)
    }

}

protocol ColorSetteable: AnyObject //Esto hace que solo sea aplicable a clases
{
    func changeBackGroundColor(to color: UIColor)
}
