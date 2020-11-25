//
//  ScrollViewController.swift
//  multi-window
//
//  Created by dmtrii on 14.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController, UIScrollViewDelegate {

    var images: [String] = ["img1", "img2", "img3", "img4", "img5", "img6", "img7", "img8"]
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    lazy var pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.translatesAutoresizingMaskIntoConstraints = false
        pc.currentPageIndicatorTintColor = .black
        pc.pageIndicatorTintColor = .gray
        pc.backgroundColor = .white
        pc.numberOfPages = images.count
        return pc
    }()
    
    lazy var scrollView: UIScrollView = {
       let sv = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        sv.isPagingEnabled = true
        return sv
    }()
    
    fileprivate func setupView(){
        view.addSubview(scrollView)
        view.addSubview(pageControl)
        
        NSLayoutConstraint.activate([
            
            pageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            pageControl.leftAnchor.constraint(equalTo: view.leftAnchor),
            pageControl.rightAnchor.constraint(equalTo: view.rightAnchor),
            pageControl.heightAnchor.constraint(equalToConstant: 50)
            
            ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupFrame()

    }
    
    fileprivate func setupFrame(){
        for index in 0..<images.count {
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            let imageView = UIImageView(frame: frame)
            imageView.image = UIImage(named: images[index])
            self.scrollView.addSubview(imageView)
        }
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(images.count)), height: scrollView.frame.height)
        scrollView.delegate = self
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pageNumber)
    }

}
