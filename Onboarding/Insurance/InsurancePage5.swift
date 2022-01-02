//
//  InsurancePage5.swift
//  Onboarding
//
//  Created by mhs on 30/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct InsurancePage5: View {
    var body: some View {
        if #available(iOS 14.0, *) {
            ZStack {
                VStack(spacing: 0) {
                    Spacer()
                        .frame(maxWidth: .infinity, maxHeight: 40).background(Color("InsuranceColor"))
                    
                    VStack(alignment: .leading) {
                        Image("arrow_white").padding().onTapGesture(perform: {
                            //presentationMode.wrappedValue.dismiss()
                        })
                        Text("Motor Insurance")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 0))
                            .font(.system(size: 30, weight: .semibold))
                            .foregroundColor(Color("WhiteColor"))
                    }
                    .frame(width: .infinity, height: 100, alignment: .leading)
                    .background(Color("InsuranceColor"))
                   
                    Text("Yalla Insurance - Car")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(Color("InsuranceColor"))
                        .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                    
                    InsuranceSelector(headerText: "Car Brand", placeHolderText: "Select your car brand", image: "Next-2")
                    
                    InsuranceSelector(headerText: "Car Model", placeHolderText: "Select your car model", image: "Next-2")
                    
                    InsuranceSelector(headerText: "Manufacturing Year", placeHolderText: "Select Manufacturing Year", image: "Next-2")
                    
                    InsuranceSelector(headerText: "Car Current Value (EGP)", placeHolderText: "0", image: "Next-2")
                    
                    InsuranceSelector(headerText: "Owner Age", placeHolderText: "Example(25)", image: "Next-3")
                    
                    
                    ForEach(0..<7) { _ in
                        Spacer()
                    }
                    
                    Text("VIEW OFFERS")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color("WhiteColor"))
                        .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                        .background(Color("InsuranceColor"))
                        .cornerRadius(8).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        .padding()

                    
                }.background(Color("WhiteSecondary"))
                
            }
            .frame(width: .infinity, height: .infinity, alignment: .center)
            .ignoresSafeArea()
        } else {
            // Fallback on earlier versions
        }
    }
}

struct InsuranceSelector: View {
    
    var headerText: String
    var placeHolderText: String
    var image: String
    
    var body: some View {
        VStack (alignment: .leading){
            Text(headerText)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 12, weight: .bold))
                .foregroundColor(Color("InsuranceColor"))
                .padding(EdgeInsets(top: 20, leading: 10, bottom: 0, trailing: 0))
            
            ZStack (alignment: .leading) {
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .fill(Color.white)
                VStack (alignment: .leading) {
                    HStack {
                        Text(placeHolderText)
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color("NatureColor"))
                        
                        Spacer()
                        
                        Image(image)
                        
                    }
                    .padding(EdgeInsets(top: 5, leading: 25, bottom: 0, trailing: 15))
                    
                }
                
            }.frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
        }.padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
    }
}

struct InsurancePage5_Previews: PreviewProvider {
    static var previews: some View {
        InsurancePage5()
    }
}
