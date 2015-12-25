//
//  String.swift
//  SwiftToolkit
//
//  Created by Jingxiang Zhang on 12/22/15.
//  Copyright © 2015 Jingxiang Zhang. All rights reserved.
//

import UIKit

public extension String {
    
    /// Returns an empty string.
    public static var empty: String {
        get {
            return String()
        }
    }
    
    /// Returns the count of characters in string
    public var length: Int {
        get {
            return self.characters.count
        }
    }
}
