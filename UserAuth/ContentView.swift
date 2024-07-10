//
//  ContentView.swift
//  UserAuth
//
//  Created by Jules Menelas on 6/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100, alignment: .topLeading)
                }
                
                HStack(spacing: 7) {
                    Image("TSHIRT_CALM_RACK FF")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200, alignment: .topLeading)
                    
                    Image("BackShirt")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200, alignment: .top)
                }
                
                NavigationLink(destination: ExistingView()) {
                    Text("Blue Monster")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                .padding()
                
                HStack(spacing: 7) {
                    Image("FrontLL")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200, alignment: .topLeading)
                    
                    Image("BackLL")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200, alignment: .top)
                }
                
                NavigationLink(destination: SecondShirt()) {
                    VStack(spacing: -10) {
                        Text("Lost Society")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                }
                .padding()
                
                HStack {
                    Link(destination: URL(string: "https://www.instagram.com/calmracksatl/?igsh=MTRocW9ta2drdXYyYQ%3D%3D&utm_source=qr")!) {
                        Image("ig")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                    }
                    
                    Link(destination: URL(string: "https://www.tiktok.com/@calmracksatl?is_from_webapp=1&sender_device=pc")!) {
                        Image("tt")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 50)
                    }
                }
                .frame(width: 250, height: 40)
                .labelStyle(IconOnlyLabelStyle())
                .imageScale(.small)
                .padding()
            }
        
        
        }
    }
}

#Preview {
    ContentView()
}

