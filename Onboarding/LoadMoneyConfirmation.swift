//
//  LoadMoneyConfirmation.swift
//  Onboarding
//
//  Created by mhs on 20/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct LoadMoneyConfirmation: View {
    var body: some View {
        VStack {
            Image("banner_done")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
            VStack(spacing: 5){
                Text("Your Voucher Number")
                    .font(.headline)
                Text("123456789")
                    .font(.headline)
                    .foregroundColor(.blue)
                Text("has been redeemed")
                    .font(.headline)
                Text("successfully and will reflect in")
                    .font(.headline)
                Text("your balance in 15 minites")
                    .font(.headline)
            }
           
        }
    }
}

struct LoadMoneyConfirmation_Previews: PreviewProvider {
    static var previews: some View {
        LoadMoneyConfirmation()
    }
}
