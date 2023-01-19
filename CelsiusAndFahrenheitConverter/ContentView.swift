//
//  ContentView.swift
//  CelsiusAndFahrenheitConverter
//
//  Created by dyhidrogen monoxide on 2023/1/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            // MARK: Stored properties
            @State var degreeInCelsius: Double = 17
        
            @State var degreeInFahrenheit: Double = 70
           
           // MARK: Computed Properties
           var fahrenheit: Double {
               return (9 / 5) * degreeInCelsius + 32
           }
           
           var calcius: Double {
               return (degreeInFahrenheit - 32) / (9 / 5)
               
               
               var fahrenheit: Double {
                   return (9 / 5) * degreeInCelsius + 32
               }
               
               var calcius: Double {
                   return (degreeInFahrenheit - 32) / (9 / 5)
               }
               //User interfaces
               var body: some View {
                   VStack {
                       
                       VStack {
                           Text("Celsius to Fahrenheit")
                               .font(.title2)
                               .bold()
                           
                           Slider(value: $degreeInCelsius,
                                  in: 0...100,
                                  label: { Text("degreeInCelsius") },
                                  minimumValueLabel: { Text("0") },
                                  maximumValueLabel: { Text("100") })
                           .padding(.horizontal, 30)
                           
                           Text("Celsius: " + "\(degreeInCelsius)")
                           
                           Text("Fahrenheit: " + "\(fahrenheit)")
                       }
                       .padding(.bottom, 50.0)
                       
                       
                       
                       
                       VStack {
                           Text("Fahrenheit to Celsius")
                               .font(.title2)
                               .bold()
                           
                           Slider(value: $degreeInFahrenheit,
                                  in: 0...100,
                                  label: { Text("degreeInFahrenheit") },
                                  minimumValueLabel: { Text("0") },
                                  maximumValueLabel: { Text("100") })
                           .padding(.horizontal, 30.0)
                           
                           Text("Celsius: " + "\(degreeInCelsius)")
                           
                           Text("Fahrenheit: " + "\(fahrenheit)")
                       }
                       .padding(.bottom, 50.0)
                       
                   }
               }
               
               struct ContentView_Previews: PreviewProvider {
                   static var previews: some View {
                       ContentView()
                   }
               }
           }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

