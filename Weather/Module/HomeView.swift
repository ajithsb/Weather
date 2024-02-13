//
//  ContentView.swift
//  Weather
//
//  Created by Aj on 12/02/24.
//

import SwiftUI

struct HomeView: View {
    var dataModel: DataModel
    var body: some View {
        ZStack {
            GradientBgView(colors: [.blue , Color(#colorLiteral(red: 0.5642963648, green: 0.8185990453, blue: 0.8406264186, alpha: 1))])
            
            VStack(spacing:10) {
                CustomTextView(title: dataModel.city).padding()
                Image(systemName: dataModel.weatherImge)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170)
                    .padding(.top)
                
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
                    // Handle button tap action
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

