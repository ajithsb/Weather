//
//  WeekDayWeatherView.swift
//  Weather
//
//  Created by Aj on 14/02/24.
//

import SwiftUI

struct WeekDayWeatherView: View {
    var weekday: WeekDayWeather = WeekDayWeather(day: "", temp: "", weatherImge: "")
    
    var body: some View {
        VStack(spacing: 10){
            CustomTextView(title: weekday.day.uppercased(),fonSize: 15, fontWeight: .medium)
            Image(systemName: weekday.weatherImge)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .padding(.vertical, 5)
            CustomTextView(title: weekday.temp, fonSize: 22,fontWeight: .bold)
        }
    }
}

#Preview {
    WeekDayWeatherView()
}
