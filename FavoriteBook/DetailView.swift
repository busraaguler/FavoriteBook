//
//  DetailView.swift
//  FavoriteBook
//
//  Created by busraguler on 24.06.2022.
//

import SwiftUI

struct DetailView: View {
    
    var chosenElement : FavoriteElements
    var body: some View {
        
        VStack{
            Text(chosenElement.name)
                .font(.largeTitle)
                .foregroundColor(Color.red)
                
            
            Image(chosenElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(chosenElement.description)
                .padding()
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(chosenElement: AvrupaYakasi)
    }
}
