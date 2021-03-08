//
//  GameScene.swift
//  retro_rpg_ios
//
//  Created by izumiyoshiki on 2021/03/08.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var scene1 : SKSpriteNode = SKSpriteNode(imageNamed: "scene001_butsuma")
    var ren : SKSpriteNode = SKSpriteNode(imageNamed: "ren")
    var sara : SKSpriteNode = SKSpriteNode(imageNamed: "sara")
    var toushu : SKSpriteNode = SKSpriteNode(imageNamed: "toushu")
    var textFrame : SKSpriteNode = SKSpriteNode(imageNamed: "frame")
    var text : SKLabelNode = SKLabelNode()

    var textNumber: Int = 0
    override func didMove(to view: SKView) {
        
//        butsuma = SKTexture(imageNamed: "scene001_butsuma")
        addChild(scene1)
        addChild(ren)
        addChild(sara)
        addChild(toushu)
        addChild(textFrame)
        addChild(text)
        scene1.xScale = 1.5
        scene1.yScale = 1.5
        scene1.position.y = 350.0
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

        textFrame.xScale = 2.0
        textFrame.yScale = 2.0
        textFrame.position.y = -100.0
        text.text = "少年「父さん・・」"
        text.fontColor = UIColor.black
        text.zPosition = 9
        text.numberOfLines = 8
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
        textNumber += 1
        
        if textNumber == 1 {
            text.position.y = -100
            text.text = """
父親「レン。サラ。いいか、
私の身に何かあったら
お前達が道場を守るんだ。」
"""
            scene1.texture = SKTexture(imageNamed: "scene001_byouin")
            toushu.isHidden = false
            toushu.zPosition = 9
            toushu.position.x = -50
            toushu.position.y = 430
            ren.position.x = 100.0
            ren.position.y = 450.0
            
            sara.position.x = 50.0
            sara.position.y = 400.0
            
            
        }
        if textNumber == 2 {
            text.position.y = -300
            text.text = """
少年「父さん・・・
そんな縁起でもない事
言わないでくれよ。」

少年の姉「そうよ。
病気で倒れたからって弱気にならないで。
父さんにはもっと長生きしてもらわないと
いけないわ」
"""
        }
        if textNumber == 3 {
            text.position.y = -150
            text.text = """
父親「我が国が戦争に負けて
武力廃棄令が下された。
大勢いた門下生も次々と離れていった。
このままでは
道場をたたまなければいけなくなるだろう。」
"""
        }
        if textNumber == 4 {
            text.text = """
父親「だが、武術とは心の在り方だ。
例え武道が廃れても先代達が
守ってきた道場だけは何か何でも守りたい。
それが出来るのは若いお前達なんだ。
私も出来る限り協力はする。頼んだぞ。」
"""
        }
        if textNumber == 5 {
            text.position.y = -100
            text.text = """
少年「父さん・・・。
わかったよ。
だから、死なないでくれよ」
"""
        }
        if textNumber == 6 {
            text.position.y = 0
            text.text = """
父親「ああ、男同士の約束だぞ。」
"""
        }
        if textNumber == 7 {
            text.position.y = 0
            text.text = """
少年「父さんの嘘つき！」
"""
            scene1.texture = SKTexture(imageNamed: "scene001_butsuma")
            ren.position.x = 100.0
            ren.position.y = 300.0
            sara.position.x = -100.0
            sara.position.y = 300.0
            toushu.isHidden = true

            
        }

        
        

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
