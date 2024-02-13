//
//  CustomTextView.swift
//  Weather
//
//  Created by Aj on 14/02/24.
//

import SwiftUI

struct CustomTextView: View {
    
    // MARK: - Properties
    var title: String = "Title"
    var fonSize : CGFloat = 35
    var fontWeight : Font.Weight = .regular
    
    var font: Font {
        Font.system(size: fonSize, weight: fontWeight)
    }
    var textColor : Color = .white
    
    var body: some View {
        Text(title).font(font).foregroundStyle(textColor)
    }
}

#Preview {
    CustomTextView()
}
