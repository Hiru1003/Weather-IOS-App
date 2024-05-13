//
//  WeatherView.swift
//  WeatherDemo
//
//  Created by Hirumi Perera on 2024-05-13.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack(alignment: .leading) {
                    VStack {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Colombo")
                                .bold()
                                .font(.title)
                            
                            Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                                .fontWeight(.light)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer()
                        
                        VStack {
                            HStack {
                                VStack(spacing: 20) {
                                    Image(systemName: "cloud")
                                        .font(.system(size: 40))
                                    
                                    Text("Cloudy")
                                }
                                .frame(width: 150, alignment: .leading)
                                
                                Spacer()
                                
                                Text("32" + "°")
                                    .font(.system(size: 100))
                                    .fontWeight(.bold)
                                    .padding()
                            }
                            
                            Spacer()
                                .frame(height:  80)
                            
                            AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2020/01/24/21/33/city-4791269_960_720.png")) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 350)
                            } placeholder: {
                                ProgressView()
                            }
                            
                            Spacer()
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack {
                        Spacer()
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Weather now")
                                .bold()
                                .padding(.bottom)
                            
                            HStack {
                                WeatherRow(logo: "thermometer", name: "Min temp", value: "29°C")
                                Spacer()
                                WeatherRow(logo: "thermometer", name: "Max temp",value: "36°C")
                            }
                            
                            HStack {
                                WeatherRow(logo: "wind", name: "Wind Speed",value: "30m/s")
                                Spacer()
                                WeatherRow(logo: "humidity", name: "Humidity",value: "82%")
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .padding(.bottom, 20)
                        .foregroundColor(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
                        .background(.white)
                        .cornerRadius(20, corners: [.topLeft, .topRight])
                    }
                }
                .edgesIgnoringSafeArea(.bottom)
                .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
                .preferredColorScheme(.dark)
            }
        }
struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
