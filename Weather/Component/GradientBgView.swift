//
//  GradientBgView.swift
//  Weather
//
//  Created by Aj on 14/02/24.
//

import SwiftUI

struct GradientBgView: View {
    
    // MARK: - Properties
    var colors : [Color] = [.blue, .black]
    
    var body: some View {
        LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

#Preview {
    GradientBgView()
}
