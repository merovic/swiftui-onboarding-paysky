//
//  ZamalekScreen2.swift
//  Onboarding
//
//  Created by mhs on 21/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct ZamalekScreen2: View {
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
                        
                        Text("News")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color("ZamalekColor"))
                    }.padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
                    
                    ScrollView {
                        LazyVStack {
                            ListItem()
                            ListItem()
                            ListItem()
                            ListItem()
                            ListItem()
                        }
                    }.padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    
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

struct ZamalekScreen2_Previews: PreviewProvider {
    static var previews: some View {
        ZamalekScreen2()
    }
}
