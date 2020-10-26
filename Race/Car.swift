//
//  Car.swift
//  Race
//
//  Created by  on 10/26/20.
//  Copyright © 2020 AubreyApps. All rights reserved.
//

import Foundation

class Car
{
    var name: String
    var lane: Int
    var speed: Double
    
    init()
    {
        name = "E"
        lane = 1
        speed = 3.2
        getRandomSpeed()
    }
    
    init(theName: String, theLane: Int, theSpeed: Double)
    {
        name = theName
        lane = theLane
        speed = theSpeed
        getRandomSpeed()
    }
    func getRandomSpeed()
    {
        speed = Double.random(in: 2...5)
}
    
}
