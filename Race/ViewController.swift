//
//  ViewController.swift
//  Race
//
//  Created by  on 10/26/20.
//  Copyright © 2020 AubreyApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var car1ImageView: CarImageView!
    var car2ImageView: CarImageView!
    var car3ImageView: CarImageView!
    var car4ImageView: CarImageView!
    var car5ImageView: CarImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var car1 = Car(theName: "A", theLane: 1, theSpeed: 3.2)
        car1ImageView = CarImageView(c: car1)
        view.addSubview(car1ImageView)
        var AubreysCar = Car()
        var car2 = Car(theName: "B", theLane: 2, theSpeed: 3.2)
        car2ImageView = CarImageView(c: car2)
        view.addSubview(car2ImageView)
        var car3 = Car(theName: "C", theLane: 3, theSpeed: 3.2)
               car3ImageView = CarImageView(c: car3)
               view.addSubview(car3ImageView)
        var car4 = Car(theName: "D", theLane: 4, theSpeed: 3.2)
               car4ImageView = CarImageView(c: car4)
               view.addSubview(car4ImageView)
        var car5 = Car(theName: "E", theLane: 5, theSpeed: 3.2)
               car5ImageView = CarImageView(c: car5)
               view.addSubview(car5ImageView)
    }

    @IBAction func startRace(_ sender: UIButton)
    {
        UIView.animate(withDuration: car1ImageView.car.speed, delay: 0,
        animations: {
            self.car1ImageView.center = CGPoint(x: self.car1ImageView.center.x, y: -100) }, completion: {
            action in
            self.car1ImageView.resetPositionAndSpeed()
        })
        UIView.animate(withDuration: car2ImageView.car.speed, delay: 0,  animations: {
            self.car2ImageView.center = CGPoint (x: self.car2ImageView.center.x, y: -100)}, completion: { action in
                self.car2ImageView.resetPositionAndSpeed()
        })
        UIView.animate(withDuration: car3ImageView.car.speed, delay: 0, animations: { self.car3ImageView.center = CGPoint (x: self.car3ImageView.center.x, y: -100)}, completion: { action in
            self.car3ImageView.resetPositionAndSpeed()
        })
        UIView.animate(withDuration: car4ImageView.car.speed, delay: 0, animations: { self.car4ImageView.center = CGPoint (x: self.car4ImageView.center.x, y: -100)}, completion: { action in
            self.car4ImageView.resetPositionAndSpeed()
        })
        UIView.animate(withDuration: car5ImageView.car.speed, delay: 0, animations: { self.car5ImageView.center = CGPoint (x: self.car5ImageView.center.x, y: -100)}, completion:{ action in
            self.car5ImageView.resetPositionAndSpeed()
        })
}

}
