//
//  ArrayFlattener.swift
//  VynylChallenge
//
//  Created by Christian McMullin on 2/8/19.
//  Copyright © 2019 Christian McMullin. All rights reserved.
//

import Foundation

struct Flattener {
    
    // to return a flattened array of Int's from and arbitrary array of nested arrays I use the compactMap function to iterate through the different values, check if the value is a single Int or another array.  If it's a single Int I add that value to the property that will be returned.  If the funtion iterates into a nested array I pull out the integars by using recursion, and then append all those values to the returnValue.  After the iterations are complete I return an array of only Int's. 
    static func flattenArray(anArray: [Any]) -> [Int] {
        var returnValue: [Int] = []
        let _ = anArray.compactMap({
            if let number = $0 as? Int {
                returnValue.append(number)
            } else if let nestedArray = $0 as? [Any] {
                returnValue.append(contentsOf: flattenArray(anArray: nestedArray))
            }
        })
        print(returnValue)
        return returnValue
    }
}
