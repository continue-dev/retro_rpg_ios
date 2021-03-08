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
    var nakada : SKSpriteNode = SKSpriteNode(imageNamed: "nakada")
    var textFrame : SKSpriteNode = SKSpriteNode(imageNamed: "frame")
    var text : SKLabelNode = SKLabelNode()

    var textNumber: Int = 0
    override func didMove(to view: SKView) {
        
//        butsuma = SKTexture(imageNamed: "scene001_butsuma")
        addChild(scene1)
        addChild(ren)
        addChild(sara)
        addChild(toushu)
        addChild(nakada)
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
        nakada.isHidden = true
        nakada.xScale = 3
        nakada.yScale = 3

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
        if textNumber == 8 {
            text.position.y = 0
            text.text = """
少女「レン・・・」
"""
        }
        if textNumber == 9 {
            text.position.y = 0
            text.text = """
効果音「ドン！ドン！」
"""
        }
        if textNumber == 10 {
            text.position.y = -50
            text.text = """
男らしき声「ごめんくださーーーい！！
誰かいらっしゃいますかーーー！！」
"""
        }
        if textNumber == 11 {
            text.position.y = 0
            text.text = """
少年「？」
"""
        }
        if textNumber == 12 {
            text.position.y = 0
            text.text = """
少女「誰かしら？出てみましょう。」
"""
        }
        if textNumber == 13 {
            scene1.texture = SKTexture(imageNamed: "scene001_genkan")
            text.position.y = 0
            text.text = """
効果音「ガラガラガラ・・・」
"""
        }

        if textNumber == 14 {
            nakada.isHidden = false
            nakada.zPosition = 9
            nakada.position.y = 400.0
            text.position.y = -50
            text.text = """
ガラの悪い男「やあ、どうも。
突然の訪問ごめんなさいねー。」
"""
        }
        if textNumber == 15 {
            text.position.y = 0
            text.text = """
少年「（ヤ、ヤクザ！？）」
"""
        }
        if textNumber == 16 {
            text.position.y = 0
            text.text = """
少女「あの・・・ご用件は何でしょうか？」
"""
        }
        if textNumber == 17 {
            text.position.y = -100
            text.text = """
ガラの悪い男「いやね？こちらのご主人が
亡くなられたって聞いて来たんですよ。
ちょっと通りがてら線香をあげにね。」
"""
        }
        if textNumber == 18 {
            text.position.y = -50
            text.text = """
少女「父のお知り合いですか？
一体どういった・・・」
"""
        }
        if textNumber == 19 {
            text.position.y = -50
            text.text = """
ガラの悪い男「あー、申し遅れました。
あたしゃこういう者です。」
"""
        }
        if textNumber == 20 {
            text.position.y = 0
            text.text = """
ナレーション「男は名刺を差し出した。」
"""
        }
        if textNumber == 21 {
            text.position.y = -50
            text.text = """
少女「・・・株式会社ナカダ興行代表取締役、
ジョージ ナカダ・・・。」
"""
        }
        if textNumber == 22 {
            text.position.y = -100
            text.text = """
ナカダ「まあ、
ちょっとした小さい会社を経営してる者ですよ。
君たちは？」
"""
        }
        if textNumber == 23 {
            text.position.y = -150
            text.text = """
少女「私はサラ クジョウ。
このクレナイ流武術道場の
当主タイジ クジョウの長女です。
こちらは弟のレンです。」
"""
        }
        if textNumber == 24 {
            text.position.y = 0
            text.text = """
レン「どうも・・・。」
"""
        }
        if textNumber == 25 {
            text.position.y = -150
            text.text = """
ナカダ「サラちゃんにレンくんね。
よろしく。
ま、こんなところで立ち話もなんだし。
中にお邪魔していいかな？」
"""
        }
        if textNumber == 26 {
            scene1.texture = SKTexture(imageNamed: "scene001_butsuma")
            text.position.y = 0
            text.text = """
サラの声「お茶とお菓子用意しました。
こちらへどうぞ。」
"""
        }
        if textNumber == 27 {
            text.position.y = 0
            text.text = """
ナカダ「こりゃどうも。お構いなく。」
"""
        }
        if textNumber == 28 {
            scene1.texture = SKTexture(imageNamed: "scene001_chanoma")
            nakada.position.x = 30
            nakada.position.y = 300
            nakada.xScale = 3.5
            nakada.yScale = 3.5
            ren.position.x = 150
            ren.position.y = 380
            sara.position.x = -150
            sara.position.y = 380
            text.position.y = -100
            text.text = """
ナカダ「いやあ、
惜しい人を亡くしたましたね～。
ご冥福をお祈りします。」
"""
        }
        if textNumber == 29 {
            text.position.y = -50
            text.text = """
サラ「あの・・・ナカダさん？
父とはどういったご関係で？」
"""
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
