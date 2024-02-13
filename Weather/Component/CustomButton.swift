//
//  CustomButton.swift
//  Weather
//
//  Created by Aj on 14/02/24.
//

import SwiftUI

struct CustomButton: View {
    
    // MARK: - Properties
    var title: String = "Change Day Time"
    var background: Color = .white
    var titleColor: Color = .blue
    var cornerRadius: CGFloat = 10
    var fontSize: CGFloat = 25
    var fontWeight: Font.Weight = .semibold
    var buttonFrame: CGSize = CGSize(width: UIScreen.main.bounds.width * 0.8, height: 60)
    var onButtonClick: () -> Void = {}
    
    var font: Font {
        Font.system(size: fontSize, weight: fontWeight)
    }
    
    var body: some View {
        Button {
            onButtonClick()
        } label: {
            Text(title)
                .frame(width: buttonFrame.width, height: buttonFrame.height)
                .foregroundColor(titleColor)
                .background(background)
                .cornerRadius(cornerRadius)
                .font(font)
                .padding()
        }
    }
}

#Preview {
    CustomButton()
}
