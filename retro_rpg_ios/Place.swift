//
//  Place.swift
//  retro_rpg_ios
//
//  Created by izumiyoshiki on 2021/03/12.
//

import SpriteKit

enum PlaceName: String {
    case scene001_byouin  = "scene001_byouin"
    case scene001_butsuma = "scene001_butsuma"
    case scene001_genkan  = "scene001_genkan"
    case scene001_chanoma = "scene001_chanoma"
}

class Place {
    
    var place : SKSpriteNode = SKSpriteNode(imageNamed: "scene001_butsuma")
    var ren : SKSpriteNode = SKSpriteNode(imageNamed: "ren")
    var sara : SKSpriteNode = SKSpriteNode(imageNamed: "sara")
    var toushu : SKSpriteNode = SKSpriteNode(imageNamed: "toushu")
    var nakada : SKSpriteNode = SKSpriteNode(imageNamed: "nakada")

    init() {
        place.xScale = 1.5
        place.yScale = 1.5
        place.position.y = 350.0
        ren.xScale = 1.5
        ren.yScale = 1.5
        ren.position.x = 100.0
        ren.position.y = 300.0
        ren.zPosition = 9
        sara.xScale = 1.5
        sara.yScale = 1.5
        sara.position.x = -100.0
        sara.position.y = 300.0
        sara.zPosition = 9

        toushu.isHidden = true
        toushu.xScale = 1.5
        toushu.yScale = 1.5
        nakada.isHidden = true
        nakada.xScale = 3
        nakada.yScale = 3

    }
    func nextPlace(textNumber: Int) {
        if textNumber == 1 {
            place.texture = SKTexture(imageNamed: PlaceName.scene001_byouin.rawValue)
            toushu.isHidden = false
            toushu.zPosition = 9
            toushu.position.x = -50
            toushu.position.y = 430
            ren.position.x = 100.0
            ren.position.y = 450.0
            
            sara.position.x = 50.0
            sara.position.y = 400.0
            
            
        }
        if textNumber == 7 {
            place.texture = SKTexture(imageNamed: PlaceName.scene001_butsuma.rawValue)
            ren.position.x = 100.0
            ren.position.y = 300.0
            sara.position.x = -100.0
            sara.position.y = 300.0
            toushu.isHidden = true
        }
        if textNumber == 13 {
            place.texture = SKTexture(imageNamed: PlaceName.scene001_genkan.rawValue)
        }

        if textNumber == 14 {
            nakada.isHidden = false
            nakada.zPosition = 9
            nakada.position.y = 400.0
        }
        if textNumber == 26 {
            place.texture = SKTexture(imageNamed: PlaceName.scene001_butsuma.rawValue)
        }
        if textNumber == 28 {
            place.texture = SKTexture(imageNamed: PlaceName.scene001_chanoma.rawValue)
            nakada.position.x = 30
            nakada.position.y = 300
            nakada.xScale = 3.5
            nakada.yScale = 3.5
            ren.position.x = 150
            ren.position.y = 380
            sara.position.x = -150
            sara.position.y = 380
        }

    }
}
