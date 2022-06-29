//
//  ContentView.swift
//  FavoriteBook
//
//  Created by busraguler on 24.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List{
                ForEach(myFavorites){
                    favorite in
                    Section( header: Text(favorite.title)){
                        ForEach(favorite.elements){
                            element in
                            NavigationLink(destination: DetailView(chosenElement: element)){
                                Text(element.name)
                            }
                            
                            
                        }
                    }
                }.navigationBarTitle("Favori Kitaplığım")
            }
        
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
