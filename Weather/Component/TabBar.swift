//
//  TabBar.swift
//  Weather
//
//  Created by Aj on 06/03/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            NavigationView {
                HomeView(dataModel: configureData())
            }
            .tabItem {
                Image(systemName: "sunset.fill")
                Text("Weather")
            }
            
            NavigationView {
                FrameworkView()
            }
            .tabItem {
                Image(systemName: "2.circle")
                Text("Frameworks")
            }
            
        }
    }
}

#Preview {
    TabBar()
}
