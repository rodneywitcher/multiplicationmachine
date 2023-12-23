//
//  Utils.swift
//  multiply
//
//  Created by Rodney Witcher, II on 12/9/21.
//

import Foundation
import SwiftUI

let screenWidth = (UIScreen.main.bounds.width < UIScreen.main.bounds.height ? UIScreen.main.bounds.width : UIScreen.main.bounds.height)
let cellWidth = CGFloat(screenWidth * 0.075)
let iPadDefaultScreenWidth = CGFloat(810.0)
let sizeRatio = screenWidth / iPadDefaultScreenWidth
let rhsFontSize = 34 * (sizeRatio > 1 ? 1 : sizeRatio)
let lhsFontSize = 14 * sizeRatio
let matrixPadding = 5 * sizeRatio
let titleSize = 40 * sizeRatio
let subTitleSize = 28 * sizeRatio
