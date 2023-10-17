//
//  ContentView.swift
//  WeatherAppMinimalistic
//
//  Created by Nikita Murzin on 17/10/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                Text("Your coordinates are:\(location.latitude), \(location.longitude)")
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else { WelcomeView()
                        .environmentObject(locationManager)
                    
                }
            }
        }
        .background(Color(hue: 0.582, saturation: 0.332, brightness: 0.822))
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
  
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
