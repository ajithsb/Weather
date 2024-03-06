//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Sean Allen on 10/30/20.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State private var isPresentingSafariView = false
    
    var body: some View {
        VStack {
            VStack{
                Image(framework.imageName)
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                CustomTextView(title: framework.name ,fonSize: 22, textColor: .white).scaledToFit().minimumScaleFactor(0.6)
            }
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            CustomButton(title: "Learn More", background: .red , titleColor: .white) {
                isPresentingSafariView = true
            }
        }.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .fullScreenCover(isPresented: $isPresentingSafariView) {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://www.apple.com")!)
                    .edgesIgnoringSafeArea(.all) // To ignore safe area and present full screen
            }
    }
}


#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
