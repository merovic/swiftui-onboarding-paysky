//
//  NickNameView.swift
//  Onboarding
//
//  Created by admin on 12/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct NickNameView: View {
    
    @State
    public var suggestionNicknameList: String = ""
    
    var body: some View {
        if #available(iOS 14.0, *) {
            ZStack {
                VStack(spacing: 0) {
                    Spacer()
                        .frame(maxWidth: .infinity, maxHeight: 40).background(Color("PrimaryColor"))
                    VStack(alignment: .leading) {
                        Image("Back-Red").padding().onTapGesture(perform: {
                            //presentationMode.wrappedValue.dismiss()
                        })
                        Text("Nickname / Promo code")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                            .font(.system(size: 30, weight: .semibold))
                            .foregroundColor(Color("WhiteColor"))
                    }
                    .frame(width: .infinity, height: 100, alignment: .leading)
                    .background(Color("PrimaryColor"))
                    Spacer()
                        .frame(maxWidth: .infinity, maxHeight: 20)
                    VStack(alignment: .leading, spacing: 3) {
                        Text("Your Promo Code")
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(Color("NatureColor"))
                            
                        ZStack(alignment: .trailing) {
                            Text("HL556613")
                                .font(.title3)
                                .padding()
                                .foregroundColor(Color("GreyColor"))
                                .frame(maxWidth: .infinity, maxHeight: 45, alignment: .leading)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(style: StrokeStyle( lineWidth: 1, dash: [5]))
                                        .foregroundColor(Color("PrimaryColor"))
                                )
                            
                            HStack {
                                Image("copy_icon")
                                    .frame(width: 10, height: 10, alignment: .center)
                                Text ("Copy")
                                    .foregroundColor(Color("PrimaryColor"))
                            }.frame(width: 100, height: 30, alignment: .center)
                        }
                        .frame(maxWidth: .infinity, maxHeight: 45)
                        
                        Text("SHARE")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color("WhiteColor"))
                            .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                            .background(Color("PrimaryColor"))
                            .cornerRadius(8).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        
                        Spacer()
                            .frame(maxWidth: .infinity, maxHeight: 20)
                        
                        Divider()
                        
                        Spacer()
                            .frame(maxWidth: .infinity, maxHeight: 20)
                        
                        HStack {
                            ZStack (alignment: .leading) {
                                RoundedRectangle(cornerRadius: 15, style: .continuous)
                                    .fill(Color.white)
                                HStack {
                                    Image("invitations-details")
                                        .frame(width: 50, height: 50, alignment: .leading)
                                    VStack(alignment: .leading) {
                                        Text("Invitations")
                                            .foregroundColor(Color("PrimaryColor"))
                                            .font(.system(size: 15, weight: .semibold))
                                            
                                        Text("25")
                                            .font(.system(size: 25, weight: .medium))
                                            .foregroundColor(Color("NatureColor"))
                                    }.padding(EdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2))
                                }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                                
                            }.frame(maxWidth: .infinity, maxHeight: 75, alignment: .center)
                            
                            ZStack(alignment: .leading) {
                                RoundedRectangle(cornerRadius: 15, style: .continuous)
                                    .fill(Color.white)
                                HStack {
                                    Image("points-details")
                                        .frame(width: 50, height: 50, alignment: .leading)
                                    VStack(alignment: .leading) {
                                        Text("Points")
                                            .foregroundColor(Color("PrimaryColor"))
                                            .font(.system(size: 15, weight: .semibold))
                                        Text("1520")
                                            .font(.system(size: 25, weight: .medium))
                                            .foregroundColor(Color("NatureColor"))
                                    }.padding(EdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2))
                                }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                                
                            }.frame(maxWidth: .infinity, maxHeight: 75, alignment: .center)
                            
                        }.frame(maxWidth: .infinity).padding(5)
                        
                        Spacer()
                            .frame(maxWidth: .infinity, maxHeight: 20)
                        
                        Divider()
                        
                    }.frame(maxWidth: .infinity).padding(15)
                    
                    VStack(alignment: .leading, spacing: 3) {
                        
                        Text("How it works?")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(Color("PrimaryColor"))
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        
                        HStack {
                            Circle()
                                .fill(Color("PrimaryColor"))
                                .frame(width: 30, height: 30, alignment: .center)
                                .overlay(
                                    Text("1")
                                        .foregroundColor(Color(.white))
                                )
                            
                            Text("Invite your friends to earn points.")
                                .foregroundColor(Color("NatureColor"))
                            
                        }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        
                        HStack {
                            Circle()
                                .fill(Color("PrimaryColor"))
                                .frame(width: 30, height: 30, alignment: .center)
                                .overlay(
                                    Text("2")
                                        .foregroundColor(Color(.white))
                                )
                            
                            Text("Share this code with your friends to easily send your money.")
                                .foregroundColor(Color("NatureColor"))
                            
                        }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        
                    }
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                    .frame(maxWidth: .infinity).padding(15)
                    
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

struct NickNameView_Previews: PreviewProvider {
    static var previews: some View {
        NickNameView()
    }
}
