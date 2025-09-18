//
//  PopularResortData.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 23/08/25.
//
let dictOfUrls = [
    "resort1":"https://cf.bstatic.com/xdata/images/hotel/max1024x768/164162635.jpg?k=86734cdbe109b6af32a845b74662c5b901cc8034a3ae03d465acbf93bda5b787&o=&hp=1",
    "resort2":"https://deliciouslydirectionless.com/wp-content/uploads/2017/11/The-Anvaya-Beach-Resort-Bali-Beach-Front-Pool-1.jpg",
    "resort3":"https://lh3.googleusercontent.com/p/AF1QipMzJGinC88_NuoFKMI47n5KCQHbAEvWQ7UrugZo=s680-w680-h510",
    "resort4":"https://lh3.googleusercontent.com/p/AF1QipN-hnE02N83i72Zh7DWj979SHQWv0KcOrWS8iH3=w324-h312-n-k-no",
    "resort5":"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/f0/de/55/20181003-162116-largejpg.jpg?w=500&h=-1&s=1",
    "resort6":"https://cf.bstatic.com/xdata/images/hotel/max1024x768/367051154.jpg?k=e7ac0f41603166f421793621a17acb0e3b962fd2b77ad1c7799c069f24f1a764&o=&hp=1",
    "resort7":"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/12/ff/aa/gem-park-ooty.jpg?w=900&h=500&s=1",
    "resort8":"https://sterlingholidaysreviews.com/wp-content/uploads/2021/11/sterling-ooty-fern-hill.jpg",
    "resort9":"https://edge.media.datahc.com/HI552304304.jpg?source=Leonardo",
    "resort10":"https://images.trvl-media.com/lodging/9000000/8310000/8307900/8307839/d8752197.jpg?impolicy=resizecrop&rw=575&rh=575&ra=fill",
    "resort11":"https://www.katikies.com/media/8d8e7b79b208390/katikies-hotel-santorini_28873_2021.jpg?center=0.598089448835004,0.49&mode=crop&width=768&height=960&rnd=132603750228430000",
    "resort12":"https://www.theweddingedition.co.uk/wp-content/uploads/2022/10/Grace-2.jpeg",
    "resort13":"https://cf.bstatic.com/xdata/images/hotel/max1024x768/295686354.jpg?k=e87a3741e299259c220d04a3fc747f384458ee7ee5a21a39599356099fb67d09&o=&hp=1",
    "resort14":"https://dayuse.twic.pics/hotels/7611/449347f48511daf77e803db3bd93860b-pullman-paris-tour-eiffel.jpeg?twic=v1/cover=3840/quality=75",
    "resort15":"https://images.trvl-media.com/lodging/1000000/30000/27600/27528/092e4e8a.jpg?impolicy=resizecrop&rw=575&rh=575&ra=fill",
    "resort16":"https://cf.bstatic.com/xdata/images/hotel/max1024x768/287331792.jpg?k=1b3b445d2aea1bfba211e348f08d594213e50aa3197c27728da132f9607fcf19&o=&hp=1",
    "resort17":"https://lh3.googleusercontent.com/p/AF1QipNzPPJ_AId60xig7S4LWnVnElExbZ4pczDEKl1N=s680-w680-h510",
    "resort18":"https://lh3.googleusercontent.com/proxy/R2U-dt4wveZlS5fNe7MAakj2yAD5pnR5YhwEzxrl98NNuc_28e4Vo8fMnOTVhgfLBMA8kArF1EpoRx9hrhGu97TI0b0xQBpbiE7lNMgTv-lryJSxh1kow-0UvDyzDgjEaPUnn3an_5Uksuzm17wpbjmzPJCGeww=s680-w680-h510"
]

var arrOfBookedPopularResort:[PopularResort] = []

