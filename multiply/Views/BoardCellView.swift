//
//  BoardView.swift
//  multiply
//
//  Created by Rodney Witcher, II on 12/2/21.
//

import SwiftUI

struct BoardCellView: View {
    @State var cell: Equation
    @State var isOn: Bool = false
    
    var body: some View {
        Button(action: {
            isOn.toggle()
        }, label: {
            VStack {
                if isOn {
                    Text(cell.rhs)
                        .font(.system(size: rhsFontSize))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(isOn ? .white : .black)
                }
                Text(cell.lhs)
                    .font(isOn ? .system(size: lhsFontSize) : .system(size: lhsFontSize))
                    .fontWeight(isOn ? .none : .bold)
                    .foregroundColor(isOn ? .white : .black)
                    .frame(width: cellWidth)
            }
            .padding(0)
//            .background(isOn ? Color.pink : Color.white)
            .frame(width: cellWidth, height: cellWidth, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        })
        .padding(1)
        .background(isOn ? Color.pink : Color.white)
        .border(isOn ? Color.white : Color.gray, width: 2)
        .onAppear() {
            print("cell: width x height = \(cellWidth) rhsFontSize = \(rhsFontSize) matrixPadding = \(matrixPadding)")
        }
    }
}

struct BoardCellView_Previews: PreviewProvider {
    static var previews: some View {
        BoardCellView(cell: Equation(lhs: "2 X 2", rhs: "4"), isOn: true)
            .previewDevice("iPad Pro (12.9-inch) (4th generation)")
    }
}
