//
//  InsurancePage1.swift
//  Onboarding
//
//  Created by mhs on 30/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct InsurancePage1: View {
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
                        Text("Yalla Insurance")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 0))
                            .font(.system(size: 30, weight: .semibold))
                            .foregroundColor(Color("WhiteColor"))
                    }
                    .frame(width: .infinity, height: 100, alignment: .leading)
                    .background(Color("InsuranceColor"))
                   
                    HStack (alignment: .top) {
                        
                        VStack(alignment: .center) {
                            Image("health_icon")
                                
                            Text("Health Insurance")
                                .font(.system(size: 14, weight: .medium))
                                .foregroundColor(Color("BlackColor"))
                                .multilineTextAlignment(.center)
                        }.frame(maxWidth: 90)
                        .padding(EdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2))
                        
                        Spacer()
                        
                        VStack(alignment: .center) {
                            Image("car_icon")
                                
                            Text("Motor Insurance")
                                .font(.system(size: 14, weight: .medium))
                                .foregroundColor(Color("BlackColor"))
                                .multilineTextAlignment(.center)
                        }.frame(maxWidth: 90)
                        .padding(EdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2))
                        
                        Spacer()
                        
                        VStack(alignment: .center) {
                            Image("Group 5898")
                                
                            Text("Life Insurance")
                                .font(.system(size: 14, weight: .medium))
                                .foregroundColor(Color("BlackColor"))
                                .multilineTextAlignment(.center)
                        }.frame(maxWidth: 90)
                        .padding(EdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2))
                        
                        Spacer()
                        
                        VStack(alignment: .center) {
                            Image("travel_icon")
                                
                            Text("Travel Insurance")
                                .font(.system(size: 14, weight: .medium))
                                .foregroundColor(Color("BlackColor"))
                                .multilineTextAlignment(.center)
                        }.frame(maxWidth: 90)
                        .padding(EdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2))
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                    
                    HStack {
                        
                        ZStack {
                            Color("InsuranceColor")
                            .ignoresSafeArea()
                            }.frame(maxWidth: 10, maxHeight: 25)
                        
                        Text("My Policies")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color("InsuranceColor"))
                        
                    }.padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
                    
                    
                    ZStack (alignment: .center) {
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(Color.white)
                        VStack (alignment: .center, spacing: 0){
                            
                            HStack {
                                
                                Text("Insurance")
                                    .font(.system(size: 12, weight: .bold))
                                    .foregroundColor(Color("InsuranceColor"))
                                    .multilineTextAlignment(.center)
                                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                                
                                Spacer()
                                
                                Text("Expiration Date")
                                    .font(.system(size: 12, weight: .bold))
                                    .foregroundColor(Color("InsuranceColor"))
                                    .multilineTextAlignment(.center)
                                
                                Spacer()
                                
                                Text("Status")
                                    .font(.system(size: 12, weight: .bold))
                                    .foregroundColor(Color("InsuranceColor"))
                                    .multilineTextAlignment(.center)
                                
                                Spacer()
                                
                                Text("Action")
                                    .font(.system(size: 12, weight: .bold))
                                    .foregroundColor(Color("InsuranceColor"))
                                    .multilineTextAlignment(.center)
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                            }.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                              
                            Divider()
                                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                            
                            InsuranceItem(insurance: "Health Insurance", expirationDate: "20/6/2022", status: "Under issued", action: "Renew", showSeparator: true)
                            InsuranceItem(insurance: "Motor Insurance", expirationDate: "20/6/2022", status: "Expired", action: "Renew", showSeparator: true)
                            InsuranceItem(insurance: "Life Insurance", expirationDate: "20/6/2022", status: "Due for renewal", action: "Renew", showSeparator: true)
                            InsuranceItem(insurance: "Travel Insurance", expirationDate: "20/6/2022", status: "Active", action: "Renew", showSeparator: false)
                            
                        }
                        
                    }
                    .padding(EdgeInsets(top: 20, leading: 10, bottom: 10, trailing: 10))
                    .frame(maxWidth: .infinity, maxHeight: 350, alignment: .center)
                    
                    
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


struct InsuranceItem: View {
    
    var insurance: String
    var expirationDate: String
    var status: String
    var action: String
    
    var showSeparator: Bool
    
    var body: some View {
        VStack {
            HStack {
                Image("Group 5770")
                
                Text(insurance)
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(Color("BlackColor"))
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: 70, maxHeight: 80, alignment: .center)
                
                Spacer()
                
                Text(expirationDate)
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(Color("BlackColor"))
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text(status)
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(Color("NatureColor"))
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 70, maxHeight: 80, alignment: .center)
                
                Spacer()
                
                Text(action)
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(Color("WhiteColor"))
                    .frame(maxWidth: 65, minHeight: 35, maxHeight: 35, alignment: .center)
                    .background(Color("NatureColor"))
                    .cornerRadius(8).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            
            Divider()
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
        }
    }
    
}


struct InsurancePage1_Previews: PreviewProvider {
    static var previews: some View {
        InsurancePage1()
    }
}
