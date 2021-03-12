//
//  Words.swift
//  retro_rpg_ios
//
//  Created by izumiyoshiki on 2021/03/12.
//

import SpriteKit

class Words {
    var text : SKLabelNode = SKLabelNode()
    
    let LINES_HEIGHT_1 : CGFloat =   50.0
    let LINES_HEIGHT_2 : CGFloat =    0.0
    let LINES_HEIGHT_3 : CGFloat =  -50.0
    let LINES_HEIGHT_4 : CGFloat = -100.0
    let LINES_HEIGHT_5 : CGFloat = -150.0
    let LINES_HEIGHT_6 : CGFloat = -200.0
    let LINES_HEIGHT_7 : CGFloat = -250.0
    let LINES_HEIGHT_8 : CGFloat = -300.0

    init() {
        text.text = "少年「父さん・・」"
        text.fontColor = UIColor.black
        text.zPosition = 9
        text.numberOfLines = 8

    }

    func nextWords(textNumber: Int, characterNumber: Int) {
        if textNumber == 1 {
            text.position.y = LINES_HEIGHT_3
            text.text = """
父親「レン。サラ。いいか、
私の身に何かあったら
お前達が道場を守るんだ。」
"""
        }
        if textNumber == 2 {
            text.position.y = LINES_HEIGHT_8
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
            text.position.y = LINES_HEIGHT_5
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
            text.position.y = LINES_HEIGHT_3
            text.text = """
少年「父さん・・・。
わかったよ。
だから、死なないでくれよ」
"""
        }
        if textNumber == 6 {
            text.position.y = LINES_HEIGHT_1
            text.text = """
父親「ああ、男同士の約束だぞ。」
"""
        }
        if textNumber == 7 {
            text.position.y = LINES_HEIGHT_1
            text.text = """
少年「父さんの嘘つき！」
"""
        }
        if textNumber == 8 {
            text.position.y = LINES_HEIGHT_1
            text.text = """
少女「レン・・・」
"""
        }
        if textNumber == 9 {
            text.position.y = LINES_HEIGHT_1
            text.text = """
効果音「ドン！ドン！」
"""
        }
        if textNumber == 10 {
            text.position.y = LINES_HEIGHT_2
            text.text = """
男らしき声「ごめんくださーーーい！！
誰かいらっしゃいますかーーー！！」
"""
        }
        if textNumber == 11 {
            text.position.y = LINES_HEIGHT_1
            text.text = """
少年「？」
"""
        }
        if textNumber == 12 {
            text.position.y = LINES_HEIGHT_1
            text.text = """
少女「誰かしら？出てみましょう。」
"""
        }
        if textNumber == 13 {
            text.position.y = LINES_HEIGHT_1
            text.text = """
効果音「ガラガラガラ・・・」
"""
        }

        if textNumber == 14 {
            text.position.y = LINES_HEIGHT_2
            text.text = """
ガラの悪い男「やあ、どうも。
突然の訪問ごめんなさいねー。」
"""
        }
        if textNumber == 15 {
            text.position.y = LINES_HEIGHT_1
            text.text = """
少年「（ヤ、ヤクザ！？）」
"""
        }
        if textNumber == 16 {
            text.position.y = LINES_HEIGHT_1
            text.text = """
少女「あの・・・ご用件は何でしょうか？」
"""
        }
        if textNumber == 17 {
            text.position.y = LINES_HEIGHT_3
            text.text = """
ガラの悪い男「いやね？こちらのご主人が
亡くなられたって聞いて来たんですよ。
ちょっと通りがてら線香をあげにね。」
"""
        }
        if textNumber == 18 {
            text.position.y = LINES_HEIGHT_2
            text.text = """
少女「父のお知り合いですか？
一体どういった・・・」
"""
        }
        if textNumber == 19 {
            text.position.y = LINES_HEIGHT_2
            text.text = """
ガラの悪い男「あー、申し遅れました。
あたしゃこういう者です。」
"""
        }
        if textNumber == 20 {
            text.position.y = LINES_HEIGHT_1
            text.text = """
ナレーション「男は名刺を差し出した。」
"""
        }
        if textNumber == 21 {
            text.position.y = LINES_HEIGHT_2
            text.text = """
少女「・・・株式会社ナカダ興行代表取締役、
ジョージ ナカダ・・・。」
"""
        }
        if textNumber == 22 {
            text.position.y = LINES_HEIGHT_3
            text.text = """
ナカダ「まあ、
ちょっとした小さい会社を経営してる者ですよ。
君たちは？」
"""
        }
        if textNumber == 23 {
            text.position.y = LINES_HEIGHT_4
            text.text = """
少女「私はサラ クジョウ。
このクレナイ流武術道場の
当主タイジ クジョウの長女です。
こちらは弟のレンです。」
"""
        }
        if textNumber == 24 {
            text.position.y = LINES_HEIGHT_1
            text.text = """
レン「どうも・・・。」
"""
        }
        if textNumber == 25 {
            text.position.y = LINES_HEIGHT_4
            text.text = """
ナカダ「サラちゃんにレンくんね。
よろしく。
ま、こんなところで立ち話もなんだし。
中にお邪魔していいかな？」
"""
        }
        if textNumber == 26 {
            text.position.y = LINES_HEIGHT_2
            text.text = """
サラの声「お茶とお菓子用意しました。
こちらへどうぞ。」
"""
        }
        if textNumber == 27 {
            text.position.y = LINES_HEIGHT_1
            text.text = """
ナカダ「こりゃどうも。お構いなく。」
"""
        }
        if textNumber == 28 {
            text.position.y = LINES_HEIGHT_3
            text.text = """
ナカダ「いやあ、
惜しい人を亡くしたましたね～。
ご冥福をお祈りします。」
"""
        }
        if textNumber == 29 {
            text.position.y = LINES_HEIGHT_2
            text.text = """
サラ「あの・・・ナカダさん？
父とはどういったご関係で？」
"""
        }
    }
}
