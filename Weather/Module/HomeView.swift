//
//  ContentView.swift
//  Weather
//
//  Created by Aj on 12/02/24.
//

import SwiftUI

struct HomeView: View {
    @State private var isDark = false
    var dataModel: DataModel
    var body: some View {
        ZStack {
            GradientBgView(isDark: $isDark)
            
            VStack(spacing:10) {
                CustomTextView(title: dataModel.city).padding()
                Image(systemName: dataModel.weatherImge)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170)
                    .padding(.top)
                    .symbolRenderingMode(.multicolor)
                    .symbolEffect(
                            .variableColor
                            .iterative
                            .reversing
                    )

                
                CustomTextView(title: dataModel.temp,fonSize: 72)
                    .padding(.vertical, 30)
                
                HStack {
                    Spacer()
                    ForEach(dataModel.weekdays, id: \.day) { weekday in
                        WeekDayWeatherView(weekday: weekday)
                        Spacer()
                    }
                }
                
                CustomButton(title: dataModel.buttonTitle) {
                    isDark.toggle()
                }.padding(.top, 50)
                
                Spacer()
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(dataModel: configureData())
    }
}

