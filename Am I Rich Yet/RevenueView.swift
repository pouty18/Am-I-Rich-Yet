//
//  RevenueView.swift
//  Am I Rich Yet
//
//  Created by Richard Poutier on 11/22/19.
//  Copyright © 2019 richardpoutier. All rights reserved.
//

import SwiftUI

struct RevenueView: View {
    var title: String
    var amount: String
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .padding(.bottom, 8)
            Text(amount)
                .font(.subheadline)
        }
            .padding(24.0)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .padding()
            .shadow(radius:8)
    }
}

struct RevenueView_Previews: PreviewProvider {
    static var previews: some View {
        RevenueView(title: "Monthly", amount: "$3.00")
    }
}
