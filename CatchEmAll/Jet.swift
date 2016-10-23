//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    //The Jet class should override two of methods from Plane:
    //Override climb() to increase the jet's altitude by ⅕ of its maxAltitude. Otherwise, the same rules for Plane's climb() should apply.
    override func climb() {
        if inFlight {
            altitude += maxAltitude/5
            self.decelerate()
            if altitude > maxAltitude {
                if speed < 0 {
                    speed = 0
                }
                altitude = maxAltitude
            }
        }

    }
    //Override dive() to dcrease the jet's altitude by ⅕ of its maxAltitude. Otherwise, the same rules for Plane's dive() should apply.
    override func dive() {
        if inFlight {
            altitude -= maxAltitude/5
            self.accelerate()
            if altitude < 0 {
                if speed > maxSpeed {
                    speed = maxSpeed
                }
                altitude = 0
            }
        }

    }
    //The Jet class should also add one new method, which takes no parameters and returns no value:
    //afterburner(), which sets the jet's speed to twice its maxSpeed, but only if the jet is already flying at its maxSpeed.
    func afterburner() {
        if inFlight && speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }
}
