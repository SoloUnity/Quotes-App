//
//  CardView.swift
//  Quotes
//
//  Created by Gordon Ng on 2022-03-01.
//

import SwiftUI

struct CardView: View {
    
    var card:Quote
    
    var body: some View {
        ZStack{
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 400.0)
                .cornerRadius(20)
                .padding(.all)

                
            
            VStack(alignment: .leading){
                
                Text(card.quotes[0])
                    .bold()
                    .font(.title)
                    .padding(.bottom, 5)
                    .multilineTextAlignment(.leading)
                    
                    
                Text("- " + card.name)
                    .font(.body)
                    
            }
            .foregroundColor(.white)
            .padding(.all, 30)
            .shadow(color: .black, radius: 5)
            
            
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        CardView(card: model.quotes[0])
    }
}
