//
//  CreditCard.swift
//  InstaPosts
//
//  Created by Chameera De Silva on 10/02/2021.
//  Copyright © 2021 Chameera De. All rights reserved.
//
import SwiftUI

struct ButtonOn: View {
    
    @State var size: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color(red: 0.67, green: 0.81, blue: 1.00))
                .frame(width: size / 2, height: size / 2)
            Image(systemName: "sun.max.fill")
                .resizable()
                .foregroundColor(.yellow)
                .frame(width: size / 4, height: size / 4)
            Image(systemName: "cloud.fill")
                .resizable()
                .foregroundColor(.white)
                .frame(width: size / 6, height: size / 8)
                .offset(x: size / 10, y: size / 10)
        }
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        ButtonOn(size: 150)
    }
}

struct ButtonOff: View {
    
    @State var size: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.black)
                .frame(width: size / 2, height: size / 2)
            Image(systemName: "moon.fill")
                .resizable()
                .foregroundColor(.white)
                .frame(width: size / 4, height: size / 4)
            Image(systemName: "star.fill")
                .resizable()
                .foregroundColor(.yellow)
                .frame(width: size / 20, height: size / 20)
                .offset(x: size / 6, y: 0)
            Image(systemName: "star.fill")
                .resizable()
                .foregroundColor(.yellow)
                .frame(width: size / 20, height: size / 20)
                .offset(x: size / 15, y: -size / 8)
        }
    }
}
