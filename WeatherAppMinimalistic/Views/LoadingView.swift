//
//  LoadingView.swift
//  WeatherAppMinimalistic
//
//  Created by Nikita Murzin on 23/10/2023.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
       ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .black))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
