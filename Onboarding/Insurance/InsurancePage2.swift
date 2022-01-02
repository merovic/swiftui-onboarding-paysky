//
//  InsurancePage2.swift
//  Onboarding
//
//  Created by mhs on 30/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct InsurancePage2: View {
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
                        Text("Health Insurance")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 0))
                            .font(.system(size: 30, weight: .semibold))
                            .foregroundColor(Color("WhiteColor"))
                    }
                    .frame(width: .infinity, height: 100, alignment: .leading)
                    .background(Color("InsuranceColor"))
                   
                    ScrollView {
                        
                        HStack {
                            Text("Self")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(Color("InsuranceColor"))
                                .multilineTextAlignment(.leading)
                             
                            Toggle(isOn: .constant(true), label: {
                                Text("(Get your insurance under your name)")
                                    .font(.system(size: 10, weight: .regular))
                                    .foregroundColor(Color("NatureColor"))
                                    .multilineTextAlignment(.leading)
                            })
                        }.padding()
                        
                        HStack {
                            Text("Family")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(Color("InsuranceColor"))
                                .multilineTextAlignment(.leading)
                             
                            Toggle(isOn: .constant(false), label: {
                                Text("(Get your insurance for your family members)")
                                    .font(.system(size: 10, weight: .regular))
                                    .foregroundColor(Color("NatureColor"))
                                    .multilineTextAlignment(.leading)
                            })
                        }.padding()
                        
                        
                        ZStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .fill(Color.white)
                            HStack(alignment: .center) {
                                Image("Path 8994")
                                Text("Spouse")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color("InsuranceColor"))
                                
                                Spacer()
                                
                                Image("plus-new")
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                            }
                            
                        }.frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                        
                        InsuranceItem3()
                       
                        ZStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .fill(Color.white)
                            HStack(alignment: .center) {
                                Image("Path 8994")
                                Text("Kids")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color("InsuranceColor"))
                                
                                Spacer()
                                
                                Image("plus-new")
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                            }
                            
                        }.frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                        
                        ForEach(0..<2) {_ in
                            InsuranceItem3()
                        }
                        
                        VStack {
                            
                            HStack {
                                
                                ZStack {
                                    Color("InsuranceColor")
                                    .ignoresSafeArea()
                                    }.frame(maxWidth: 10, maxHeight: 25)
                                
                                Text("Do you have any chronic conditions?")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(Color("InsuranceColor"))
                                
                            }.padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
                            
                            HStack {
                                HStack {
                                    Image("Group 5770")
                                    Text("Yes")
                                        .font(.system(size: 12, weight: .medium))
                                        .foregroundColor(Color("BlackColor"))
                                        .multilineTextAlignment(.leading)
                                        .frame(maxWidth: 30, maxHeight: 30, alignment: .center)
                                    
                                }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                HStack {
                                    Image("Group 5771")
                                    Text("No")
                                        .font(.system(size: 12, weight: .medium))
                                        .foregroundColor(Color("BlackColor"))
                                        .multilineTextAlignment(.leading)
                                        .frame(maxWidth: 30, maxHeight: 30, alignment: .center)
                                }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 10))
                            
                            Text("Next")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(Color("WhiteColor"))
                                .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                                .background(Color("InsuranceColor"))
                                .cornerRadius(8).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                                .padding()
                            
                        }
                        
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

struct InsuranceItem3: View {
    
    @State private var day: String = ""
    @State private var month: String = ""
    @State private var year: String = ""
    
    var body: some View {
        ZStack (alignment: .leading) {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color.white)
            VStack {
                HStack {
                    Text("Date of Birth")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(Color("InsuranceColor"))
                    Spacer()
                    Image("Group 5858")
                }
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                
                HStack {
                    HStack {
                        TextField("Day", text: $day)
                            .multilineTextAlignment(.center)
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    HStack {
                        TextField("Month", text: $month)
                            .multilineTextAlignment(.center)
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    HStack {
                        TextField("Year", text: $year)
                            .multilineTextAlignment(.center)
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                }.padding(EdgeInsets(top: 0, leading: 15, bottom: 5, trailing: 15))
                
            }
            
        }.frame(maxWidth: .infinity, maxHeight: 85, alignment: .leading)
        .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
    }
    
}

struct InsurancePage2_Previews: PreviewProvider {
    static var previews: some View {
        InsurancePage2()
    }
}
