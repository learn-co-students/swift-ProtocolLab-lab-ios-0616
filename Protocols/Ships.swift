//
//  Ships.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

enum Direction {
    case north
    case south
    case east
    case west
}

protocol SteerAbility {
    
    var direction: Direction { get set }
    
    mutating func steerInDirection(direction: Direction)
    
}

// making an extension to provide default implementation
// for protocol SteerAbility
extension SteerAbility {
    mutating func steerInDirection(direction: Direction) {
        self.direction = direction
    }
}


class SailBoat: SteerAbility {
    var direction: Direction = .north
}

class RowBoat: SteerAbility {
    var direction: Direction = .north
}

class SteamBoat: SteerAbility {
    var direction: Direction = .north
}
