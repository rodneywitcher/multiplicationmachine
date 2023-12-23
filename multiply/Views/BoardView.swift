//
//  BoardView.swift
//  multiply
//
//  Created by Rodney Witcher, II on 12/2/21.
//

import SwiftUI

struct BoardView: View {
    let boardRows:[[Equation]] = EquationGrid(rowCount: 10, columnCount: 10).board
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 0) {
                Text("Multiplication Machine")
                    .font(.system(size: titleSize))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(2)
                    .foregroundColor(.white)
                VStack {
                    Text("Click on any white square to reveal the answer.")
                        .foregroundColor(.white)
                        .font(.system(size: subTitleSize))
                    Text("Click on any red square to hide the answer.")
                    .foregroundColor(.white)
                    .font(.system(size: subTitleSize))
                }
                .padding(7)
                ForEach(boardRows, id: \.self) { row in
                    BoardRowView(row: row).padding(matrixPadding/2)
                }
            }
            .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height, alignment: .top)
            .padding(40)
//            .background(Color.green)
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .top)
        .background(Color.blue)
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.black, lineWidth: 2)
        )
        .onAppear() {
            print("width x height: \(UIScreen.main.bounds.size.width) x \(UIScreen.main.bounds.size.height)")
        }
    
    }
}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BoardView()
                .preferredColorScheme(.light)
                .previewDevice("iPad (8th generation)")
//            BoardView()
        }
    }
}
