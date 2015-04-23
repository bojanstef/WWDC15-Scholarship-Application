//
//  CellData.swift
//  BojanStefanovic
//
//  Created by Bojan Stefanovic on 2015-04-22.
//  Copyright (c) 2015 Bojan Stefanovic. All rights reserved.
//

import Foundation

class CellData {
    struct Entry {
        let image: String
        let line: String
        let labelText: String
        
        init(imageNamed: String, lineNamed: String, text: String) {
            self.image = imageNamed
            self.line = lineNamed
            self.labelText = text
        }
    }
    
    let cells = [
        Entry(imageNamed: "bojanS.jpg", lineNamed: "lineTop.jpg", text: "Born May 19th 1991 in Belgrade Serbia"),
        Entry(imageNamed: "bojanS.jpg", lineNamed: "line.jpg", text: "Competitive soccer player since birth"),
        Entry(imageNamed: "bojanS.jpg", lineNamed: "line.jpg", text: "Immigrated to Vancouver, British Columbia in 1992"),
        Entry(imageNamed: "bojanS.jpg", lineNamed: "line.jpg", text: "Graduated highschool in 2009 with a passion for technology"),
        Entry(imageNamed: "bojanS.jpg", lineNamed: "line.jpg", text: "Began general engineering in University to specialize in Software in second year"),
        Entry(imageNamed: "bojanS.jpg", lineNamed: "line.jpg", text: "Finished 3rd year and took a year off to gain experience and build personal projects"),
        Entry(imageNamed: "bojanS.jpg", lineNamed: "line.jpg", text: "Heavily focused on iOS development mainly in Swift"),
        Entry(imageNamed: "bojanS.jpg", lineNamed: "line.jpg", text: "Pushed 2 apps to the AppStore with first app at over 1000 downloads named Sorting HApp"),
        Entry(imageNamed: "bojanS.jpg", lineNamed: "line.jpg", text: "Attended first Hackathon (nwHacks 2015) and received an award from Apple for project DayFill"),
        Entry(imageNamed: "bojanS.jpg", lineNamed: "line.jpg", text: "Began learning web development"),
        Entry(imageNamed: "bojanS.jpg", lineNamed: "lineBottom.jpg", text: "Today - Applying for a scholarship to WWDC 2015 for networking opportunities and an experience of a lifetime")
    ]
    
}