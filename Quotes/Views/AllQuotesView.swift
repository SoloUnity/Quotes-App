//
//  AllQuotesView.swift
//  Quotes
//
//  Created by Gordon Ng on 2022-03-01.
//

import SwiftUI

struct AllQuotesView: View {
    
    var quote:Quote
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                ForEach(quote.quotes, id: \.self){ r in
                    Text(r)
                        .padding(.bottom)
                }
            }
            .padding(.horizontal)
        }
        .navigationTitle(quote.name)
    }
}

struct AllQuotesView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        AllQuotesView(quote: model.quotes[0])
    }
}
