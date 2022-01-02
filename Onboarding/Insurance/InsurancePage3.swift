//
//  InsurancePage3.swift
//  Onboarding
//
//  Created by mhs on 30/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct InsurancePage3: View {
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
                        Text("Self Insurance")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 0))
                            .font(.system(size: 30, weight: .semibold))
                            .foregroundColor(Color("WhiteColor"))
                    }
                    .frame(width: .infinity, height: 100, alignment: .leading)
                    .background(Color("InsuranceColor"))
                   
                    ScrollView {
                        LazyVStack {
                            InsuranceItem2()
                            InsuranceItem2()
                        }
                    }
                    
                    ForEach(0..<7) { _ in
                        Spacer()
                    }
                    
                }.background(Color("WhiteSecondary"))
                
            }
            .frame(width: .infinity, height: .infinity, alignment: .center)
            .ignoresSafeArea()
        } else {
            // Fallback on earlier versions
        }
    }
}

struct InsuranceItem2: View {
    var body: some View {
        ZStack (alignment: .center) {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color.white)
            VStack (alignment: .center, spacing: 0){
                
                VStack (alignment: .leading) {
                    Image("cbbxku9tte5kyew9sujy")
                    Divider()
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
                  
                
                HStack (spacing: 0){
                    
                    VStack (alignment: .leading, spacing: 10){
                        
                        Text("Coverage per person:")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(Color("InsuranceColor"))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                        
                        Text("Doctors visits:")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(Color("InsuranceColor"))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                        
                        Text("Hospitalization:")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(Color("InsuranceColor"))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                        
                        Text("Dental:")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(Color("InsuranceColor"))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                        
                        Text("Optical:")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(Color("InsuranceColor"))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                        
                        Text("Annual premium:")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(Color("ZamalekColor"))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                        
                    }
                    
                    Spacer()
                    
                    VStack (alignment: .leading, spacing: 10){
                        
                        Text("Up to 50.000 EGP")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color("NatureColor"))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                        
                        Text("100% covered up to 24 visits per member/year")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color("NatureColor"))
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        
                        Text("100% covered")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color("NatureColor"))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                        
                        Text("Not covered")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color("NatureColor"))
                            .multilineTextAlignment(.center)
                        
                        Text("Not covered")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color("NatureColor"))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                        
                        Text("13.500 L.E")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color("ZamalekColor"))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                    }
                    
                }.frame(maxWidth: .infinity, alignment: .center)
                .padding()
               
                Divider()
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                
                HStack {
                    
                    Text("Show more details")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color("InsuranceColor"))
                        .multilineTextAlignment(.leading)
                        
                    Spacer()
                    
                    Text("Buy This Offer")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(Color("WhiteColor"))
                        .frame(maxWidth: 130, minHeight: 35, maxHeight: 35, alignment: .center)
                        .background(Color("InsuranceColor"))
                        .cornerRadius(8).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        
                }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
               
            }
            
        }
        .padding(EdgeInsets(top: 20, leading: 10, bottom: 10, trailing: 10))
        .frame(maxWidth: .infinity, maxHeight: 350, alignment: .center)
        
    }
    
}

struct InsurancePage3_Previews: PreviewProvider {
    static var previews: some View {
        InsurancePage3()
    }
}
