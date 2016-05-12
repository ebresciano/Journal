//
//  Entry.swift
//  Journal
//
//  Created by Eva Marie Bresciano on 5/11/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Entry: Equatable {
    var title: String
    var timeStamp: NSDate
    var bodyText: String
    
    init(title: String, timeStamp: NSDate, bodyText: String) {
    self.title = title
    self.timeStamp = timeStamp
    self.bodyText = bodyText
}
}

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return lhs.title == rhs.title && lhs.timeStamp == rhs.timeStamp && lhs.bodyText == rhs.bodyText
}

