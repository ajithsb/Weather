//
//  DataModel.swift
//  Weather
//
//  Created by Aj on 13/02/24.
//

import Foundation
import SwiftUI

struct DataModel {
    let city: String
    let temp: String
    let weatherImge: String
    let buttonTitle: String
    var weekdays:[WeekDayWeather]
}

struct WeekDayWeather {
    let day: String
    let temp: String
    let weatherImge: String
}

func configureData() -> DataModel {
    var weekdaysData = [WeekDayWeather]()
    
    for day in ["Mon", "Tue", "Wed", "Thu", "Fri"] {
        let (randomTemperature, randomImageName) = generateRandomTemperatureAndImage()
        let weekday = WeekDayWeather(day: day, temp: "\(randomTemperature)°C", weatherImge: randomImageName)
        weekdaysData.append(weekday)
    }
    let randomData = generateRandomTemperatureAndImage()

    return DataModel(city: "Barcelona, CA", temp: "\(randomData.temperature)°C", weatherImge: randomData.imageName, buttonTitle: "Change Day Time", weekdays: weekdaysData)
}

func generateRandomTemperatureAndImage() -> (temperature: Int, imageName: String) {
    
    let randomTemperature = Int.random(in: -10...40)
    var imageName = ""
    
    switch randomTemperature {
    case ..<0:
        imageName = "snow"
    case 0..<11:
        imageName = "wind.snow"
    case 11..<21:
        imageName = "cloud.sun.fill"
    case 21..<31:
        imageName = "sun.max.fill"
    default:
        imageName = "sunset.fill"
    }
    
    return (randomTemperature, imageName)
}
