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
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Am I Rich Yet?")
                    .font(.title)
                Spacer()
            }
            Text("Total Revnue")
            
            Picker(selection: $inputType, label: Text("Select how you make money")) {
                Text("Paid App").tag(0)
                Text("Subscription").tag(1)
                Text("In-app Purchase").tag(2)
            }.pickerStyle(SegmentedPickerStyle())
            
            Spacer()
            if inputType == 0 {
                Text("Paid App Model")
            } else if inputType == 1 {
                Text("Subscription Model")
            } else if inputType == 2 {
                Text("In-app Purchase Model")
            }
            Spacer()
        } .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
