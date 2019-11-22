//
//  ContentView.swift
//  Am I Rich Yet
//
//  Created by Richard Poutier on 11/20/19.
//  Copyright © 2019 richardpoutier. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var inputType = 0
    @State var price: String = ""
    @State var numberOfUsers: String = ""
    var monthly = "$0.00"
    var yearly = "$0.00"
    var monthlyRevenue: Int = 0
    var yearlyRevenue: Int = 0
    
    var body: some View {
        ScrollView {
            VStack {
                
                HStack() {
                    VStack() {
                        Text("Total Revenue")
                        HStack {
                            if let intPrice = Int(price), let intUserCount = Int(numberOfUsers) {
                                monthlyRevenue = intPrice * intUserCount
                                yearlyRevenue = monthly * 12
                            }
                            monthly = "$\(monthlyRevenue)"
                            yearly = "$\(yearlyRevenue)"
                            
                            RevenueView(title: "Monthly", amount: monthly)
                            RevenueView(title: "Yearly", amount: yearly)
                        }
                    }
                }
                
                Picker(selection: $inputType, label: Text("Select how you make money")) {
                    Text("Paid App").tag(0)
                    Text("Subscription").tag(1)
                    Text("In-app Purchase").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                
                if inputType == 0 {
                    PaidAppInputView(appPrice: "2.00", numberUsers: "1234")
                } else if inputType == 1 {
                    SubscriptionAppInputView(price: "5.00", numberOfUsers: "1234")
                } else if inputType == 2 {
                    InAppPurchaseInputView(averagePrice: "1.00", numberOfUsers: "1234")
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
