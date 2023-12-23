//
//  Const.swift
//  multiply
//
//  Created by Rodney Witcher, II on 12/6/21.
//

import Foundation

struct EquationGrid {
    var rowCount: Int = 2
    var columnCount: Int = 2
    
    var board: [[Equation]] = []
    
    init(rowCount: Int, columnCount: Int) {
        if rowCount == 0 || columnCount == 0 {
        } else {
            for row in 0..<rowCount {
                var currentRow: [Equation] = []
                for col in 0..<columnCount {
                    let lhsStr = "\(row) X \(col)"
                    let rhsStr = "\(row*col)"
                    currentRow.append( Equation(lhs: lhsStr, rhs: rhsStr) )
                }
                board.append( currentRow )
//                print("currentRow: \(currentRow)")
            }
        }
    }
}
