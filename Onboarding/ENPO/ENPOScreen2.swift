//
//  ENPOScreen2.swift
//  Onboarding
//
//  Created by mhs on 21/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct ENPOScreen2: View {
    var body: some View {
        if #available(iOS 14.0, *) {
            ZStack {
                VStack(spacing: 0) {
                    Spacer()
                        .frame(maxWidth: .infinity, maxHeight: 40).background(Color("ENPOColor"))
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Image("arrow_white").padding().onTapGesture(perform: {
                                //presentationMode.wrappedValue.dismiss()
                            })
                            Spacer()
                            Image("Close").padding().onTapGesture(perform: {
                                //presentationMode.wrappedValue.dismiss()
                            })
                        }
                        
                        Text("ENPO Digital")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                            .font(.system(size: 30, weight: .semibold))
                            .foregroundColor(Color("WhiteColor"))
                    }
                    .frame(width: .infinity, height: 100, alignment: .leading)
                    .background(Color("ENPOColor"))
                   
                    ZStack(alignment: .center) {
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(Color.white)
                        VStack(alignment: .center) {
                            Image("noun-points-3918203")
                                
                            Text("Current Points")
                                .font(.system(size: 12, weight: .medium))
                                .foregroundColor(Color("NatureColor"))
                            
                            Text("10000")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(Color("ENPOColor"))
                            
                        }.padding(EdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2))
                        
                    }.padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    .frame(maxWidth: 208, maxHeight: 97, alignment: .center)
                    
                    Text("You can spend these points in the following locations")
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: 250)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(Color("GreyColor"))
                        .padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 0))
                    
                    HStack {
                        
                        ZStack {
                            Color("ENPOColor")
                            .ignoresSafeArea()
                            }.frame(maxWidth: 10, maxHeight: 25)
                        
                        Text("List of Available Merchants")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color("ENPOColor"))
                        
                    }.padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
                    
                    GoogelSearchView(text: "-----")
                        .padding()
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            OffersTitleItem(selectedId: "1")
                            OffersTitleItem(selectedId: "1")
                            OffersTitleItem(selectedId: "1")
                            OffersTitleItem(selectedId: "1")
                            OffersTitleItem(selectedId: "1")
                            OffersTitleItem(selectedId: "1")
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

struct ENPOScreen2_Previews: PreviewProvider {
    static var previews: some View {
        ENPOScreen2()
    }
}

struct GoogelSearchView: View {
    
    var text : String = "----"
    
    var body: some View {
        ZStack {
            ZStack {
                
            }.frame(maxWidth: .infinity, maxHeight: 40)
            .background(Color("WhiteColor"))
            .cornerRadius(15)
            .opacity(0.2)
            HStack {
                Image("Search icon").padding()
            
                HStack {
                    Divider()
                }.frame(height: 20)
                
                ZStack(alignment: .leading) {
                    TextField("Search", text: .constant(text))
                        .font(.system(size: 17, weight: .regular))
                        .foregroundColor(Color("LightGrey"))
                }
                
                
                
            }
        }.frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50)
        
    }
}
