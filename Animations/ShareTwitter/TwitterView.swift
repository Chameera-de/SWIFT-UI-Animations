//
//  CreditCard.swift
//  InstaPosts
//
//  Created by Chameera De Silva on 10/02/2021.
//  Copyright © 2021 Chameera De. All rights reserved.
//

import SwiftUI

struct TwitterView: View {
    var body: some View {
        Twitter(width: 250,
                height: 250,
                curveHeight: 10,
                curveLength: 1.5,
                speed: 1,
                color: Color(UIColor(red: 0.35, green: 0.80, blue: 0.93, alpha: 1.00))
        )
    }
}

struct TwitterView_Previews: PreviewProvider {
    static var previews: some View {
        TwitterView()
    }
}
