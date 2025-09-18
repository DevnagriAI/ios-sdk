//
//  DataModels.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 23/08/25.
//

struct PopularResort {
    var id:Int
    var name: String
    var rating: Double
    var pricePerPerson: String
    var description: String
    var isLiked:Bool?
}
struct PlacePackage {
    var id:Int
    var place: String
    var country: String
    var thumbnail: String
    var description: String
    var rating: Double
    var pricePerPerson: String
    var category: String
    var bestTimeToVisit: String
    var activities: [String]
    var reviewsCount: Int
    var isPopular: Bool
    var review:[UserReview]
    var resorts:[PopularResort]
    var isLiked:Bool?
}

struct UserReview {
    var username:String
    var review:String
}
