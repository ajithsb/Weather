//
//  ContentView.swift
//  Weather
//
//  Created by Aj on 12/02/24.
//

import SwiftUI

struct ContentView: View {    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .black], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            VStack(spacing:10) {
                CustomTextView(title: "Barcelona, CA").padding()
                Image(systemName: "cloud.sun.fill").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 170).padding(.top)
                CustomTextView(title: "76°",fonSize: 72).padding(.bottom, 50).padding(.top, 30)
                
                HStack {
                    Spacer()
                    ForEach(0..<5) { _ in
                        ExtractedView()
                        Spacer()
                    }
                }
                CustomButton().padding(.top, 50)
                
                Spacer()
                
            }
        }
    }
}


struct CustomTextView: View {
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

struct ExtractedView: View {
    var body: some View {
        VStack(spacing: 10){
            CustomTextView(title: "Mon".uppercased(),fonSize: 15, fontWeight: .medium)
            Image(systemName: "cloud.sun.fill").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 40)
            CustomTextView(title: "76°", fonSize: 28,fontWeight: .bold)
            
        }
    }
}

struct CustomButton: View {
    var title: String = "Change Day Time"
    var background: Color = .white
    var titleColor: Color = .blue
    var cornerRadius: CGFloat = 10
    var fontSize: CGFloat = 25
    var fontWeight: Font.Weight = .semibold
    var buttonFrame: CGSize = CGSize(width: UIScreen.main.bounds.width * 0.8, height: 60) // Example size
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
    ContentView()
}

struct DataModel {
    let city: String
    let temp: String
    let weatherImge: String
    let buttonTitle: String
    var weedays:[WeekDays]
    
}
struct WeekDays {
    let city: String
    let temp: String
    let weatherImge: String
}
