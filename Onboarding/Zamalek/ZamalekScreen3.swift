//
//  ZamalekScreen3.swift
//  Onboarding
//
//  Created by mhs on 21/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct ZamalekScreen3: View {
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
                    
                    ZStack (alignment: .center) {
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(Color.white)
                        VStack (alignment: .center, spacing: 10){
                            
                            Image("Image2")
                                .resizable()
                                .frame(width: .infinity, height: 155, alignment: .center)
                            
                            Text("Field hockey 2005  continues its training in preparation for facing the hunt ").font(.system(size: 20, weight: .medium))
                                .foregroundColor(Color("BlackColor"))
                                .lineLimit(nil)
                                .multilineTextAlignment(.leading)
                            
                            Text("13 hours ago")
                                .font(.system(size: 12, weight: .medium))
                                .foregroundColor(Color("NatureColor"))
                                .frame(maxWidth: .infinity,alignment: .trailing)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                                
                        }
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: 250, alignment: .center)
                    
                    Text("The field hockey team of Zamalek club, born in 2005, continues its training on the stadiums of Al-Jazira Youth Center, in preparation for facing Al-Saeed in the league championship.").font(.system(size: 14, weight: .medium))
                        .foregroundColor(Color("GreyColor"))
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                    
                    ForEach(0..<7) { _ in
                        Spacer()
                    }
                    
                    Text("Request Join")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color("WhiteColor"))
                        .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                        .background(Color("ZamalekColor"))
                        .cornerRadius(8).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        .padding()
                    
                }.background(Color("BG_color"))
                
            }
            .frame(width: .infinity, height: .infinity, alignment: .center)
            .ignoresSafeArea()
        } else {
            // Fallback on earlier versions
        }
    }
}

struct ZamalekScreen3_Previews: PreviewProvider {
    static var previews: some View {
        ZamalekScreen3()
    }
}
