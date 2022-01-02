//
//  VoucherItem.swift
//  Onboarding
//
//  Created by mhs on 19/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct VoucherItem: View {
    var body: some View {
        Image ("banner_done")
            .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
            .cornerRadius(5)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.blue, lineWidth: 0.5))
            .shadow(radius: 5)
    }
}

struct VoucherItem_Previews: PreviewProvider {
    static var previews: some View {
        VoucherItem()
    }
}
