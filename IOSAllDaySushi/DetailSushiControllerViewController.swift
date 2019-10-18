//
//  DetailSushiControllerViewController.swift
//  IOSAllDaySushi
//
//  Created by Student on 18/10/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class DetailSushiControllerViewController: UIViewController {
    
    var getName = String()
    var getImage = UIImage()
    
    
    @IBOutlet weak var imgImage: UIImageView!
    
    
    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imgImage.image = getImage
        lblName.text! = getName
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
