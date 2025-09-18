
//
//  PlaceData.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 22/08/25.
//
import UIKit

struct BookingItem{
    var title:String
    var subtitle:String
    var bookedAt:Date
    var price:String
}

 var arrOfBookings:[BookingItem] = []

 

var arrFavoritePlaces: [PlacePackage] = [
    PlacePackage(
        id:1,
        place: "kutaBeach",
        country: "baliIndonesia",
        thumbnail: "https://images.pexels.com/photos/20500560/pexels-photo-20500560.jpeg",
        description: "kutaBeachDescription",
        rating: 4.6,
        pricePerPerson: "$150",
        category: "Beach",
        bestTimeToVisit: "AprilOctober",
        activities: ["activity1", "activity2", "activity3", "activity4"],
        reviewsCount: 2500,
        isPopular: true,
        review: arrReviews1,
        resorts: [arrOfResorts[0],arrOfResorts[1],arrOfResorts[2]]
    ),
    PlacePackage(
        id:2,
        place: "bromoMountain",
        country: "javaIndonesia",
        thumbnail: "https://images.pexels.com/photos/29231588/pexels-photo-29231588.jpeg",
        description: "bromoMountainDescription",
        rating: 4.8,
        pricePerPerson: "$200",
        category: "Mountain",
        bestTimeToVisit: "MaySeptember",
        activities: ["activity5", "activity6", "activity7", "activity8"],
        reviewsCount: 1800,
        isPopular: true,
        review: arrReviews2,
        resorts: [arrOfResorts[3],arrOfResorts[4],arrOfResorts[5]]
    ),
    PlacePackage(
        id:3,
        place: "PykaraLake",
        country: "ootyTamilNaduIndia",
        thumbnail: "https://images.pexels.com/photos/14420259/pexels-photo-14420259.jpeg",
        description: "PykaraLakeDescription",
        rating: 4.5,
        pricePerPerson: "$100",
        category: "Lake",
        bestTimeToVisit: "OctoberMarch",
        activities: ["activity9", "activity10", "activity11", "activity12"],
        reviewsCount: 1200,
        isPopular: false,
        review: arrReviews3,
        resorts: [arrOfResorts[6],arrOfResorts[7],arrOfResorts[8]]
    ),
    PlacePackage(
        id:4,
        place: "Santorini",
        country: "Greece",
        thumbnail: "https://images.pexels.com/photos/33554184/pexels-photo-33554184.jpeg",
        description: "SantoriniDescription",
        rating: 4.9,
        pricePerPerson: "$300",
        category: "Island",
        bestTimeToVisit: "AprilNovember",
        activities: ["activity7", "activity15", "activity16", "activity11"],
        reviewsCount: 5400,
        isPopular: true,
        review: arrReviews4,
        resorts: [arrOfResorts[9],arrOfResorts[10],arrOfResorts[11]]
    ),
    PlacePackage(
        id:5,
        place: "EiffelTower",
        country: "ParisFrance",
        thumbnail: "https://images.pexels.com/photos/32452766/pexels-photo-32452766.jpeg",
        description: "EiffelTowerDescription",
        rating: 4.7,
        pricePerPerson: "$250",
        category: "Historical",
        bestTimeToVisit: "MarchJuneSeptemberNovember",
        activities: ["activity17", "activity18", "activity7", "activity19"],
        reviewsCount: 8900,
        isPopular: true,
        review: arrReviews5,
        resorts: [arrOfResorts[12],arrOfResorts[13],arrOfResorts[14]]
    ),
    PlacePackage(
        id:6,
        place: "Maldives",
        country: "IndianOcean",
        thumbnail: "https://images.pexels.com/photos/2525899/pexels-photo-2525899.jpeg",
        description: "MaldivesDescription",
        rating: 4.9,
        pricePerPerson: "$500",
        category: "Island",
        bestTimeToVisit: "NovemberApril",
        activities: ["activity20", "activity21", "activity22", "activity23"],
        reviewsCount: 6200,
        isPopular: true,
        review: arrReviews6,
        resorts: [arrOfResorts[15],arrOfResorts[16],arrOfResorts[17]]
    ),

    PlacePackage(
        id:7,
        place: "Kyoto",
        country: "Japan",
        thumbnail: "https://images.pexels.com/photos/15830265/pexels-photo-15830265.jpeg",
        description: "KyotoDescription",
        rating: 4.9,
        pricePerPerson: "$1200",
        category: "CityEscape",
        bestTimeToVisit: "MarchMayOctoberNovember",
        activities: ["activity24", "activity25", "activity26"],
        reviewsCount: 980,
        isPopular: true,
        review: arrReviews7,
        resorts: [arrOfResorts[18],arrOfResorts[19]]
    ),

    PlacePackage(
        id:8,
        place: "Rome",
        country: "Italy",
        thumbnail: "https://images.pexels.com/photos/33562162/pexels-photo-33562162.jpeg",
        description: "RomeDescription",
        rating: 4.8,
        pricePerPerson: "$1500",
        category: "Historical",
        bestTimeToVisit: "AprilJuneSeptemberOctober",
        activities: ["activity27", "activity28", "activity29"],
        reviewsCount: 1340,
        isPopular: true,
        review: arrReviews8,
        resorts: [arrOfResorts[20],arrOfResorts[21]]
    ),

    PlacePackage(
        id:9,
        place: "Queenstown",
        country: "NewZealand",
        thumbnail: "https://images.pexels.com/photos/3577388/pexels-photo-3577388.jpeg",
        description: "QueenstownDescription",
        rating: 4.9,
        pricePerPerson: "$1700",
        category: "Adventure",
        bestTimeToVisit: "DecemberFebruary",
        activities: ["activity30", "activity31", "activity32"],
        reviewsCount: 890,
        isPopular: true,
        review: arrReviews9,
        resorts: [arrOfResorts[22],arrOfResorts[23]]
    ),

    PlacePackage(
        id:10,
        place: "Serengeti",
        country: "Tanzania",
        thumbnail: "https://images.pexels.com/photos/28830743/pexels-photo-28830743.jpeg",
        description: "SerengetiDescription",
        rating: 4.9,
        pricePerPerson: "$2000",
        category: "Wildlife",
        bestTimeToVisit: "JuneOctober",
        activities: ["activity33", "activity34", "activity35"],
        reviewsCount: 1120,
        isPopular: true,
        review: arrReviews10,
        resorts: [arrOfResorts[24],arrOfResorts[25]]
    ),

    PlacePackage(
        id:11,
        place: "NiagaraFalls",
        country: "CanadaUSA",
        thumbnail: "https://images.pexels.com/photos/17769889/pexels-photo-17769889.jpeg",
        description: "NiagaraFallsDescription",
        rating: 4.7,
        pricePerPerson: "$1000",
        category: "Waterfall",
        bestTimeToVisit: "JuneAugust",
        activities: ["activity36", "activity37", "activity38"],
        reviewsCount: 950,
        isPopular: true,
        review: arrReviews11,
        resorts: [arrOfResorts[26],arrOfResorts[27]]
    ),

    PlacePackage(
        id:12,
        place: "LakeTahoe",
        country: "USA",
        thumbnail: "https://images.pexels.com/photos/20763006/pexels-photo-20763006.jpeg",
        description: "LakeTahoeDescription",
        rating: 4.8,
        pricePerPerson: "$1200",
        category: "Lake",
        bestTimeToVisit: "JuneSeptemberDecemberMarch",
        activities: ["activity39", "activity40", "activity41"],
        reviewsCount: 870,
        isPopular: true,
        review: arrReviews12,
        resorts: [arrOfResorts[28],arrOfResorts[29]]
    ),

    PlacePackage(
        id:13,
        place: "Varanasi",
        country: "India",
        thumbnail: "https://images.pexels.com/photos/31072582/pexels-photo-31072582.jpeg",
        description: "VaranasiDescription",
        rating: 4.7,
        pricePerPerson: "$800",
        category: "Cultural",
        bestTimeToVisit: "OctoberMarch",
        activities: ["activity42", "activity43", "activity44"],
        reviewsCount: 1020,
        isPopular: true,
        review: arrReviews13,
        resorts: [arrOfResorts[30],arrOfResorts[31]]
    ),

    PlacePackage(
        id:14,
        place: "Kathmandu",
        country: "Nepal",
        thumbnail: "https://images.pexels.com/photos/33483760/pexels-photo-33483760.jpeg",
        description: "KathmanduDescription",
        rating: 4.8,
        pricePerPerson: "$950",
        category: "Spiritual",
        bestTimeToVisit: "SeptemberNovemberMarchMay",
        activities: ["activity45", "activity46", "activity47"],
        reviewsCount: 770,
        isPopular: true,
        review: arrReviews14,
        resorts: [arrOfResorts[32],arrOfResorts[33]]
    ),

    PlacePackage(
        id:15,
        place: "MachuPicchu",
        country: "Peru",
        thumbnail: "https://images.pexels.com/photos/28554322/pexels-photo-28554322.jpeg",
        description: "MachuPicchuDescription",
        rating: 4.9,
        pricePerPerson: "$1800",
        category: "Trekking",
        bestTimeToVisit: "AprilOctober",
        activities: ["activity48", "activity49", "activity50"],
        reviewsCount: 1150,
        isPopular: true,
        review: arrReviews15,
        resorts: [arrOfResorts[34],arrOfResorts[35]]
    ),

    PlacePackage(
        id:16,
        place: "Tuscany",
        country: "Italy",
        thumbnail: "https://images.pexels.com/photos/32599895/pexels-photo-32599895.jpeg",
        description: "TuscanyDescription",
        rating: 4.8,
        pricePerPerson: "$1400",
        category: "Countryside",
        bestTimeToVisit: "AprilJuneSeptemberOctober",
        activities: ["activity51", "activity52", "activity53"],
        reviewsCount: 930,
        isPopular: true,
        review: arrReviews16,
        resorts: [arrOfResorts[36],arrOfResorts[37]]
    )
]


let arrOfCategories = ["Beach", "Mountain","Forest", "Desert", "Island","City Escape","Historical","Adventure","Wildlife","Waterfall","Lake","Cultural","Spiritual","Trekking","Countryside"]
