//
//  SliderItem.swift
//  Onboarding
//
//  Created by mhs on 21/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct SliderItem: View {
    var body: some View {
        ZStack (alignment: .center) {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color.white)
            HStack {
                Image("Image")
                VStack(alignment: .leading, spacing: 5) {
                    Text("Field hockey 2005 continues")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color("ZamalekColor"))
                    
                    Text("13 hours ago")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color("NatureColor"))
                        
                    Text("The field hockey team of Zamalek club, born in 2005, continues its training on the stadiums of Al-Jazira")
                        .font(.system(size: 10, weight: .medium))
                        .foregroundColor(Color("BlackColor"))
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                }
            }
            
        }.padding()
        .frame(maxWidth: .infinity, maxHeight: 120, alignment: .center)
    }
}

struct SliderItem_Previews: PreviewProvider {
    static var previews: some View {
        SliderItem()
    }
}
