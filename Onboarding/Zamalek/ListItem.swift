//
//  ListItem.swift
//  Onboarding
//
//  Created by mhs on 21/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct ListItem: View {
    var body: some View {
        ZStack (alignment: .center) {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color.white)
            VStack (alignment: .leading, spacing: 0){
                HStack (alignment: .top){
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text("Zamalek News")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color("NatureColor"))
                            
                        Text("The field hockey team of Zamalek club, born in 2005, continues its training on the stadiums of Al-Jazira")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(Color("BlackColor"))
                            .lineLimit(nil)
                            .multilineTextAlignment(.leading)
                    }
                    
                    Image("Image")
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                
                Text("The field hockey team of Zamalek club, born in 2005, continues its training on the stadiums of Al-Jazira Youth Center, in preparation for facing Al-Saeed in the league championship. ").font(.system(size: 12, weight: .medium))
                    .foregroundColor(Color("NatureColor"))
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
            }.padding()
            
            
        }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        .frame(maxWidth: .infinity, maxHeight: 250, alignment: .center)
    }

}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem()
    }
}
