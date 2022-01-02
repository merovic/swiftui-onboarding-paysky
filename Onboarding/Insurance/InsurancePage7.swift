//
//  InsurancePage7.swift
//  Onboarding
//
//  Created by mhs on 30/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct InsurancePage7: View {
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
                    
                    // PopUp Window
                    VStack(alignment: .center, spacing: 35) {
                        
                        Image("Group 5676")
                        
                        VStack (spacing: 5) {
                            Text("Your request had been received and the policy will be issued by the insurance company within 10 days, your reference number is")
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity)
                                .frame(width: 300, height: .infinity, alignment: .center)
                                .font(Font.system(size: 18, weight: .bold))
                                .foregroundColor(Color("BlackColor"))
                            
                            Text("012345678936")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color("InsuranceColor"))
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        
                    }
                    .frame(width: .infinity, height: .infinity, alignment: .center)
                    .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                    .background(Color.clear)
                    
                    
                    ForEach(0..<7) { _ in
                        Spacer()
                    }
                }
                
            }.frame(width: .infinity, height: .infinity, alignment: .center)
            .ignoresSafeArea()
            
        } else {
            // Fallback on earlier versions
        }
        
    }
}

struct InsurancePage7_Previews: PreviewProvider {
    static var previews: some View {
        InsurancePage7()
    }
}
