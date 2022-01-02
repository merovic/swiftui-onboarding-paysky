//
//  OffersTitleItem.swift
//  Onboarding
//
//  Created by mhs on 21/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct OffersTitleItem: View {
    
    var selectedId = "1"
    
    var body: some View {
        VStack(spacing: 5) {
            HStack {
                Image("All")
                .frame(width: 30, height: 30)
                
                Text("All Offers")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(Color("ENPOColor"))
            }
            ZStack{}
                .frame(width: .infinity, height: 7)
                .background(Color("ENPOColor"))
                
        }
    }
    
    init(selectedId: String) {
        self.selectedId = selectedId
    }
}

struct OffersTitleItem_Previews: PreviewProvider {
    static var previews: some View {
        OffersTitleItem(selectedId: "1")
    }
}
