//
//  Equation.swift
//  multiply
//
//  Created by Rodney Witcher, II on 12/6/21.
//

import Foundation

struct Equation : Identifiable, Hashable {
    var id = UUID()
    
    var lhs: String
    var rhs: String
}
