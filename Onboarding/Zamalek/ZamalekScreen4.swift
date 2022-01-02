//
//  ZamalekScreen4.swift
//  Onboarding
//
//  Created by mhs on 21/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct ZamalekScreen4: View {
    var body: some View {
        if #available(iOS 14.0, *) {
            ZStack {
                VStack(spacing: 0) {
                    Spacer()
                        .frame(maxWidth: .infinity, maxHeight: 40).background(Color("ZamalekColor"))
                    HStack {
                        VStack(alignment: .leading) {
                            Image("Back-Red").padding().onTapGesture(perform: {
                                //presentationMode.wrappedValue.dismiss()
                            })
                            Text("Zamalek Digital")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                                .font(.system(size: 30, weight: .semibold))
                                .foregroundColor(Color("ZamalekColor"))
                        }
                        .frame(width: .infinity, height: 100, alignment: .leading)
                        .background(Color("WhiteColor"))
                        
                        Image("zamalek-sc-logo")
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                    }
                    .background(Color("WhiteColor"))
                    .frame(width: .infinity, height: 100)
                    
                    ZStack {
                        Color("ZamalekColor")
                        .ignoresSafeArea()
                        }.frame(maxWidth: .infinity, maxHeight: 20)
                
                    HStack {
                        
                        ZStack {
                            Color("ZamalekColor")
                            .ignoresSafeArea()
                            }.frame(maxWidth: 10, maxHeight: 25)
                        
                        Text("Events")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color("ZamalekColor"))
                    }.padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
                    
                    // PopUp Window
                    VStack(alignment: .center, spacing: 35) {
                        
                        Image("Group 5676")
                        
                        Text("Request has been sent  to zamalek club and they will contact you soon")
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(width: 250, height: .infinity, alignment: .center)
                            .font(Font.system(size: 18, weight: .bold))
                            .foregroundColor(Color("ZamalekColor"))
                        
                    }
                    .frame(width: .infinity, height: .infinity, alignment: .center)
                    .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                    .background(Color.clear)
                    
                    
                    
                    
                    ForEach(0..<7) { _ in
                        Spacer()
                    }

                    
                }.background(Color("BG_color"))
                
            }
            .frame(width: .infinity, height: .infinity, alignment: .center)
            .ignoresSafeArea()
        } else {
            // Fallback on earlier versions
        }
    }
}

struct ZamalekScreen4_Previews: PreviewProvider {
    static var previews: some View {
        ZamalekScreen4()
    }
}
