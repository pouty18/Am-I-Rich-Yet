//
//  PaidAppInputView.swift
//  Am I Rich Yet
//
//  Created by Richard Poutier on 11/21/19.
//  Copyright © 2019 richardpoutier. All rights reserved.
//

import SwiftUI

struct PaidAppInputView: View {
    var price: Int = 0
    @State var appPrice: String
    @State var numberUsers: String
    
    var formatter = Formatter()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Paid App Model")
                .font(.title)
            VStack {
                HStack {
                    Text("App Price")
                    TextField("Enter Price", text: $appPrice)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.trailing)
                }
                HStack {
                    Text("Monthly Downloads")
                    TextField("# Users", text: $numberUsers)
                        .keyboardType(.default)
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

struct PaidAppInputView_Previews: PreviewProvider {
    static var previews: some View {
        PaidAppInputView(appPrice: "$2.00", numberUsers: "1234")
    }
}
