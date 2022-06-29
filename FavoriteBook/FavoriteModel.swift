//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by busraguler on 24.06.2022.
//

import Foundation

struct FavoriteModel : Identifiable {
    var id = UUID()
    var elements : [FavoriteElements]
    var title : String
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name: String
    var description : String
    var imageName : String
}


let Friends = FavoriteElements( name: "Friends", description: "mükemmel bi dizi", imageName: "friends")
let Gonuldagi = FavoriteElements (name: "Gönül Dağı", description: "Harika bir türk dizisi", imageName: "gonuldagi")
let AvrupaYakasi = FavoriteElements(name: "Avrupa Yakası", description: "Gülse Birsel'in en sevdiğim dizisi", imageName: "avrupayakasi")

let Movies = FavoriteModel(elements: [Friends,Gonuldagi,AvrupaYakasi], title: "En güzel Diziler")


let StrangerThings = FavoriteElements( name: "StrangerThings", description: "mükemmel bi film", imageName: "strangerthings")
let BirdBox = FavoriteElements (name: "Bird Box", description: "Harika bir film", imageName: "birdbox")
let TheHoliday = FavoriteElements(name: "The Holiday", description: "çok güzelll", imageName: "theholiday")

let Films = FavoriteModel(elements: [StrangerThings,BirdBox,TheHoliday], title: "En güzel Filmler")


let myFavorites = [Movies, Films]
