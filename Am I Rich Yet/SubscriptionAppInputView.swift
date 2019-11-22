//
//  SubscriptionAppInputView.swift
//  Am I Rich Yet
//
//  Created by Richard Poutier on 11/21/19.
//  Copyright © 2019 richardpoutier. All rights reserved.
//

import SwiftUI

struct SubscriptionAppInputView: View {
    @State var price: String
    @State var numberOfUsers: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Subscription Model")
                .font(.title)
            VStack {
                HStack{
                    Text("Price")
                    TextField("$4.00", text: $price)
                        .multilineTextAlignment(.trailing)
                }
                HStack{
                    Text("Monthly Users")
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

struct SubscriptionAppInputView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionAppInputView(price: "$5.00", numberOfUsers: "1234")
    }
}
