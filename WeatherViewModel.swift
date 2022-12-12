//
//  WeatherViewModel.swift
//  Swift-UI_Weather
//
//  Created by Pranav Sai on 12/9/22.
//


import Foundation

class WeatherViewModel: ObservableObject {
    
    @Published var cityName: String = "City Name"
    @Published var temperature: String = "--"
    @Published var weatherDescription: String = "--"
    @Published var iconName: String = "default"
    
    public let weatherService: WeatherService
    
    init(weatherService: WeatherService){
        self.weatherService = weatherService
    }
    
    func refresh(){
        weatherService.loadWeatherData{ weather in
            DispatchQueue.main.async {
                self.cityName = weather.city
                self.temperature = "\(weather.temperature)°C"
                self.weatherDescription = weather.description.capitalized
                self.iconName = weather.iconName.lowercased()
            }
            
        }
    }
    
}
