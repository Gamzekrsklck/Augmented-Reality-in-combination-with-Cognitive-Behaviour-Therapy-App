//
//  ViewController.swift
//  ARCBT
//
//  Created by Temurhon  on 12/04/2019.
//  Copyright © 2019 Temurhon . All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images: [String] = ["0","1","2"]
    var frame = CGRect(x:0,y:0,width:0,height:0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<images.count {
            frame.origin.x = scrollView.frame.size.width * CGFloat(i)
            frame.size = scrollView.frame.size
            pageControl.numberOfPages = images.count //this will be three and this will determine the number amount of images will show and the dots
            //initialise imageview and set it for one our images
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named:images[i])
            self.scrollView.addSubview(imgView)
        }
        //content size
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(images.count)), height: scrollView.frame.size.height)
        scrollView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //scrolview method
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //what page we are on
        var pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pageNumber)
    }
    
}

