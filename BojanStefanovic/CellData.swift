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
        let date: String
        let line: String
        let labelText: String
        
        init(dateText: String, lineNamed: String, text: String) {
            self.date = dateText
            self.line = lineNamed
            self.labelText = text
        }
    }
    
    let cells = [
        Entry(dateText: "May 1991", lineNamed: "lineTop.png", text: "Born in Belgrade Serbia"),
        Entry(dateText: "", lineNamed: "line.png", text: "Competitive soccer player since birth"),
        Entry(dateText: "May 1992", lineNamed: "line.png", text: "Immigrated to Vancouver British Columbia"),
        Entry(dateText: "May 2009", lineNamed: "line.png", text: "Graduated highschool with a passion for technology"),
        Entry(dateText: "", lineNamed: "line.png", text: "Worked to save up for University"),
        Entry(dateText: "Sept 2011", lineNamed: "line.png", text: "Began engineering transfer program at Kwantlen University"),
        Entry(dateText: "Sept 2012", lineNamed: "line.png", text: "Specialized in Software Engineering at University of British Columbia"),
        Entry(dateText: "May 2013", lineNamed: "line.png", text: "Finished 3rd year and took a year off to gain experience and build personal projects"),
        Entry(dateText: "", lineNamed: "line.png", text: "Heavily focused on iOS development mainly in Swift"),
        Entry(dateText: "", lineNamed: "line.png", text: "Pushed 2 apps to the AppStore - Sorting HApp and WordUp"),
        Entry(dateText: "Mar 2015", lineNamed: "line.png", text: "Attended first Hackathon - nwHacks and received an award from Apple for project DayFill"),
        Entry(dateText: "Mar 2015", lineNamed: "line.png", text: "Began learning web development"),
        Entry(dateText: "April 2015", lineNamed: "lineBottom.png", text: "Applying for scholarship to WWDC 2015 for an experience of a lifetime")
    ]
    
}
