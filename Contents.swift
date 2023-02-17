import UIKit
//製作相片漸層
var photoImageView = UIImageView(image: UIImage(named: "hsin.jpg"))
let gradientLayer = CAGradientLayer()
gradientLayer.frame = photoImageView.bounds
gradientLayer.colors = [
    CGColor(red: 1, green: 1, blue: 1, alpha: 0),
    CGColor(red: 1, green: 1, blue: 1, alpha: 0.5)
]
photoImageView.layer.addSublayer(gradientLayer)
//製作相片遮罩
let maskImageView = UIImageView(image: UIImage(named: "Me.HEIC"))
maskImageView.frame = photoImageView.frame
photoImageView.mask = maskImageView
photoImageView.transform = CGAffineTransform(translationX: 250, y: 250)
//製作卡片背景
let card = UIView(frame: CGRect(x: 0, y: 0, width: 1458, height: 2000))
card.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 220/255, alpha: 1)
//卡片圓角、邊框設計
card.layer.cornerRadius = 70
card.clipsToBounds = true
card.layer.borderWidth = CGFloat(50)
card.layer.borderColor = CGColor(red: 179/255, green: 153/255, blue: 1, alpha: 1)
//卡片與主畫面合成
card.addSubview(photoImageView)
//製作卡片的裝飾
let greenBar = UIView(frame: CGRect(x: 125, y: 0, width: 65, height: 2000))
greenBar.backgroundColor = UIColor(red: 154/255, green: 205/255, blue: 50/255, alpha: 1)
var brownBar = UIView(frame: CGRect(x: 0, y: 125, width: 1458, height: 75))
brownBar.backgroundColor = UIColor(red: 244/255, green: 164/255, blue: 96/255, alpha: 1)
card.addSubview(greenBar)
card.addSubview(brownBar)
var brownBar2 = UIView(frame: CGRect(x: 0, y: 0, width: 1458, height: 75))
brownBar2.transform = CGAffineTransform(translationX: 0, y: 1900)
brownBar2.backgroundColor = UIColor(red: 244/255, green: 164/255, blue: 96/255, alpha: 1)
card.addSubview(brownBar2)
//製作玫瑰
let rose = UILabel()
rose.text = "🌹"
rose.font = UIFont.systemFont(ofSize: 250)
rose.sizeToFit()
rose.frame.origin.x = 1200
rose.frame.origin.y = 1630
card.addSubview(rose)
let mirrowRose = UILabel()
mirrowRose.text = "🌹"
mirrowRose.font = UIFont.systemFont(ofSize: 250)
mirrowRose.sizeToFit()
mirrowRose.frame.origin.x = rose.frame.origin.x-1080
mirrowRose.frame.origin.y = rose.frame.origin.y
mirrowRose.transform = CGAffineTransform(scaleX: -1, y: 1)
card.addSubview(mirrowRose)
let rose2 = UILabel()
rose2.text = "🌹"
rose2.font = UIFont.systemFont(ofSize: 250)
rose2.sizeToFit()
rose2.frame.origin.x = rose.frame.origin.x-250
rose2.frame.origin.y = 1630
card.addSubview(rose2)
let mirrowRose2 = UILabel()
mirrowRose2.text = "🌹"
mirrowRose2.font = UIFont.systemFont(ofSize: 250)
mirrowRose2.sizeToFit()
mirrowRose2.frame.origin.x = mirrowRose.frame.origin.x+250
mirrowRose2.frame.origin.y = rose2.frame.origin.y
mirrowRose2.transform = CGAffineTransform(scaleX: -1, y: 1)
card.addSubview(mirrowRose2)
let rose3 = UILabel()
rose3.text = "🌹"
rose3.font = UIFont.systemFont(ofSize: 250)
rose3.sizeToFit()
rose3.frame.origin.x = rose2.frame.origin.x-275
rose3.frame.origin.y = 1630
card.addSubview(rose3)

//製作緞帶
let ribbon = UILabel()
ribbon.text = "💝"
ribbon.font = UIFont.systemFont(ofSize: 300)
ribbon.frame = CGRect(x: 50, y: 20, width: 0, height: 0)
ribbon.sizeToFit()
ribbon.transform = CGAffineTransform(rotationAngle: .pi/180*330)
card.addSubview(ribbon)
//製作文字
let fontURL = Bundle.main.url(forResource: "crayon_1-1", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(fontURL, .process, nil)
let letter = UILabel()
letter.text = "Happy Valentine's Day"
letter.font = UIFont(name: "Nagurigaki-Crayon", size: 110)
letter.sizeToFit()
letter.textColor = UIColor(red: 1, green: 115/255, blue: 0, alpha: 1)
letter.transform = CGAffineTransform(translationX: 230, y: 1500)
card.addSubview(letter)

