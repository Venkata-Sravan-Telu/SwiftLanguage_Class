//
//  ViewController.swift
//  animations
//
//  Created by Telu,Venkata Sravan on 3/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var happyButton: UIButton!
    
    @IBOutlet weak var sadButton: UIButton!
    
    @IBOutlet weak var angryButton: UIButton!
    
    @IBOutlet weak var shakemeButton: UIButton!
    
    @IBOutlet weak var showButton: UIButton!
    
    @IBAction func happyAction(_ sender: UIButton) {
        updateAndAnimate("happy")
    }
    
    @IBAction func sadAction(_ sender: UIButton) {
        updateAndAnimate("sad")
    }
    
    @IBAction func angryAction(_ sender: UIButton) {
        updateAndAnimate("angry")
    }
    
    @IBAction func shakemeAction(_ sender: UIButton) {
        var w = imageView.frame.width
        w+=40
        var h = imageView.frame.height
        h+=40
        let x = imageView.frame.origin.x-20
        let y = imageView.frame.origin.y-20
        
        let rect = CGRect(x: x, y: y, width: w, height: h)
        UIView.animate(withDuration: 1, delay: 0,usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
            self.imageView.frame = rect
        })
        
    }
    
    @IBAction func showAction(_ sender: UIButton) {
        UIView.animate(withDuration: 1, animations:{
            self.imageView.center.x = self.view.center.x
            self.happyButton.center.x = self.view.center.x
            self.sadButton.center.x = self.view.center.x
            self.angryButton.center.x = self.view.center.x
            self.shakemeButton.center.x = self.view.center.x
        })
        showButton.isEnabled = false
    }
    override func viewDidAppear(_ animated: Bool) {
        imageView.frame.origin.x = view.frame.maxX
        
        happyButton.frame.origin.x = view.frame.width
        sadButton.frame.origin.x = view.frame.width
        angryButton.frame.origin.x = view.frame.width
        shakemeButton.frame.origin.x = view.frame.width
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func updateAndAnimate(_ imageName: String){
        UIView.animate(withDuration: 1, animations: {
            self.imageView.alpha = 0
        })
        
        UIView.animate(withDuration: 1,delay: 0.5, animations: {
            self.imageView.alpha = 1
            self.imageView.image = UIImage(named: imageName)
        })
    }
}

