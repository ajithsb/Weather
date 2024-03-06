//
//  FrameworkView.swift
//  Weather
//
//  Created by Aj on 05/03/24.
//

import SwiftUI

struct FrameworkView: View {
    @StateObject var viewModel = FrameworkViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            VStack{
                                Image(framework.imageName)
                                    .resizable()
                                    .frame(width: 95, height: 95)
                                CustomTextView(title: framework.name ,fonSize: 22, textColor: .white).scaledToFit().minimumScaleFactor(0.6)
                            }
                        }
                    }
                }
            }.padding(.top , 20)
            .navigationTitle("Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    FrameworkView()
}
