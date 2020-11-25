//
//  ViewController.swift
//  Kvadraty
//
//  Created by dmtrii on 20/09/2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class SquaresViewController: UIViewController {
        
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let square = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        square.backgroundColor = UIColor.blue
        view.addSubview(square)
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square])
        animator.addBehavior(gravity)
        
        let iconView1 = SquareView1(
           frame: CGRect.init(
              x: 0, y: 0,
              width: 200,
              height: 200)
        )
        
        let iconView2 = SquareView2(
           frame: CGRect.init(
              x: 100, y: 50,
              width: 200,
              height: 200)
        )
        
        let iconView3 = SquareView3(
           frame: CGRect.init(
              x: 150, y: 0,
              width: 200,
              height: 200)
        )
        
        let iconView4 = SquareView1(
           frame: CGRect.init(
              x: 0, y: 180,
              width: 200,
              height: 200)
        )
        
        let iconView5 = SquareView2(
           frame: CGRect.init(
              x: 120, y: 180,
              width: 200,
              height: 200)
        )
        
        let iconView6 = SquareView3(
           frame: CGRect.init(
              x: 240, y: 180,
              width: 200,
              height: 200)
        )
        
        let iconView7 = SquareView4(
           frame: CGRect.init(
              x: 0, y: 300,
              width: 200,
              height: 200)
        )
        
        let iconView8 = SquareView5(
           frame: CGRect.init(
              x: 240, y: 300,
              width: 200,
              height: 200)
        )
        
        let iconView9 = SquareView5(
           frame: CGRect.init(
              x: 0, y: 480,
              width: 200,
              height: 200)
        )
        
        let iconView10 = SquareView6(
           frame: CGRect.init(
              x: 170, y: 480,
              width: 200,
              height: 200)
        )
        
        let label = UILabel(frame: CGRect(x: 215, y: 90, width: 200, height: 21))
        //label.font = UIFont.preferredFont(forTextStyle: .footnote)
        label.textColor = .white
        //label.center = CGPoint(x: 200, y: 100)
        label.text = "Квадрат"
        
        self.view.addSubview(iconView1)
        self.view.addSubview(iconView2)
        self.view.addSubview(iconView3)
        self.view.addSubview(label)
        self.view.addSubview(iconView4)
        self.view.addSubview(iconView5)
        self.view.addSubview(iconView6)
        self.view.addSubview(iconView7)
        self.view.addSubview(iconView8)
        self.view.addSubview(iconView9)
        self.view.addSubview(iconView10)
        
        var collision: UICollisionBehavior!
        collision = UICollisionBehavior(items: [square])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
    }
}

class SquareView1: UIView {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {

        SquareStyleKit.drawSquare(
           frame: rect,
           resizing: .aspectFit,
           squareColor: UIColor.red
        )
    }
}

class SquareView2: UIView {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {

        SquareStyleKit.drawSquare(
           frame: rect,
           resizing: .aspectFit,
           squareColor: UIColor.green
        )
    }
}

class SquareView3: UIView {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {

        SquareStyleKit.drawSquare(
           frame: rect,
           resizing: .aspectFit,
           squareColor: UIColor.blue
        )
    }
}

class SquareView4: UIView {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {

        SquareStyleKit.drawSquare(
           frame: rect,
           resizing: .aspectFit,
           squareColor: UIColor.systemPink
        )
    }
}

class SquareView5: UIView {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {

        SquareStyleKit.drawSquare(
           frame: rect,
           resizing: .aspectFit,
           squareColor: UIColor.black
        )
    }
}

class SquareView6: UIView {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {

        TransSquareStyleKit.drawSquare(
           frame: rect,
           resizing: .aspectFit,
           squareColor: UIColor.black
        )
    }
}
