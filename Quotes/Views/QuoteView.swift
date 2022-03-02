//
//  ContentView.swift
//  Quotes
//
//  Created by Gordon Ng on 2022-03-01.
//  From the CWC (Code with Chris) course

import SwiftUI

struct QuoteView: View {
    
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        NavigationView{
        
            ScrollView {
                ForEach(model.quotes) { r in
                    NavigationLink {
                        AllQuotesView(quote: r)
                    } label: {
                        CardView(card: r)
                    }
                }
                .navigationTitle("Quotes by SoloUnity")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
