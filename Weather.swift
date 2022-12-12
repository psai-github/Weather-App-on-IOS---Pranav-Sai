//
//  Weather.swift
//  Swift-UI_Weather
//
//  Created by Pranav Sai on 12/9/22.
//


import Foundation

struct Weather {
  
  let city: String
  let temperature: String
  let description: String
  let iconName: String
  
  init(response: APIResponse){
    city = response.name
    temperature = "\(Int(response.main.temp))"
    description = response.weather.first?.description ?? ""
    iconName = response.weather.first?.iconName ?? ""
  }
  
}
