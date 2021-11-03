//
//  Home.swift
//  SwiftUI_FoodAppUI_CustomTabBar
//
//  Created by park kyung seok on 2021/11/04.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        VStack {
            HStack {
                
                Button(action: { }) {
                    Image(systemName: "circle.grid.2x2")
                        .font(.title2)
                        .padding(10)
                        .background(Color("pink").opacity(0.12))
                        .foregroundColor(Color.pink)
                        .cornerRadius(8)
                }
                
                Spacer()
                
                Button(action: { }) {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding(10)
                        .background(Color.black.opacity(0.12))
                        .foregroundColor(Color.pink)
                        .cornerRadius(8)
                }
            }
            .overlay(
                
                HStack(spacing: 4) {
                    
                    Image("mapmarker")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                        .foregroundColor(Color.pink)
                    
                    Text("California, US")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
            )
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 15) {
                    
                    // Top Banner
                    HStack(spacing: 20) {
                        
                        VStack(alignment: .leading, spacing: 8) {
                            
                            (
                                Text("The Fastest in Delivery ")
                                +
                                Text("Food")
                                    .foregroundColor(Color.pink)
                            )
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            // Button
                            Button(action: { }) {
                                Text("Order Now")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal)
                                    .background(Color.pink)
                                    .clipShape(Capsule())
                            }
                        }
                        .padding(.leading)
                        
                        Spacer(minLength: 0)
                        
                        Image("delivery-man")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: getRect().width / 3.5)
                    }
                    .padding()
                    .background(Color("lightYellow"))
                    .cornerRadius(15)
                    .padding(.horizontal)

                }
                .padding(.vertical)
            }
        }
        .background(Color.black.opacity(0.03).ignoresSafeArea())
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

extension View {
    func getRect() -> CGRect {
        UIScreen.main.bounds
    }
}
