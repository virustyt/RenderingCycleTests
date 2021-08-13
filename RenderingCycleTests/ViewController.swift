//
//  ViewController.swift
//  RenderingCycleTests
//
//  Created by Vladimir Oleinikov on 08.08.2021.
//

import UIKit

class ViewController: UIViewController {

    let imageView = UIImageView()
    let scrollView =  ScrollView()
    var index = 0
    
    override func viewWillLayoutSubviews() {
        print("(\(index))ViewWillLayoutSubviews.(View)     width-\(scrollView.frame.width)       height-\(scrollView.frame.height)) <- scrollView")
    }
    
    override func viewDidLayoutSubviews() {
        print("(\(index))ViewDidLayoutSubviews.(View)      width-\(scrollView.frame.width)       height-\(scrollView.frame.height) <- scrollView\n")
        
        print("imageView.bounds.size - \(imageView.bounds.size)")
        print("imageView.image.size - \(imageView.image?.size)")

        index += 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage.init(named: "Vampire Toucan.jpg")
        scrollView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor)
        ])
    }
}


extension ViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
}
