//
//  InAppPurchaseInputView.swift
//  Am I Rich Yet
//
//  Created by Richard Poutier on 11/21/19.
//  Copyright © 2019 richardpoutier. All rights reserved.
//

import SwiftUI

struct InAppPurchaseInputView: View {
    @State var averagePrice: String
    @State var numberOfUsers: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("In App Purchase Model")
                .font(.title)
            VStack {
                HStack{
                    Text("Average Price per user")
                    TextField("$4.00", text: $averagePrice)
                        .multilineTextAlignment(.trailing)
                }
                HStack{
                    Text("Monthly Active Users")
                    TextField("1,234", text: $numberOfUsers)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.trailing)
                }
            }
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .padding(.top, 16.0)
                .shadow(radius:8)
        }
    }
}

struct InAppPurchaseInputView_Previews: PreviewProvider {
    static var previews: some View {
        InAppPurchaseInputView(averagePrice: "$1.00", numberOfUsers: "1234")
    }
}
