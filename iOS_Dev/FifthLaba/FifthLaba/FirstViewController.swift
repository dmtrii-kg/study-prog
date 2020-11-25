//
//  FirstViewController.swift
//  FifthLaba
//
//  Created by dmtrii on 28.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var ad = 1
    
    var add1 : Int = 0
    var del1 : Int = 0
    
    var winCount = [WindowCounter]()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC: MainViewController = segue.destination as! MainViewController
        destinationVC.add0 = add1
        destinationVC.del0 = del1 + 1
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("FirstViewController")
        print(add1)
        print(del1)
        
        
        
        let trafficLights = plotDemo1(frame: CGRect(x: 120, y: 60, width: 170, height: 500))
        self.view.addSubview(trafficLights)
        
    }
    
    var count = 0
    var red = 0
    var yellow = 3
    var green = 4
    var timer = Timer()

    @IBAction func cancelTapped(_sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func start(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(FirstViewController.counter), userInfo: nil, repeats: true)
    }
    
    @objc func counter() {
        
        if count == red {
            let r = plotRed(frame: CGRect(x: 120, y: 60, width: 170, height: 500))
            self.view.addSubview(r)
            red = red + 8
        }
        
        if count == yellow {
            let y = plotYellow(frame: CGRect(x: 120, y: 60, width: 170, height: 500))
            self.view.addSubview(y)
            yellow = yellow + 4
        }
        if count == green {
            let g = plotGreen(frame: CGRect(x: 120, y: 60, width: 170, height: 500))
            self.view.addSubview(g)
            green = green + 8
        }
        count+=1
    }

}

public class plotDemo1: UIView
{
    
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

public class plotRed: UIView
{
    
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

public class plotYellow: UIView
{
    
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

public class plotGreen: UIView
{
    
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