let arrOfResorts:[PopularResort] = [
    PopularResort(id:1,name: "resort1", rating: 4.7, pricePerPerson: "$180", description: "resortDescription1"),
    PopularResort(id:2,name: "resort2", rating: 4.8, pricePerPerson: "$200", description: "resortDescription2"),
    PopularResort(id:3,name: "resort3", rating: 4.5, pricePerPerson: "$150", description: "resortDescription3"),
    PopularResort(id:4,name: "resort4", rating: 4.6, pricePerPerson: "$120", description:"resortDescription4"),
    PopularResort(id:5,name: "resort5", rating: 4.3, pricePerPerson: "$90", description: "resortDescription5"),
    PopularResort(id:6,name: "resort6", rating: 4.2, pricePerPerson: "$80", description: "resortDescription6"),
    PopularResort(id:7,name: "resort7", rating: 4.4, pricePerPerson: "$110", description: "resortDescription7"),
    PopularResort(id:8,name: "resort8", rating: 4.5, pricePerPerson: "$130", description: "resortDescription8"),
    PopularResort(id:9,name: "resort9", rating: 4.6, pricePerPerson: "$150", description: "resortDescription9"),
    PopularResort(id:10,name: "resort10", rating: 4.9, pricePerPerson: "$400", description: "resortDescription10"),
    PopularResort(id:11,name: "resort11", rating: 4.8, pricePerPerson: "$380", description: "resortDescription11"),
    PopularResort(id:12,name: "resort12", rating: 4.7, pricePerPerson: "$350", description: "resortDescription12"),
    PopularResort(id:13,name: "resort13", rating: 4.8, pricePerPerson: "$450", description: "resortDescription13"),
    PopularResort(id:14,name: "resort14", rating: 4.7, pricePerPerson: "$300", description: "resortDescription14"),
    PopularResort(id:15,name: "resort15", rating: 4.9, pricePerPerson: "$500", description: "resortDescription15"),
    PopularResort(id:16,name: "resort16", rating: 5.0, pricePerPerson: "$1200", description: "resortDescription16"),
    PopularResort(id:17,name: "resort17", rating: 4.9, pricePerPerson: "$1000", description: "resortDescription17"),
    PopularResort(id:18,name: "resort18", rating: 4.8, pricePerPerson: "$900", description: "resortDescription18"),
    PopularResort(id:19,name: "resort19", rating: 4.7, pricePerPerson: "$220", description: "resortDescription19"),
    PopularResort(id:20,name: "resort20", rating: 4.9, pricePerPerson: "$550", description: "resortDescription20"),
    PopularResort(id:21,name: "resort21", rating: 4.8, pricePerPerson: "$480", description: "resortDescription21"),
    PopularResort(id:22,name: "resort22", rating: 4.7, pricePerPerson: "$410", description: "resortDescription22"),
    PopularResort(id:23,name: "resort23", rating: 4.9, pricePerPerson: "$520", description: "resortDescription23"),
    PopularResort(id:24,name: "resort24", rating: 4.8, pricePerPerson: "$450", description: "resortDescription24"),
    PopularResort(id:25,name: "resort25", rating: 4.9, pricePerPerson: "$700", description: "resortDescription25"),
    PopularResort(id:26,name: "resort26", rating: 4.7, pricePerPerson: "$550", description: "resortDescription26"),
    PopularResort(id:27,name: "resort27", rating: 4.7, pricePerPerson: "$250", description: "resortDescription27"),
    PopularResort(id:28,name: "resort28", rating: 4.6, pricePerPerson: "$220", description: "resortDescription28"),
    PopularResort(id:29,name: "resort29", rating: 4.8, pricePerPerson: "$430", description: "resortDescription29"),
    PopularResort(id:30,name: "resort30", rating: 4.9, pricePerPerson: "$500", description: "resortDescription30"),
    PopularResort(id:31,name: "resort31", rating: 4.8, pricePerPerson: "$300", description: "resortDescription31"),
    PopularResort(id:32,name: "resort32", rating: 4.7, pricePerPerson: "$280", description: "resortDescription32"),
    PopularResort(id:33,name: "resort33", rating: 4.7, pricePerPerson: "$260", description: "resortDescription33"),
    PopularResort(id:34,name: "resort34", rating: 4.9, pricePerPerson: "$310", description: "resortDescription34"),
    PopularResort(id:35,name: "resort35", rating: 4.8, pricePerPerson: "$490", description: "resortDescription35"),
    PopularResort(id:36,name: "resort36", rating: 4.7, pricePerPerson: "$400", description: "resortDescription36"),
    PopularResort(id:37,name: "resort37", rating: 4.9, pricePerPerson: "$520", description: "resortDescription37"),
    PopularResort(id:38,name: "resort38", rating: 4.8, pricePerPerson: "$600", description: "resortDescription38")
]
