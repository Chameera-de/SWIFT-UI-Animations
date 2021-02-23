//
//  CreditCard.swift
//  InstaPosts
//
//  Created by Chameera De Silva on 10/02/2021.
//  Copyright © 2021 Chameera De. All rights reserved.
//

import SwiftUI

struct Stars: View {
    var body: some View {
        HStack(spacing: 2) {
            ForEach(1..<6) { _ in
                Image(systemName: "star.fill")
                .resizable()
            }
        }
    }
}

struct Stars_Previews: PreviewProvider {
    static var previews: some View {
        Stars()
    }
}
