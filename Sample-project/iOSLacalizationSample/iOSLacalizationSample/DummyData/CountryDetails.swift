//
//  CountryDetails.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 26/08/25.
//

struct PopularPlace {
    let place: String
    let description: String
}

let listOfPopularAreaSegment1: [String: [PopularPlace]] = [
    "United States": [
        PopularPlace(
            place: "Grand Canyon",
            description: """
            The Grand Canyon is a steep-sided canyon carved by the Colorado River in Arizona.
            Its immense size is breathtaking, at 277 miles long, up to 18 miles wide, and attaining a depth of over a mile.
            The layered bands of colorful rock reveal millions of years of geologic history, making it a major research site for geologists.
            The North and South Rims offer awe-inspiring vistas and are home to numerous viewpoints and hiking trails.
            It is considered one of the seven natural wonders of the world and is a must-see for its overwhelming scale and beauty.
            """
        ),
        PopularPlace(
            place: "Statue of Liberty",
            description: """
            The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor.
            A gift from the people of France to the people of the United States, it was dedicated on October 28, 1886.
            The statue is a figure of Libertas, a robed Roman liberty goddess, holding a torch and a tablet inscribed with the date of the U.S. Declaration of Independence.
            It has become a universal symbol of freedom, democracy, and a welcoming sight to immigrants arriving from abroad.
            """
        ),
        PopularPlace(
            place: "Golden Gate Bridge",
            description: """
            The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.
            Opened in 1937, it was the longest and tallest suspension bridge in the world at the time of its completion.
            Its iconic "International Orange" color was specifically chosen to make it more visible in the thick fog that frequently shrouds the bay.
            The bridge is one of the most internationally recognized symbols of San Francisco, California, and the United States.
            Walking or biking across offers fantastic views of the city, Alcatraz, and the surrounding ocean.
            """
        ),
        PopularPlace(
            place: "New York City",
            description: """
            Known as the Big Apple, New York City is a hub of culture, business, and iconic landmarks. 
            Visitors can explore Times Square, Central Park, and the Statue of Liberty. 
            The city’s vibrant neighborhoods offer endless dining, shopping, and entertainment options.
            """
        ),
        PopularPlace(
            place: "Los Angeles",
            description: """
            Los Angeles is the entertainment capital of the world, home to Hollywood and stunning beaches. 
            From the Walk of Fame to Santa Monica Pier, the city blends glamor with laid-back California vibes. 
            It’s also a cultural melting pot with incredible food and art scenes.
            """
        ),
        PopularPlace(
            place: "Las Vegas",
            description: """
            Famous for its dazzling nightlife, casinos, and entertainment shows, Las Vegas never sleeps. 
            The Strip is lined with themed hotels, world-class dining, and spectacular performances. 
            Beyond the lights, visitors can explore the nearby desert and natural wonders.
            """
        ),
        PopularPlace(
            place: "San Francisco",
            description: """
            San Francisco is iconic for the Golden Gate Bridge, cable cars, and steep rolling hills. 
            The city offers a rich blend of cultures, with lively neighborhoods like Chinatown and Mission District. 
            Visitors enjoy exploring Alcatraz, Fisherman’s Wharf, and nearby wine country.
            """
        ),
        PopularPlace(
            place: "Miami",
            description: """
            Miami is a vibrant coastal city known for its beaches, nightlife, and Latin American influence. 
            South Beach offers lively clubs and Art Deco architecture, while Little Havana brings Cuban culture alive. 
            The city is also a gateway to the Florida Keys and the Everglades.
            """
        ),
        PopularPlace(
            place: "Chicago",
            description: """
            Chicago is famous for its architecture, deep-dish pizza, and vibrant cultural scene. 
            Millennium Park, Navy Pier, and the Willis Tower Skydeck are must-see attractions. 
            The city’s museums and lakefront add to its urban charm and lively atmosphere.
            """
        )
    ],
    
    "Canada": [
        PopularPlace(
            place: "Toronto",
            description: """
            Toronto is Canada’s largest city, known for its multicultural neighborhoods and bustling downtown. 
            The CN Tower offers breathtaking views, while Kensington Market adds local flair. 
            The city thrives with art, food, and vibrant festivals year-round.
            """
        ),
        PopularPlace(
            place: "Vancouver",
            description: """
            Vancouver is surrounded by ocean and mountains, offering both urban excitement and outdoor adventure. 
            Visitors love Stanley Park, Granville Island, and scenic waterfront views. 
            Its mild climate and natural beauty make it one of Canada’s top destinations.
            """
        ),
        PopularPlace(
            place: "Montreal",
            description: """
            Montreal blends European charm with modern energy, offering a unique cultural experience. 
            Its Old Port, cobblestone streets, and French-inspired cuisine make it enchanting. 
            Festivals, nightlife, and history keep the city buzzing year-round.
            """
        ),
        PopularPlace(
            place: "Quebec City",
            description: """
            Quebec City is one of North America’s oldest cities, with a distinctly European feel. 
            Its Old Town, a UNESCO World Heritage site, is filled with cobblestone streets and historic charm. 
            The stunning Château Frontenac towers above, making the city postcard perfect.
            """
        ),
        PopularPlace(
            place: "Banff",
            description: """
            Banff is a mountain paradise nestled in the Canadian Rockies. 
            It offers turquoise lakes, snow-capped peaks, and incredible wildlife. 
            Visitors enjoy hiking, skiing, and exploring the breathtaking natural landscapes.
            """
        )
    ],
    "France": [
        PopularPlace(
            place: "Eiffel Tower",
            description: """
            The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris. It's not just a symbol of Paris but of France itself.
            Named after the engineer Gustave Eiffel, whose company designed and built the tower, it was initially criticized by some of France's leading artists.
            Today, it is one of the most recognizable structures in the world, offering breathtaking panoramic views of the city from its observation decks.
            At night, the tower sparkles with golden lights for five minutes every hour, creating a magical spectacle.
            """
        ),
        PopularPlace(
            place: "Louvre Museum",
            description: """
            The Louvre, located in Paris, is the world's largest art museum and a historic monument. It is a central landmark of the city.
            It is home to hundreds of thousands of classic and modern masterpieces, making it a must-visit for art lovers.
            The museum is famous for its iconic glass pyramid entrance and houses world-renowned works of art.
            Among its vast collection are priceless pieces like Leonardo da Vinci's "Mona Lisa" and the ancient Greek statue "Venus de Milo."
            """
        ),
        PopularPlace(
            place: "Mont Saint-Michel",
            description: """
            Mont Saint-Michel is a tidal island and mainland commune in Normandy, France.
            Its stunning medieval abbey, perched at the peak of the island, is a breathtaking sight, especially when the tide comes in.
            This UNESCO World Heritage site appears as if it's straight out of a fairy tale, with winding streets and fortified walls.
            The island's unique position and architecture have made it one of France's most popular and unforgettable destinations.
            """
        )
    ],
    "Italy": [
        PopularPlace(
            place: "Colosseum",
            description: """
            The Colosseum is an oval amphitheater in the center of Rome, Italy, just east of the Roman Forum.
            It is the largest ancient amphitheater ever built and is still the largest standing amphitheater in the world today.
            Gladiatorial contests, public spectacles such as mock sea battles, animal hunts, and dramas were held here.
            Despite being partially ruined by earthquakes and stone-robbers, the Colosseum is an iconic symbol of Imperial Rome.
            It stands as one of the greatest works of Roman architecture and engineering.
            """
        ),
        PopularPlace(
            place: "Canals of Venice",
            description: """
            Venice, the capital of northern Italy’s Veneto region, is built on more than 100 small islands in a lagoon in the Adriatic Sea.
            It has no roads, just a network of enchanting canals, including the Grand Canal, which is lined with Renaissance and Gothic palaces.
            A gondola ride through the serene waterways is the quintessential Venetian experience, offering a unique perspective of the city.
            The city's romantic ambiance, stunning architecture, and artistic legacy make it a truly unique destination.
            """
        ),
        PopularPlace(
            place: "Leaning Tower of Pisa",
            description: """
            The Leaning Tower of Pisa is the freestanding bell tower of the cathedral of the Italian city of Pisa.
            It is known worldwide for its nearly four-degree lean, the result of an unstable foundation when it was being built.
            The tilt began during construction in the 12th century, due to soft ground that could not properly support the structure's weight.
            Visitors can climb the 294 steps to the top for a unique, tilted view of the city and the surrounding square.
            """
        )
    ],
    "Japan": [
        PopularPlace(
            place: "Fushimi Inari Shrine",
            description: """
            Fushimi Inari Shrine is an important Shinto shrine in southern Kyoto, Japan.
            It is famous for its thousands of vibrant vermilion torii gates, which straddle a network of trails behind its main buildings.
            The trails lead into the wooded forest of the sacred Mount Inari, which stands at 233 meters.
            The shrine is dedicated to Inari, the Shinto god of rice, and the foxes are thought to be Inari's messengers.
            Walking through the seemingly endless arcade of gates is a serene and unforgettable experience.
            """
        ),
        PopularPlace(
            place: "Kinkaku-ji (Golden Pavilion)",
            description: """
            Kinkaku-ji, officially named Rokuon-ji, is a Zen Buddhist temple in Kyoto, Japan.
            Its top two floors are completely covered in gold leaf, creating a stunning spectacle that reflects beautifully in the pond before it.
            The pavilion is set within a magnificent Japanese strolling garden, which is a masterpiece of landscape design.
            Each floor incorporates a different architectural style, adding to its unique charm and historical significance.
            It is one of the most popular buildings in Japan, attracting a large number of visitors annually.
            """
        ),
        PopularPlace(
            place: "Shibuya Crossing",
            description: """
            Shibuya Crossing, located in the Shibuya ward of Tokyo, is rumored to be the busiest intersection in the world.
            At peak times, over a thousand people cross in all directions at once when the traffic lights turn red.
            This organized chaos, known as "the scramble," is a captivating sight, best viewed from the surrounding buildings.
            Surrounded by giant video screens, neon signs, and bustling shops, it embodies the energy of modern Tokyo.
            It has been featured in numerous movies and media, making it an iconic symbol of Japan's vibrant urban culture.
            """
        )],
    "Spain": [
        PopularPlace(
            place: "Sagrada Família",
            description: """
               The Basílica de la Sagrada Família is a one-of-a-kind church in Barcelona, designed by the legendary architect Antoni Gaudí.
               Construction began in 1882 and is famously still ongoing, making it the largest unfinished Catholic church in the world.
               Its design is a breathtaking combination of Gothic and Art Nouveau styles, with intricate facades depicting biblical scenes.
               The interior is designed to resemble a forest, with towering columns branching out like trees towards the ceiling.
               It's a UNESCO World Heritage Site and an absolute must-see for its unique architectural vision.
               """
        ),
        PopularPlace(
            place: "The Alhambra",
            description: """
               The Alhambra is a spectacular palace and fortress complex of the Moorish rulers in Granada, Spain.
               It is a stunning masterpiece of Islamic architecture, renowned for its intricate tile mosaics, delicate stucco work, and beautiful courtyards.
               The complex includes the serene Generalife gardens, with its charming patios, fountains, and lush greenery.
               Highlights include the Court of the Lions and the Palace of Charles V, which showcases a contrasting Renaissance style.
               Overlooking the city of Granada, it offers a fascinating glimpse into the history of southern Spain.
               """
        )
    ],
    "United Kingdom": [
        PopularPlace(
            place: "Tower of London",
            description: """
               His Majesty's Royal Palace and Fortress of the Tower of London is a historic castle on the River Thames in central London.
               Throughout its long history, it has served as a royal residence, a prison, an armory, and a treasury.
               Today, it is most famous for housing the Crown Jewels of the United Kingdom, a dazzling collection of regalia.
               The iconic Yeomen Warders, also known as 'Beefeaters', guard the tower and give entertaining guided tours.
               It's a place steeped in centuries of British history, from royal ceremonies to grim executions.
               """
        ),
        PopularPlace(
            place: "Stonehenge",
            description: """
               Stonehenge is a prehistoric monument on Salisbury Plain in Wiltshire, England, composed of a ring of massive standing stones.
               Dating back to the late Neolithic and Bronze Age, its construction is an incredible feat of ancient engineering.
               The true purpose of Stonehenge remains a subject of intense debate among archaeologists and historians.
               Theories suggest it could have been a burial ground, a place of worship, or a sophisticated astronomical observatory.
               This mysterious and awe-inspiring circle is one of the world's most famous and enigmatic landmarks.
               """
        )
    ],
    "India": [
        PopularPlace(
            place: "Taj Mahal",
            description: """
               The Taj Mahal, located in Agra, is an ivory-white marble mausoleum renowned as a jewel of Muslim art in India.
               It was commissioned in 1632 by the Mughal emperor Shah Jahan to house the tomb of his beloved wife, Mumtaz Mahal.
               Considered by many to be the greatest symbol of eternal love, its beauty is perfectly symmetrical and breathtaking.
               The complex includes a mosque, a guest house, and formal gardens, all set on the southern bank of the Yamuna River.
               It is a UNESCO World Heritage site and attracts millions of visitors who come to marvel at its stunning architecture.
               """
        ),
        PopularPlace(
            place: "Amber Fort",
            description: """
               Amber Fort, also known as Amer Fort, is a majestic fortress located on a hill overlooking Maota Lake near Jaipur, Rajasthan.
               Its construction from pale yellow and pink sandstone and white marble gives it a warm, striking appearance.
               The fort is a remarkable example of Rajput architecture, with its series of grand gates, cobbled paths, and large courtyards.
               A major highlight is the Sheesh Mahal (Mirror Palace), a chamber with walls and ceilings intricately inlaid with mirror pieces.
               Visitors often enjoy an elephant ride up the hill to the main entrance, adding to the royal experience.
               """
        )
    ],
    "Egypt": [
        PopularPlace(
            place: "Pyramids of Giza",
            description: """
               The Giza Pyramid Complex, on the outskirts of Cairo, is one of the most famous archaeological sites in the world.
               It includes three great pyramids built as tombs for the pharaohs Khufu, Khafre, and Menkaure.
               The Great Pyramid of Khufu is the largest and oldest, and it's the only one of the Seven Wonders of the Ancient World still in existence.
               Nearby stands the Great Sphinx, a limestone statue of a mythical creature with the body of a lion and the head of a human.
               These ancient structures are a testament to the ingenuity and power of the ancient Egyptian civilization.
               """
        )
    ], "Greece": [
        PopularPlace(
            place: "Acropolis of Athens",
            description: """
            The Acropolis is an ancient citadel perched on a rocky outcrop above the city of Athens. It is a symbol of the power and glory of ancient Greece.
            The site contains the remains of several ancient buildings of great architectural and historical significance.
            The most famous of these is the Parthenon, a former temple dedicated to the goddess Athena.
            It is the quintessential symbol of Western civilization and the democratic ideals that were born in this city.
            A visit here is a walk through history, offering stunning views of Athens below.
            """
        ),
        PopularPlace(
            place: "Santorini's Caldera Villages",
            description: """
            Santorini is an island famous for its dramatic views, stunning sunsets, and iconic white-washed villages.
            The main towns, Fira and Oia, cling to the cliffs of a massive volcanic caldera that is submerged in the sea.
            Wandering through the narrow, winding streets reveals blue-domed churches, charming cafes, and boutique hotels.
            The island is renowned for its spectacular sunsets, particularly from the village of Oia, which draw crowds every evening.
            This unique landscape, a result of a massive volcanic eruption, makes Santorini a top destination for travelers worldwide.
            """
        )
    ],
    "Peru": [
        PopularPlace(
            place: "Machu Picchu",
            description: """
            Machu Picchu is a 15th-century Inca citadel located high in the Andes Mountains in Peru.
            Often referred to as the "Lost City of the Incas," it is one of the most famous and spectacular archaeological sites in the world.
            Its giant walls, terraces, and ramps seem as if they have been cut naturally in the continuous rock escarpments.
            The site's sophisticated dry-stone construction and breathtaking mountain-top setting are awe-inspiring.
            As a UNESCO World Heritage site and one of the New Seven Wonders of the World, it is a pinnacle of Inca engineering.
            """
        ),
        PopularPlace(
            place: "Cusco Historic Center",
            description: """
            Cusco, nestled in the Peruvian Andes, was once the capital of the mighty Inca Empire.
            Today, its historic center is a fascinating blend of ancient Inca foundations and Spanish colonial architecture.
            The central square, Plaza de Armas, is lined with arcades, carved wooden balconies, and the impressive Cusco Cathedral.
            Nearby, you can explore the ruins of the massive Inca fortress of Sacsayhuamán, with its enormous, precisely-cut stones.
            The city serves as the gateway to Machu Picchu and the Sacred Valley, full of vibrant culture and history.
            """
        )
    ],
    "China": [
        PopularPlace(
            place: "The Great Wall of China",
            description: """
            The Great Wall is a vast series of fortifications that stretches for thousands of miles across the historical northern borders of China.
            It is not a single continuous wall but a system of walls, watchtowers, fortresses, and other defenses.
            Built over centuries, its main purpose was to protect Chinese states and empires against raids and invasions.
            It is widely considered one of the most impressive architectural feats in history and a symbol of China's enduring strength.
            Popular sections to visit, such as Badaling and Mutianyu near Beijing, offer stunning views as the wall snakes across rugged mountains.
            """
        ),
        PopularPlace(
            place: "The Terracotta Army",
            description: """
            The Terracotta Army is a massive collection of life-sized terracotta sculptures depicting the armies of Qin Shi Huang, the first Emperor of China.
            Located near the city of Xi'an, it is a form of funerary art buried with the emperor to protect him in the afterlife.
            The army includes thousands of soldiers, chariots, and horses, each with unique facial expressions and details.
            Discovered by local farmers in 1974, it is one of the most significant archaeological finds of the 20th century.
            The sheer scale and artistry of the army provide a remarkable insight into the power of the Qin dynasty.
            """
        )
    ],
    "Brazil": [
        PopularPlace(
            place: "Christ the Redeemer",
            description: """
            Christ the Redeemer is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil.
            Located at the peak of the 700-metre Corcovado mountain, it overlooks the entire city with open arms.
            The statue has become an icon of both Rio de Janeiro and Brazil, and is listed as one of the New Seven Wonders of the World.
            A cog train takes visitors up the mountain to the statue, providing scenic views of the surrounding Tijuca National Park.
            The panoramic vista from the top, encompassing Sugarloaf Mountain and Guanabara Bay, is truly spectacular.
            """
        )
    ]
]



