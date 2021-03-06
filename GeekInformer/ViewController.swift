//
//  ViewController.swift
//  GeekInformer
//
//  Created by Рауф on 03.02.17.
//  Copyright © 2017 Рауф. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


//Затемнение цвета
//extension UIColor {
//    
//    func lighter(by percentage:CGFloat=30.0) -> UIColor? {
//        return self.adjust(by: abs(percentage) )
//    }
//    
//    func darker(by percentage:CGFloat=30.0) -> UIColor? {
//        return self.adjust(by: -1 * abs(percentage) )
//    }
//    
//    func adjust(by percentage:CGFloat=30.0) -> UIColor? {
//        var r:CGFloat=0, g:CGFloat=0, b:CGFloat=0, a:CGFloat=0;
//        if(self.getRed(&r, green: &g, blue: &b, alpha: &a)){
//            return UIColor(red: min(r + percentage/100, 1.0),
//                           green: min(g + percentage/100, 1.0),
//                           blue: min(b + percentage/100, 1.0),
//                           alpha: a)
//        }else{
//            return nil
//        }
//    }
//}

class ViewController: UIViewController {
    

//Разбор цвета для UIColor
//    func hexStringToUIColor (hex:String) -> UIColor {
//        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
//        
//        if (cString.hasPrefix("#")) {
//            cString.remove(at: cString.startIndex)
//        }
//        
//        if ((cString.characters.count) != 6) {
//            return UIColor.gray
//        }
//        
//        var rgbValue:UInt32 = 0
//        Scanner(string: cString).scanHexInt32(&rgbValue)
//        
//        return UIColor(
//            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
//            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
//            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
//            alpha: CGFloat(1.0)
//        )
//    }
//Создание скроллов
//    func creatsScrolls(objects: [TrendsScreen]=[])-> [UIScrollView]{
//        
//        let ScrollView:UIScrollView = UIScrollView.init(frame: CGRect.init(x: 0, y: 0, width: 320, height: 231))
//        ScrollView.translatesAutoresizingMaskIntoConstraints = false
//        ScrollView.addConstraint(NSLayoutConstraint.init(item: ScrollView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 231))
//        ScrollView.addConstraint(NSLayoutConstraint.init(item: ScrollView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 320))
//        let ScrollView2:UIScrollView = UIScrollView.init(frame: CGRect.init(x: 0, y: 0, width: 320, height: 231))
//        ScrollView2.translatesAutoresizingMaskIntoConstraints = false
//        ScrollView2.addConstraint(NSLayoutConstraint.init(item: ScrollView2, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 231))
//        ScrollView2.addConstraint(NSLayoutConstraint.init(item: ScrollView2, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 320))
//        self.view.addSubview(ScrollView)
//        self.view.addSubview(ScrollView2)
//        
//        view.addConstraint(NSLayoutConstraint.init(item: ScrollView, attribute: .top, relatedBy: .equal, toItem: topLayoutGuide, attribute: .bottom, multiplier: 1.0, constant: 0))
//        view.addConstraint(NSLayoutConstraint.init(item: view, attribute: .trailing, relatedBy: .equal, toItem: ScrollView, attribute: .trailing, multiplier: 1.0, constant: 0))
//        view.addConstraint(NSLayoutConstraint.init(item: ScrollView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 0))
//        
//        view.addConstraint(NSLayoutConstraint.init(item: view, attribute: .bottom, relatedBy: .equal, toItem: ScrollView2, attribute: .bottom, multiplier: 1.0, constant: 0))
//        view.addConstraint(NSLayoutConstraint.init(item: ScrollView2, attribute: .trailing, relatedBy: .equal, toItem: ScrollView, attribute: .trailing, multiplier: 1.0, constant: 0))
//        view.addConstraint(NSLayoutConstraint.init(item: ScrollView2, attribute: .leading, relatedBy: .equal, toItem: ScrollView, attribute: .leading, multiplier: 1.0, constant: 0))
//        
//        return [ScrollView, ScrollView2]
//
//    }
    
    
//Заполнение скроллов
//    func createTrendsView(objects: [TrendsScreen]=[], ScrollView:UIScrollView){
//        let imageWidth:CGFloat = 95
//        let imageHeight:CGFloat = 170
//        let imagebackHeight:CGFloat = 200
//        
//        var xPosition:CGFloat = 0
//        let yPosition:CGFloat = 0
//        
//        let spacer:CGFloat = 5
//        var scrollViewContentSize:CGFloat=0;
//        ScrollView.contentSize = CGSize(width: ScrollView.frame.width*CGFloat.init(CGFloat.init(objects.count)/(self.view.frame.width/imageWidth)), height: ScrollView.frame.height)
//        for index in 0..<objects.count - 1
//        {
//            let myImage:UIImage = objects[index].image
//            let backImageView:UIImageView = UIImageView()
//            let myImageView:UIImageView = UIImageView()
//            
//            let label:UILabel = UILabel.init(frame: CGRect.init(x: xPosition, y: yPosition+100, width: imageWidth, height: 0))
//            label.text = objects[index].name
//            label.backgroundColor = UIColor.clear
//            label.numberOfLines = 0
//            label.lineBreakMode = .byWordWrapping
//            label.font = UIFont.init(name: "Roboto", size: 16)
//            label.textColor = objects[index].fontcolor
//            label.sizeToFit()
//            
//            objects[index].button = UIButton.init(frame: CGRect.init(x: xPosition, y: yPosition+imageHeight, width: imageWidth, height: 35))
//            var backgrondcolor:UIColor = objects[index].color
//            backgrondcolor = backgrondcolor.darker(by: 20)!
//            
//            objects[index].button.backgroundColor = backgrondcolor
//            objects[index].button.isHighlighted = true
//            objects[index].button.titleLabel?.font = UIFont.init(name: "Roboto", size: 14)
//            objects[index].button.setTitle("Подписаться", for: .normal)
//            objects[index].button.setTitleColor(objects[index].fontcolor, for: .normal)
//            //objects[index].button.addTarget(self, action: #selector(Pressed), for: .touchUpInside)
//            
//            myImageView.image = myImage
//            myImageView.contentMode = UIViewContentMode.scaleAspectFit
//            myImageView.frame.size.width = imageWidth
//            myImageView.frame.size.height = imageHeight
//            myImageView.center = self.view.center
//            myImageView.frame.origin.x = xPosition
//            myImageView.frame.origin.y = yPosition-40
//            
//            backImageView.backgroundColor=objects[index].color
//            backImageView.frame.size.width = imageWidth
//            backImageView.frame.size.height = imagebackHeight
//            backImageView.center = self.view.center
//            backImageView.frame.origin.x = xPosition
//            backImageView.frame.origin.y = yPosition
//            
//            ScrollView.addSubview(backImageView)
//            ScrollView.addSubview(myImageView)
//            ScrollView.addSubview(label)
//            ScrollView.addSubview(objects[index].button)
//            
//            xPosition+=imageWidth + spacer
//            scrollViewContentSize+=imageHeight + spacer
//        }
//        print(ScrollView.center.x)
//        print(ScrollView.center.y)
//    }
    
    
    //Запросы к API и получения массива objects
//    func requestToApi(requestScroll: URL, scrollview: UIScrollView){
//        Alamofire.request(requestScroll).responseJSON()
//            {
//                response in
//                if let value = response.result.value
//                {
//                    var json = JSON(value)
//                    
//                    var objects = [TrendsScreen]()
//                    var color:UIColor=UIColor.darkGray
//                    var name:String=String()
//                    var fontcolor:UIColor=UIColor.darkGray
//                    var image:UIImage = UIImage.init()
//                    var button_url:String=String()
//                    for item in 0...json["data"].count{
//                        name = json["data"][item]["title"].stringValue
//                        
//                        color = self.hexStringToUIColor(hex: json["data"][item]["palette"]["color"].stringValue)
//                        
//                        fontcolor = self.hexStringToUIColor(hex: json["data"][item]["palette"]["text"].stringValue)
//                        
//                        button_url = json["data"][item]["cover"]["url"].stringValue
//                        
//                        if let url = NSURL(string: json["data"][item]["avatar"].stringValue) {
//                            if let data = NSData(contentsOf: url as URL) {
//                                image = UIImage(data: data as Data)!
//                            }
//                        }
//                        
//                        objects.append(TrendsScreen.init(name: name, image: image, color: color, fontcolor: fontcolor, url: button_url, button: UIButton.init()))
//                    }
//                    self.createTrendsView(objects: objects, ScrollView: scrollview)
//                }
//        }
//    }
    

    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        let scrolls = creatsScrolls()
//        
//        var requestScroll:URL = URL.init(string: "https://geekinformer.net/api/1/publishers/trends?type=blogger")!
//        requestToApi(requestScroll: requestScroll, scrollview: scrolls[0])
//        requestScroll = URL.init(string:"https://geekinformer.net/api/1/publishers/trends?type=resource")!
//        requestToApi(requestScroll: requestScroll, scrollview: scrolls[1])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

