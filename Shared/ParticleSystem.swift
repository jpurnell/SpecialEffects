//
//  ParticleSystem.swift
//  SpecialEffects
//
//  Created by Justin Purnell on 2/25/22.
//

import Foundation
import SwiftUI

class ParticleSystem {
    let image = Image("letterHBlur")
    var particles = Set<Particle>()
    var center = UnitPoint.center
    var hue = 0.0
    
    func update(date: TimeInterval) {
        let deathDate = date - 1
        
        for particle in particles {
            if particle.creationDate < deathDate {
                particles.remove(particle)
            }
        }
        
        let newParticle = Particle(x: center.x, y: center.y, hue: hue)
        particles.insert(newParticle)
        hue += 0.01
        if hue > 1 { hue -= 1 }
    }
}

