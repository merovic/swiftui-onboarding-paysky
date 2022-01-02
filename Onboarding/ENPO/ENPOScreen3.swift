//
//  ENPOScreen3.swift
//  Onboarding
//
//  Created by mhs on 21/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct ENPOScreen3: View {
    var body: some View {
        ZStack {
            Image("Image3")
                .resizable()
                .padding(.bottom, 80)
                .frame(maxWidth: .infinity)
            VStack (alignment: .trailing) {
                Image("close_white")
                Spacer()
                HStack {
                    Image("Photo4")
                        .clipped()
                        .cornerRadius(5)
                        .frame(width: 80, height: 80)
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Taxas Chicken")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color("ENPOColor"))
                            .lineLimit(3)
                        HStack(spacing: 2.0) {
                            Image("rate_red")
                            Image("rate_red")
                            Image("rate_red")
                            Image("rate_red")
                        }
                        Text("24 Reviews")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color("BoldGrey"))
                        Text("Eat & Drink")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color("GreyColor"))
                    }
                    Spacer()
                    
                }.frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).fill(Color("WhiteColor")))
            }
        }.frame(height: 250)
        
        Spacer()
}

struct ENPOScreen3_Previews: PreviewProvider {
    static var previews: some View {
        ENPOScreen3()
    }
}
}
