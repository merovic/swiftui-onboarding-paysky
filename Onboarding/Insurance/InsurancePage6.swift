//
//  InsurancePage6.swift
//  Onboarding
//
//  Created by mhs on 30/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct InsurancePage6: View {
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
                   
                    ForEach(0..<1) { _ in
                        InsuranceMember(insuranceName: "Spouse", title: "ID", placeHolder: "Scan spouse ID")
                    }
                    
                    InsuranceMember(insuranceName: "Kid", title: "Birth Certificate", placeHolder: "Scan Birth Certificate")
                    
                    
                    ForEach(0..<7) { _ in
                        Spacer()
                    }
                    
                    Text("NEXT")
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

struct InsuranceMember: View {
    
    var insuranceName: String
    var title: String
    var placeHolder: String
    
    var body: some View {
        if #available(iOS 14.0, *) {
            VStack {
                HStack {
                    ZStack {
                        Color("InsuranceColor")
                        .ignoresSafeArea()
                        }.frame(maxWidth: 10, maxHeight: 25)
                    
                    Text(insuranceName)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color("InsuranceColor"))
                    
                }.padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
                
                VStack (spacing: 0) {
                    Text(title)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(Color("BlackColor"))
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 0))
                    
                    ZStack (alignment: .leading) {
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(Color.white)
                        HStack {
                            Text(placeHolder)
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundColor(Color("GreyColor"))
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                            
                            Spacer()
                            
                            VStack {
                                Image("Group 5894")
                                Text("Front")
                                    .font(.system(size: 9, weight: .regular))
                                    .foregroundColor(Color("GreyColor"))
                                    .multilineTextAlignment(.center)
                            }
                            
                            VStack {
                                Image("Group 5894")
                                Text("Back")
                                    .font(.system(size: 9, weight: .regular))
                                    .foregroundColor(Color("GreyColor"))
                                    .multilineTextAlignment(.center)
                            }
                        }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 15))
                        
                    }.frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                    .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                }
            }.padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            
        }else {
            // Fallback on earlier versions
        }
    }
    
}

struct InsurancePage6_Previews: PreviewProvider {
    static var previews: some View {
        InsurancePage6()
    }
}
