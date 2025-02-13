//
//  Extensions.swift
//  SwiftUITrainingProject
//
//  Created by Khushbu Judal on 27/08/24.
//

import Foundation

extension String {
    func isValid(regexes: [String]) -> Bool {
        for regex in regexes {
            let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
            if predicate.evaluate(with: self) == true {
                return true
            }
        }
        return false
    }
}
