//
//  ZamalekScreen1.swift
//  Onboarding
//
//  Created by mhs on 21/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct ZamalekScreen1: View {
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
                  
                    HStack (spacing: 10){
                        ZStack (alignment: .center) {
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .fill(Color.white)
                            VStack(alignment: .center) {
                                Image("XMLID_323_")
                                    
                                Text("News")
                                    .font(.system(size: 14, weight: .bold))
                                    .foregroundColor(Color("BlackColor"))
                            }.padding(EdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2))
                            
                        }.frame(maxWidth: .infinity, maxHeight: 75, alignment: .center)
                        
                        ZStack(alignment: .center) {
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .fill(Color.white)
                            VStack(alignment: .center) {
                                Image("Calendar")
                                    
                                Text("Events")
                                    .font(.system(size: 14, weight: .bold))
                                    .foregroundColor(Color("BlackColor"))
                            }.padding(EdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2))
                            
                        }.frame(maxWidth: .infinity, maxHeight: 75, alignment: .center)
                        
                    }.frame(maxWidth: .infinity).padding(EdgeInsets(top: 30, leading: 15, bottom: 0, trailing: 15))
                    
                    HStack {
                        
                        ZStack {
                            Color("ZamalekColor")
                            .ignoresSafeArea()
                            }.frame(maxWidth: 10, maxHeight: 25)
                        
                        Text("Recent Updates")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color("ZamalekColor"))
                        
                        HStack {
                            Text("View all")
                            Image("Next")
                        }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 15))
                        
                    }.padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
                    
                    TabView {
                        SliderItem()
                        SliderItem()
                        SliderItem()
                    }
                    .frame(maxWidth: .infinity, maxHeight: 150, alignment: .center)
                    .tabViewStyle(PageTabViewStyle())
                    
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

struct ZamalekScreen1_Previews: PreviewProvider {
    static var previews: some View {
        ZamalekScreen1()
    }
}
