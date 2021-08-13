//
//  scrollView.swift
//  RenderingCycleTests
//
//  Created by Vladimir Oleinikov on 12.08.2021.
//

import UIKit

class ScrollView: UIScrollView {

    var index = 0
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //print("(\(index))  layoutSubviews.(scrollView)   width-\(self.frame.width)       height-\(self.frame.height)")
        index += 1
        
    }

}
