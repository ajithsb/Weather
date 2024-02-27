//
//  GradientBgView.swift
//  Weather
//
//  Created by Aj on 14/02/24.
//

import SwiftUI

struct GradientBgView: View {
    
    // MARK: - Properties
    var colors : [Color] = [.blue, Color(#colorLiteral(red: 0.5642963648, green: 0.8185990453, blue: 0.8406264186, alpha: 1))]
    @Binding var isDark : Bool

    var body: some View {
        LinearGradient(colors: isDark ? [.blue, .black] : colors, startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

#Preview {
    GradientBgView(isDark: Binding.constant(false))
}
