//
//  MainView.swift
//  ButtonAndSwitch
//
//  Created by Omid Heydarzadeh on 5/13/24.
//

import SwiftUI

struct MainView: View {
    
    @State private var isWiFiOn = false
    
    var body: some View {
        VStack {
            Toggle("Wi-Fi", isOn: $isWiFiOn)
            
            Toggle("Wi-Fi", systemImage: "wifi", isOn: $isWiFiOn)
                .tint(.pink)
            
            Form {
                
                Toggle("Wi-Fi", systemImage: "wifi", isOn: $isWiFiOn)
                    .tint(.pink)
                
                Toggle("Wi-Fi", systemImage: "wifi", isOn: $isWiFiOn)
                    .tint(.orange)
                
                Toggle("Wi-Fi", systemImage: "wifi", isOn: $isWiFiOn)
                    .tint(.yellow)
                
                Toggle("Wi-Fi", systemImage: "wifi", isOn: $isWiFiOn)
                    .tint(.yellow)
                    .toggleStyle(.button)
                
                Toggle("Wi-Fi", systemImage: "wifi", isOn: $isWiFiOn)
                    .tint(.yellow)
                    .toggleStyle(.button)
                    .labelStyle(.iconOnly)
                
                Toggle("Wi-Fi", systemImage: isWiFiOn ? "wifi" : "wifi.slash", isOn: $isWiFiOn)
                    .font(.largeTitle)
                    .tint(.blue)
                    .toggleStyle(.button)
                    .labelStyle(.iconOnly)
                    .contentTransition(.symbolEffect)
            }
            
            Image(systemName: isWiFiOn ? "wifi" : "wifi.slash")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .onTapGesture { isWiFiOn.toggle() }
                .contentTransition(.symbolEffect)
                .padding()
            
        }
        .padding([.horizontal, .vertical], 25)
    }
}

#Preview {
    MainView()
}
