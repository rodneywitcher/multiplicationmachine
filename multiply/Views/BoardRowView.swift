//
//  BoardView.swift
//  multiply
//
//  Created by Rodney Witcher, II on 12/2/21.
//

import SwiftUI

struct BoardRowView: View {
    @State var row: [Equation] = []
    
    var body: some View {
        HStack(spacing: matrixPadding) {
            ForEach(row, id: \.self) { cell in
                BoardCellView(cell: cell)
            }
        }
    }
}

struct BoardRowView_Previews: PreviewProvider {
    static var previews: some View {
        BoardRowView(row: [Equation(lhs: "3 X 3", rhs: "9"), Equation(lhs: "3 X 2", rhs: "6")])
    }
}
