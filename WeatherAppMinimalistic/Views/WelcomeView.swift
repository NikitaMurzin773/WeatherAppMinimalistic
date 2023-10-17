//
//  WelcomeView.swift
//  WeatherAppMinimalistic
//
//  Created by Nikita Murzin on 23/10/2023.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager:
    LocationManager
    
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Welcome to the weather App")
                    .bold().font(.title)
                Text("Please share your current location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestlocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }

}
