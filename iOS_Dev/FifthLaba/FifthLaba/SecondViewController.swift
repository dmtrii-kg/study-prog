//
//  SecondViewController.swift
//  FifthLaba
//
//  Created by dmtrii on 28.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

//class WalkingManView: UIView {
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.backgroundColor = UIColor.clear
//    }
//    
//    override func draw(_ rect: CGRect) {
//        WalkingManKit.drawWalkingMan(frame: rect, resizing: .aspectFit)
//    }
//}

class SecondViewController: UIViewController {

    var ad = 1
    
    var add2 = 0
    var del2 = 0
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC: MainViewController = segue.destination as! MainViewController
        destinationVC.add0 = add2
        destinationVC.del0 = del2 + 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("SecondViewController")
        print(add2)
        print(del2)
        
        let trafficLights = plotDemo(frame: CGRect(x: 120, y: 60, width: 170, height: 500))
        self.view.addSubview(trafficLights)
        
        coloredSquare.backgroundColor = UIColor.black
        coloredSquare.frame = CGRect(x:20, y:60, width:50, height:50)
        self.view.addSubview(coloredSquare)

    }

    var count = 0
    var value = 0
    var red = 0
    var yellow = 3
    var green = 4
    var timer = Timer()
    
    var coloredSquare: UIView = UIView()
//    let coloredSquare =  WalkingManKit(frame: CGRect.init(x: 120, y: 60, width: 170, height: 500))
//    self.view.addSubview(colorSquare)
        
    @IBAction func cancelTapped(_sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func start(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(FirstViewController.counter), userInfo: nil, repeats: true)
    }
        
    func movementDown() {
        UIView.animate(withDuration: 3.0, animations: {
            self.coloredSquare.backgroundColor = UIColor.green
            self.coloredSquare.frame = CGRect(x: 20, y: 500, width: 50, height: 50)
            })
    }
        
    func movementUp() {
        UIView.animate(withDuration: 3.0, animations: {
            self.coloredSquare.backgroundColor = UIColor.green
            self.coloredSquare.frame = CGRect(x: 20, y: 60, width: 50, height: 50)
            })
    }
        
    @objc func counter() {
        
        if count == red {
            let r = plotDemoRed(frame: CGRect(x: 120, y: 60, width: 170, height: 500))
            self.view.addSubview(r)
            coloredSquare.backgroundColor = UIColor.red
            
            red = red + 8
        }

        if count == yellow {
            let y = plotDemoYellow(frame: CGRect(x: 120, y: 60, width: 170, height: 500))
            self.view.addSubview(y)
            coloredSquare.backgroundColor = UIColor.yellow
            
            yellow = yellow + 4
        }

        if count == green {
            let g = plotDemoGreen(frame: CGRect(x: 120, y: 60, width: 170, height: 500))
            self.view.addSubview(g)
                
            if value % 2 == 0 {
                coloredSquare.backgroundColor = UIColor.green
                coloredSquare.frame = CGRect(x: 20, y: 60, width: 50, height: 50)
                self.view.addSubview(coloredSquare)
                movementDown()
                
                value = value + 1
            } else {
                coloredSquare.backgroundColor = UIColor.green
                coloredSquare.frame = CGRect(x: 20, y: 500, width: 50, height: 50)
                self.view.addSubview(coloredSquare)
                movementUp()
                
                value = value + 1
            }
                
            green = green + 8
        }
        count+=1
    }
}
    
public class plotDemo: UIView {
        
    public override func draw(_ frame: CGRect) {
        var pathred = UIBezierPath()
        pathred = UIBezierPath(ovalIn: CGRect(x: 10, y: 20, width: 150, height: 150))
        UIColor.white.setStroke()
        UIColor.red.setFill()
        pathred.lineWidth = 5
        pathred.stroke()
        pathred.fill()
        
        var pathyellow = UIBezierPath()
        pathyellow = UIBezierPath(ovalIn: CGRect(x: 10, y: 175, width: 150, height: 150))
        UIColor.white.setStroke()
        UIColor.yellow.setFill()
        pathyellow.lineWidth = 5
        pathyellow.stroke()
        pathyellow.fill()
        
        var pathgreen = UIBezierPath()
        pathgreen = UIBezierPath(ovalIn: CGRect(x: 10, y: 330, width: 150, height: 150))
        UIColor.white.setStroke()
        UIColor.green.setFill()
        pathgreen.lineWidth = 5
        pathgreen.stroke()
        pathgreen.fill()
    }
}
    
public class plotDemoRed: UIView {
    
    public override func draw(_ frame: CGRect) {
        var pathred = UIBezierPath()
        pathred = UIBezierPath(ovalIn: CGRect(x: 10, y: 20, width: 150, height: 150))
        UIColor.white.setStroke()
        UIColor.red.setFill()
        pathred.lineWidth = 5
        pathred.stroke()
        pathred.fill()
        
        var pathyellow = UIBezierPath()
        pathyellow = UIBezierPath(ovalIn: CGRect(x: 10, y: 175, width: 150, height: 150))
        UIColor.white.setStroke()
        UIColor.black.setFill()
        pathyellow.lineWidth = 5
        pathyellow.stroke()
        pathyellow.fill()
        
        var pathgreen = UIBezierPath()
        pathgreen = UIBezierPath(ovalIn: CGRect(x: 10, y: 330, width: 150, height: 150))
        UIColor.white.setStroke()
        UIColor.black.setFill()
        pathgreen.lineWidth = 5
        pathgreen.stroke()
        pathgreen.fill()
    }
}
    
public class plotDemoYellow: UIView {
    
    public override func draw(_ frame: CGRect) {
        var pathred = UIBezierPath()
        pathred = UIBezierPath(ovalIn: CGRect(x: 10, y: 20, width: 150, height: 150))
        UIColor.white.setStroke()
        UIColor.black.setFill()
        pathred.lineWidth = 5
        pathred.stroke()
        pathred.fill()
        
        var pathyellow = UIBezierPath()
        pathyellow = UIBezierPath(ovalIn: CGRect(x: 10, y: 175, width: 150, height: 150))
        UIColor.white.setStroke()
        UIColor.yellow.setFill()
        pathyellow.lineWidth = 5
        pathyellow.stroke()
        pathyellow.fill()
        
        var pathgreen = UIBezierPath()
        pathgreen = UIBezierPath(ovalIn: CGRect(x: 10, y: 330, width: 150, height: 150))
        UIColor.white.setStroke()
        UIColor.black.setFill()
        pathgreen.lineWidth = 5
        pathgreen.stroke()
        pathgreen.fill()
    }
}
    
public class plotDemoGreen: UIView {
    
    public override func draw(_ frame: CGRect) {
        var pathred = UIBezierPath()
        pathred = UIBezierPath(ovalIn: CGRect(x: 10, y: 20, width: 150, height: 150))
        UIColor.white.setStroke()
        UIColor.black.setFill()
        pathred.lineWidth = 5
        pathred.stroke()
        pathred.fill()
        
        var pathyellow = UIBezierPath()
        pathyellow = UIBezierPath(ovalIn: CGRect(x: 10, y: 175, width: 150, height: 150))
        UIColor.white.setStroke()
        UIColor.black.setFill()
        pathyellow.lineWidth = 5
        pathyellow.stroke()
        pathyellow.fill()
        
        var pathgreen = UIBezierPath()
        pathgreen = UIBezierPath(ovalIn: CGRect(x: 10, y: 330, width: 150, height: 150))
        UIColor.white.setStroke()
        UIColor.green.setFill()
        pathgreen.lineWidth = 5
        pathgreen.stroke()
        pathgreen.fill()
    }
}
