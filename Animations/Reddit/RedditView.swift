//
//  CreditCard.swift
//  InstaPosts
//
//  Created by Chameera De Silva on 10/02/2021.
//  Copyright © 2021 Chameera De. All rights reserved.
//

import SwiftUI


struct RedditView: View {
    let gradient = LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .top, endPoint: .bottom)
    var body: some View {
        Reddit(width: 250,
               height: 250,
               curveHeight: 10,
               curveLength: 1.5,
               speed: 0.4,
               color: gradient
        )
            .shadow(color: .gray, radius: 2, x: 3, y: 3)
    }
}

struct RedditView_Previews: PreviewProvider {
    static var previews: some View {
        RedditView()
    }
}
