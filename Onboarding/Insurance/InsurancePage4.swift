//
//  InsurancePage4.swift
//  Onboarding
//
//  Created by mhs on 30/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct InsurancePage4: View {
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
                        Text("Payment Method")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 0))
                            .font(.system(size: 30, weight: .semibold))
                            .foregroundColor(Color("WhiteColor"))
                    }
                    .frame(width: .infinity, height: 100, alignment: .leading)
                    .background(Color("InsuranceColor"))
                   
                    Text("Pay With")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(Color("BlackColor"))
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 0))
                    
                    ZStack (alignment: .leading) {
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(Color.white)
                        VStack (alignment: .leading) {
                            HStack {
                                Image("Path 8981")
                                Text("Yalla Visa Card (****5678 )")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color("BlackColor"))
                                
                            }
                            .padding(EdgeInsets(top: 5, leading: 15, bottom: 0, trailing: 15))
                            
                            ZStack (alignment: .leading){
                                Color("BG_color")
                                        .ignoresSafeArea()
                                
                                VStack (alignment: .leading, spacing: 3) {
                                    Text("Balance")
                                        .font(.system(size: 12, weight: .bold))
                                        .foregroundColor(Color("InsuranceColor"))
                                    HStack (spacing: 2){
                                        Text("5300.50")
                                            .font(.system(size: 16, weight: .light))
                                            .foregroundColor(Color("BlackColor"))
                                        Text("EGP")
                                            .font(.system(size: 12, weight: .bold))
                                            .foregroundColor(Color("BoldGrey"))
                                    }
                                    
                                }.padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                                
                            }.frame(maxWidth: .infinity,maxHeight: 50, alignment: .leading)
                            .padding(EdgeInsets(top: 5, leading: 15, bottom: 10, trailing: 15))
                            .cornerRadius(5)
                            
                        }
                        
                    }.frame(maxWidth: .infinity, maxHeight: 100, alignment: .leading)
                    .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                    
                    Text("Total Amount")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(Color("BlackColor"))
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 40, leading: 20, bottom: 20, trailing: 0))
                         
                    
                    
                    
                    ZStack (alignment: .center) {
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(Color.white)
                        VStack (alignment: .center, spacing: 0){
                            
                            HStack (spacing: 0){
                                
                                VStack (alignment: .leading, spacing: 10){
                                    
                                    Text("Subtotal")
                                        .font(.system(size: 12, weight: .bold))
                                        .foregroundColor(Color("GreyColor"))
                                        .multilineTextAlignment(.center)
                                        .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                                    
                                    Text("Delivery Charge")
                                        .font(.system(size: 12, weight: .bold))
                                        .foregroundColor(Color("GreyColor"))
                                        .multilineTextAlignment(.center)
                                        .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                                    
                                    Text("Biller Fees")
                                        .font(.system(size: 12, weight: .bold))
                                        .foregroundColor(Color("GreyColor"))
                                        .multilineTextAlignment(.center)
                                        .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                                    
                                    Text("Yalla Fees")
                                        .font(.system(size: 12, weight: .bold))
                                        .foregroundColor(Color("GreyColor"))
                                        .multilineTextAlignment(.center)
                                        .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                                    
                                    Text("Total Amount")
                                        .font(.system(size: 12, weight: .bold))
                                        .foregroundColor(Color("BlackColor"))
                                        .multilineTextAlignment(.center)
                                        .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                                    
                                }
                                
                                Spacer()
                                
                                VStack (alignment: .trailing, spacing: 10){
                                    
                                    HStack (spacing: 3){
                                        Text("124.00")
                                            .font(.system(size: 12, weight: .bold))
                                            .foregroundColor(Color("GreyColor"))
                                            .multilineTextAlignment(.center)
                                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .trailing)
                                        
                                        Text("EGP")
                                            .font(.system(size: 12, weight: .medium))
                                            .foregroundColor(Color("NatureColor"))
                                    }
                                    
                                    
                                    HStack (spacing: 3){
                                        Text("124.00")
                                            .font(.system(size: 12, weight: .bold))
                                            .foregroundColor(Color("GreyColor"))
                                            .multilineTextAlignment(.center)
                                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .trailing)
                                        
                                        Text("EGP")
                                            .font(.system(size: 12, weight: .medium))
                                            .foregroundColor(Color("NatureColor"))
                                    }
                                    
                                    HStack (spacing: 3){
                                        Text("124.00")
                                            .font(.system(size: 12, weight: .bold))
                                            .foregroundColor(Color("GreyColor"))
                                            .multilineTextAlignment(.center)
                                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .trailing)
                                        
                                        Text("EGP")
                                            .font(.system(size: 12, weight: .medium))
                                            .foregroundColor(Color("NatureColor"))
                                    }
                                    
                                    HStack (spacing: 3){
                                        Text("124.00")
                                            .font(.system(size: 12, weight: .bold))
                                            .foregroundColor(Color("GreyColor"))
                                            .multilineTextAlignment(.center)
                                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .trailing)
                                        
                                        Text("EGP")
                                            .font(.system(size: 12, weight: .medium))
                                            .foregroundColor(Color("NatureColor"))
                                    }
                                    
                                    HStack (spacing: 3){
                                        Text("124.00")
                                            .font(.system(size: 12, weight: .bold))
                                            .foregroundColor(Color("BlackColor"))
                                            .multilineTextAlignment(.center)
                                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .trailing)
                                        
                                        Text("EGP")
                                            .font(.system(size: 12, weight: .medium))
                                            .foregroundColor(Color("BlackColor"))
                                    }
                                }
                                
                            }.frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                           
                        }
                        
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                    .frame(maxWidth: .infinity, maxHeight: 250, alignment: .center)
                    
                    
                    ForEach(0..<7) { _ in
                        Spacer()
                    }
                    
                    
                    ZStack (alignment: .leading){
                        Color("WhiteColor")
                            .ignoresSafeArea()
                        
                        HStack {
                            
                            VStack (alignment: .leading, spacing: 3) {
                                Text("Total")
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundColor(Color("BlackColor"))
                                HStack (spacing: 2){
                                    Text("15.000")
                                        .font(.system(size: 22, weight: .light))
                                        .foregroundColor(Color("InsuranceColor"))
                                    Text("EGP")
                                        .font(.system(size: 22, weight: .bold))
                                        .foregroundColor(Color("InsuranceColor"))
                                }
                                
                            }.padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                                
                            Spacer()
                            
                            Text("Confirm")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(Color("WhiteColor"))
                                .frame(maxWidth: 130, minHeight: 35, maxHeight: 35, alignment: .center)
                                .background(Color("InsuranceColor"))
                                .cornerRadius(8).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                                
                        }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                    }.frame(maxWidth: .infinity, minHeight: 100, maxHeight: 100, alignment: .center)
                    
                    
                }.background(Color("WhiteSecondary"))
                
            }
            .frame(width: .infinity, height: .infinity, alignment: .center)
            .ignoresSafeArea()
        } else {
            // Fallback on earlier versions
        }
    }
}

struct InsurancePage4_Previews: PreviewProvider {
    static var previews: some View {
        InsurancePage4()
    }
}
