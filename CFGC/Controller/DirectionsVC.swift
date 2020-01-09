//
//  DirectionsVC.swift
//  CFGC
//
//  Created by Elizabeth Baker on 11/15/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit

class DirectionsVC: UIViewController {
    
    var marker: String?
    
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var titleTV: UILabel!
    @IBOutlet weak var dLabel: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var descTV: UILabel!
    @IBOutlet weak var btnF: UIButton!
    @IBOutlet weak var btnS: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var boldText = "How To Get There: "
        let attrs = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)]
        let atts = [NSAttributedString.Key.font : UIFont.italicSystemFont(ofSize: 18)]
        
        switch(marker) {
        case "RC":
            titleTV.text = "Ribbon Cutting Garden: Secret Garden\nTom & Kate Fetzer"
            img.image = UIImage(named: "ribboncutting")
            let attributedString = NSMutableAttributedString(string: "Our 67th Azalea Garden Tour opens with the spectacular Ribbon Cutting Ceremony. This event includes all of the 2020 Azalea Belles, the Citadel Summerall Guards, the North Carolina Azalea Festival Queen and celebrity guests. The Azalea Queen’s Garden Party will be held immediately following the Ribbon Cutting at this location.\n\nThis beautiful five-acre family estate truly reflects Southern charm and has been shared with this year’s Azalea Garden Tour for the ribbon cutting only. Located on a quiet lane it is an elegant refuge from traffic and noise. Large live oaks give filtered shade and leave patterns on the brick path. The home is a lovely soft yellow on the exterior with white trim and Charleston Green accents. Two story verandas adorn the front of the home and two story screen porches give year round appeal to experiencing the outdoors. A large guesthouse opens to the expansive pool complex and speaks to their love of entertaining with family and friends. Opposite the guest house and pool is a lovely pergola covered with Confederate jasmine. This garden says “Welcome Home,” the yard says “Kids Are Welcome.”\n\n")
            attributedString.append(NSMutableAttributedString(string: boldText, attributes: attrs))
            attributedString.append(NSMutableAttributedString(string: "Parking for the Ribbon Cutting is ONLY available at Hugh MacRae Park Shelter-4, 314 Pine Grove Drive. Free round-trip bus service from the park to the Ribbon Cutting is available from 8:00am to Noon.\n\n"))
            let italText = "Ribbon Cutting Garden is ONLY OPEN from 10:00am to Noon on Friday, NOT OPEN on Friday afternoon, Saturday or Sunday."
            attributedString.append(NSMutableAttributedString(string: italText, attributes: atts))
            descTV.attributedText = attributedString
            btnF.setTitle("Press Here For Friday Only Directions", for: .normal)
            dLabel.isHidden = false
            dLabel.text = "Get Directions to Ribbon Cutting Buses"
            dLabel.minimumScaleFactor = 0.5
            dLabel.numberOfLines = 1
            dLabel.adjustsFontSizeToFitWidth = true
            break
        case "1":
            titleTV.text = "Garden 1: Secret Garden\nJames and Frances Parnell"
            img.image = UIImage(named: "garden1")
            let attStr = NSMutableAttributedString(string: "The owners take care of this luxuriant green space carpeted with native plants themselves and have created and maintained a natural haven since they arrived in 1966. It is just the sort of garden, sustainable both in cultivation and in maintenance, that birds and butterflies choose to make their home because feeders near the house never go empty. The plants cycle through the seasons, leaf debris accumulates then nurtures the soil. Mrs. Parnell says she would like to place a sign in the spring that says “Our flowers are not dead, they’re sleeping.” The owners’ intentions are to protect the native habitat that attracts the birds and butterflies. There are paths that wind through the property’s 3.67 acres from the house through the vegetation. With the debris on the street piling up after Hurricane Florence, they decided to make piles of their fallen branches in the woods to provide habitat for forest creatures and birds. “Living quarters: everyone is invited” is the sign Mrs. Parnell would like to place there. This garden, itself, is a gift from the owners to the wildlife that inhabits their corner of Wilmington. Because it is sustainable and contains food, water, protective cover and places to raise young— all of which are essential to the preservation of wildlife— it is officially certified as a Natural Wildlife Habitat.\n\n")
            let italText = "This property was named a Tree Award Winner by the Wilmington Tree Commission in 2019.\n\n"
            attStr.append(NSMutableAttributedString(string: italText, attributes: atts))
            attStr.append(NSMutableAttributedString(string: boldText, attributes: attrs))
            attStr.append(NSMutableAttributedString(string: "This garden can only be accessed by our free round-trip buses that circle between a parking facility and Gardens 1 & 2 from 9:30am to 5:00pm.\n\nFriday: Park at Hugh MacRae Park, Shelter-4, 314 Pine Grove Drive, last bus to the garden will leave at 4:30pm.\n\nSaturday & Sunday: Park at Bradley Creek Elementary School, 6211 Greenville Loop Road, last bus to the gardens will leave at 4:30pm."))
            descTV.attributedText = attStr
            btnF.setTitle("Friday", for: .normal)
            dLabel.isHidden = false
            dLabel.text = "Get Directions to Garden 1 Buses"
            dLabel.minimumScaleFactor = 0.5
            dLabel.numberOfLines = 1
            dLabel.adjustsFontSizeToFitWidth = true
            btnS.isHidden = false
            btnS.setTitle("Saturday/Sunday", for: .normal)
            btnS.titleLabel?.minimumScaleFactor = 0.5
            btnS.titleLabel?.numberOfLines = 1
            btnS.titleLabel?.adjustsFontSizeToFitWidth = true
            btnS.isEnabled = true
            break
        case "2":
            titleTV.text = "Garden 2: Secret Garden\nDrs. Jeff Warhaftig and Amanda Trimpey"
            img.image = UIImage(named: "garden2")
            let attStr = NSMutableAttributedString(string: "The pretty dual staircase at the entrance to this inviting yellow house is the centerpiece of extensive banks of colorful annual and perennial plantings that flow down to the Intracoastal Waterway. Around the back of the house is a backyard sports paradise for kids and adults as well as a place for relaxation afterwards around the cozy fire pit, adjacent pool and outdoor kitchen. The owners built their home and garden from an empty lot in 2001. They kept a list whenever traveling of favorite things about each vacation spot, and when it came time to build they incorporated many of these ideas: the sun-shelf on the pool, shaded day bed, secluded outdoors shower with a view to the Intracoastal Waterway, and outdoor kitchen. Three years ago, they renewed the backyard design including a new water feature, a pool and another fun vacation memory: multi-colored lights within the pool that glow softly at night! Another priority was open space in more than one area of the garden, good for throwing the frisbee, kicking a soccer ball, playing catch, hide-and-seek, laser tag, and more. Someone once said to the owners: “I’ve never seen a family use their pool as much as you all do.” The family’s children always wanted to hold their birthday parties by the pool, and pre-prom photos have been taken in their very own garden.\n\n")
            attStr.append(NSMutableAttributedString(string: boldText, attributes: attrs))
            attStr.append(NSMutableAttributedString(string: "This garden can only be accessed by our free round-trip buses that circle between a parking facility and Gardens 1 & 2 from 9:30am to 5:00pm.\n\nFriday: Park at Hugh MacRae Park, Shelter-4, 314 Pine Grove Drive, last bus to the garden will leave at 4:30pm.\n\nSaturday & Sunday: Park at Bradley Creek Elementary School, 6211 Greenville Loop Road, last bus to the gardens will leave at 4:30pm."))
            descTV.attributedText = attStr
            btnF.setTitle("Friday", for: .normal)
            dLabel.isHidden = false
            dLabel.text = "Get Directions to Garden 2 Buses"
            dLabel.minimumScaleFactor = 0.5
            dLabel.numberOfLines = 1
            dLabel.adjustsFontSizeToFitWidth = true
            btnS.isHidden = false
            btnS.setTitle("Saturday/Sunday", for: .normal)
            btnS.titleLabel?.minimumScaleFactor = 0.5
            btnS.titleLabel?.numberOfLines = 1
            btnS.titleLabel?.adjustsFontSizeToFitWidth = true
            btnS.isEnabled = true
            break
        case "3":
            titleTV.text = "Garden 3: 300 Airlie Road\nAirlie Garden with Lebanon Chapel"
            img.image = UIImage(named: "garden3")
            descTV.attributedText = NSMutableAttributedString(string: "Airlie is a premier waterfront garden of the coastal South and is especially stunning in the spring during the azalea season when thousands of blooms cover the plants. There is a balance of manicured and natural areas with a combination of formal gardens, walking trails, sculptures, views of Bradley Creek, two freshwater lakes, more than 100,000 azaleas and the grandeur of the magnificent Airlie Oak, which dates back to 1545 and is the North Carolina State Champion Live Oak. Not to be missed are a seasonal Butterfly House and unique Bottle Chapel, made using over 2,800 bottles, and is the centerpiece of the Minnie Evans Sculpture Garden.\n\nThe lovely scenery and ideal film locations in Airlie Gardens have also attracted many films and television shows over the years. One Tree Hill and Dawson’s Creek both feature scenes in the Pergola Garden and the ABC Family movie, A Cinderella Story: Once Upon a Song was filmed at the stable’s creek-side lawns.\n\nAs a coastal region site on the North Carolina Birding Trail, Airlie offers some of the best birding in New Hanover County. Check out Airlie’s HotSpot on eBird.com, a website which lists over 200 birds that have been viewed there and what is being seen on a daily basis.\n\nOPEN SATURDAY AND SUNDAY ONLY 10:00am to 5:00pm. Not open Friday. Parking available at the entrance to the garden.\n\nA special feature to visit is the Mount Lebanon Chapel, which was built in 1835 as a “chapel for ease” for summer residents on Wrightsville Sound. It is the oldest religious structure in New Hanover County and is open for worship services from Mother’s Day through Labor Day each summer. The chapel is open Saturday and Sunday only 10:00am to 5:00pm with docents. Maps are available from our ticket table at Airlie and pink arrows will direct you to this historic Chapel owned by St. James Episcopal Parish.")
            btnF.setTitle("Get Directions to Garden 3", for: .normal)
            break
        case "4":
            titleTV.text = "Garden 4: Seawater Lane\nHarbor Way Gardens"
            img.image = UIImage(named: "garden4")
            let attStr = NSMutableAttributedString(string: "For over fourteen years The Harbor Island Garden Club has planned, planted and maintained an award-winning public garden, which is dedicated to community, conservation, education and beautification. This acre of ground fosters multiple sections that contain coastal native trees, shrubs and perennials, which have been chosen to shelter and foster butterflies, birds and bees. In 2018, Hurricane Florence brought severe devastation to the grounds. The long recovery has created more sun exposure than the former shady canopy. Benches and a new swing by the cottage invite one to read or simply enjoy the soothing sounds of the central water garden while contemplating the surrounding memorial bricks and pavers. New and expanded areas include the labyrinth, which includes multiple fragrance enhancing roses and gardenias. Around the Circle Fountain are varieties of azaleas, camellias and shrubs that produce a variety of pink blossoms to focus on cancer awareness. In the picnic area, the cottage library is a certified lending collection of books for adults and children. Over the years, families have gathered for celebrations, Boy Scouts have installed Eagle Scout projects, trees have been planted for Arbor Day and pink ribbons hung from trees in October for breast cancer awareness. Floral arrangements created by members of the garden club will be displayed along the shade trail to complement and enhance the beauty of Harbor Way Gardens for the Tour.\n\n")
            let italText = "The Plein Air art sale will take place at the Harbor Way Gardens from Noon to 4:00pm on Sunday, April 5, 2020.\n\n"
            attStr.append(NSMutableAttributedString(string: italText, attributes: atts))
            boldText = "Parking: "
            attStr.append(NSMutableAttributedString(string: boldText, attributes: attrs))
            attStr.append(NSMutableAttributedString(string: "Parking is available next to Wrightsville Beach Town Hall on Seawater Lane."))
            descTV.attributedText = attStr
            btnF.setTitle("Get Directions to Garden 4", for: .normal)
            break
        case "5":
            titleTV.text = "Garden 5: 6309 Pintail Court\nMarcia Pendleton Doering"
            img.image = UIImage(named: "garden5")
            let attStr = NSMutableAttributedString(string: "“Peekin’ Through the Pines at Coral Cottage” is a garden, which was begun in 2007 using one and three gallon plants to develop a tapestry hedge for enclosure across the front of the property. Entering through the dooryard, weave your way under the dome of the native longleaf pines along the paths. You’ll find Moonwalker, Skywalker, Sandwalker, Perch Point, Fairy Landing, Figure 8, Heartsease, secret gardens and different styles of garden furniture and small sculptures tucked in among the shrubbery. A 250-foot mixed border runs from the front to the back and takes you to Scotland Yard and The Cathedral, including fifty-year old azaleas and newer camellias as well as an arbor covered in Lady Banks roses. In the Stockyard, harvested pine straw is stored which is spread in the beds in the spring once the composted live-oak leaves have been placed around all azaleas and camellias. The owner designs, installs and maintains the garden herself. Taking her inspiration from the Arts and Crafts style, she’s chosen to contrast the strong formal “bones” of the landscape with exuberant and loose plantings. Topiaries provide lovely focal points. The pine canopy provides filtered light, perfect for growing a wide variety of native and exotic plants. A new fence was designed to feature climbing roses, now able to benefit from newly abundant hours of sunshine after the loss of several pines. The owner’s motto is “Livin’ with Longleaf and Lovin’ It.”\n\n")
            boldText = "Parking: "
            attStr.append(NSMutableAttributedString(string: boldText, attributes: attrs))
            attStr.append(NSMutableAttributedString(string: "Please park on the marked side of Widgeon Drive only."))
            descTV.attributedText = attStr
            btnF.setTitle("Get Directions to Garden 5", for: .normal)
            break
        case "6":
            titleTV.text = "Garden 6: 707 Colonial Drive\nDan Thorpe and Anne Beck"
            img.image = UIImage(named: "garden6")
            let attStr = NSMutableAttributedString(string: "As the owners of the Thorpe Landscape Firm, this couple has the talent and expertise to create outstanding gardens. They leveled the existing site, which was in disrepair, with excavators and bobcats and redesigned all of the decks, walkways, and patios. You now enter into the beautifully maintained landscape of this classic Forest Hills cottage through a white picket fence. The symmetry of the plants along the front walk is pleasing to the eye. Ceiling fans and chairs create a cool and welcoming space on the front porch. They designed their entertainment area centered on the rock-floored fire pit. It is surrounded by an outdoor shower house, boat barn and Quonset hut shop. Well-placed lighting both front and back demonstrate how attractive illumination can be a successful part of garden design, that help create outdoor “rooms” as extensions of the house by evening. With kayaks at hand and a hammock swinging in the trees, this is an active outdoor family’s dream home.\n\n")
            boldText = "Parking: "
            attStr.append(NSMutableAttributedString(string: boldText, attributes: attrs))
            attStr.append(NSMutableAttributedString(string: "Please park on the marked side of the street only, Saturday and Sunday additional parking available at Forest Hills Elementary School, 602 Colonial Drive."))
            descTV.attributedText = attStr
            btnF.setTitle("Get Directions to Garden 6", for: .normal)
            break
        case "7":
            titleTV.text = "Garden 7: 314 Colonial Drive\nErin and Dustin RT Sullivan"
            img.image = UIImage(named: "garden7")
            let attStr = NSMutableAttributedString(string: "Upon entering the grounds, you immediately recognize the owner’s success in accomplishing their goal of creating an English-style garden using native plants. In the front yard, the entrance has a unique wrought iron scroll gate flanked by a low brick wall covered with a creeping fig vine. Neighbors and friends often stop by in the evening to sit on the wall or the nearby bench to chat. The driveway leads to a tall wooden fence where you will find a cozy backyard with a brick patio and comfortable sitting area by a fireplace. A winding pebble pathway leads you around a decorative birdbath, now planted with greens and surrounded by rose bushes. Further in the yard, another low brick wall creates a garden space that contains a new shed made from recycled material and old barn siding, which contains a hot tub. Close by is a pretty yellow bee house. In another corner of the backyard is a hammock and a signpost with arrows pointing in the direction of places they have visited and treasured. Watching wildlife that comes to visit regularly as a result of the plantings they add every year reminds the owner of the times he worked side by side with his grandfather in his garden. This is a certified wildlife habitat with many birdhouses in both the front and back yards. Despite the damage that last year’s hurricane did to the neighborhood and trees in both their front and back yard, this yard is back together and looking wonderful.\n\n")
            boldText = "Parking: "
            attStr.append(NSMutableAttributedString(string: boldText, attributes: attrs))
            attStr.append(NSMutableAttributedString(string: "Please park on the marked side of the street only."))
            descTV.attributedText = attStr
            btnF.setTitle("Get Directions to Garden 7", for: .normal)
            break
        case "8":
            titleTV.text = "Garden 8: 1710 Chestnut Street\nScotty and Kenton Sanders"
            img.image = UIImage(named: "garden8")
            let attStr = NSMutableAttributedString(string: "This historic craftsman style bungalow built in 1923 beckons you up the steps to an entrance filled with potted plants. Turning to the left into the screened porch, you enter a tropical oasis, which spans the entire front of the house. Once inside, you see a wide variety of begonias and ferns artfully hanging or carefully displayed on antiques, ladders and benches. The eclectic furniture provides the perfect place for a morning cup of coffee or an evening glass of wine and an opportunity to admire the lush plants and miscellaneous “found” items on display. At the end of the front porch is a door that leads to an outside covered seating area with a cozy swing and more potted and hanging plants. Scotty previously worked at a large wholesale nursery where she acquired 100’s of plants, which she carefully relocated here. Scotty and her husband have created, planted, designed and continue to do all of the garden maintenance. The garden has limited sun, so the majority of the plants are shade lovers. Nestled in and among the plantings are “found” and collected items that add whimsy and interest such as flowers made from colored faucet handles, rusty whisky barrel hoops arranged over the plants to form an arch, a vintage door with a hanging basket filled with impatiens, a wonderful watering can collection and sunflowers made from old shoes from her own horses! Garden tools are neatly displayed for use next to a potting table. This garden is a labor of love and a work in progress that will continue to grow through the coming years!\n\n")
            boldText = "Box Lunches/Parking: "
            attStr.append(NSMutableAttributedString(string: boldText, attributes: attrs))
            attStr.append(NSMutableAttributedString(string: "Box Lunches are available nearby on Friday and Saturday 11:30am to 2:30pm at St. Paul’s Episcopal Church. Enter parking lot next to Andrew’s Mortuary on Friday and Saturday from 11:30am to 2:30pm, $8.\n\nAs you enter many of our neighborhoods, parking will ONLY be allowed on one side of the street. Please observe the NO PARKING signs to avoid congestion and keep traffic moving smoothly. Please be courteous and thoughtful when parking. Park only on the pavement, not on the grass. Avoid parking anywhere traffic cones have been set."))
            descTV.attributedText = attStr
            btnF.setTitle("Get Directions to Garden 8", for: .normal)
            break
        case "9":
            titleTV.text = "Garden 9: 1708 Chestnut Street\nKaren and Auley Crouch"
            img.image = UIImage(named: "garden9")
            let attStr = NSMutableAttributedString(string: "Nestled on a quiet tree lined street, the historic colonial revival Frederick Pearsall House (1916), welcomes you through an artfully designed metal gate. Karen, the garden owner, is an artist whose sculptures and uniquely crafted pieces are placed throughout the property. The garden at the front of the house is designed as an English country courtyard with brick paths running between trimmed patches of Asiatic jasmine and bordered by a wonderful vintage wrought iron fence bordered with hellebores. The water from a lovely moss-covered fountain spills over gently into a brick pool filled with water lilies. In the side yard a charming birdhouse is perched on a metal stand in the shape of a branch and a ceramic sculpture of a couple rests among the shade loving plants next to the terrace, which was created by the nationally recognized artist Virginia Gibbons. Additional art is represented by a sculpture of two large swans resting in a brick planter and a whimsical metal sculpture of a girl sitting on a bench against the brick wall. The garden is filled with personal treasures: a Japanese maple, a gift for the garden owner’s 50th birthday, a Dr. Van Fleet rose, rooted from the garden of her childhood and a fairy house (made by the artist) where her grandchildren still check for gifts from the fairies. For 40 years the garden owners have tended and transformed what was once a neglected space into a map of their lives with friends and family, past and present that is still evolving … Immerse yourself and enjoy this true gardener’s garden!\n\n")
            boldText = "Box Lunches/Parking: "
            attStr.append(NSMutableAttributedString(string: boldText, attributes: attrs))
            attStr.append(NSMutableAttributedString(string: "Box Lunches are available nearby on Friday and Saturday 11:30am to 2:30pm at St. Paul’s Episcopal Church. Enter parking lot next to Andrew’s Mortuary on Friday and Saturday from 11:30am to 2:30pm, $8.\n\nAs you enter many of our neighborhoods, parking will ONLY be allowed on one side of the street. Please observe the NO PARKING signs to avoid congestion and keep traffic moving smoothly. Please be courteous and thoughtful when parking. Park only on the pavement, not on the grass. Avoid parking anywhere traffic cones have been set."))
            descTV.attributedText = attStr
            btnF.setTitle("Get Directions to Garden 9", for: .normal)
            break
        case "10":
            titleTV.text = "Garden 10: 1711 Princess Street\nDonna Launey and Patrick Tester"
            img.image = UIImage(named: "garden10")
            descTV.attributedText = NSMutableAttributedString(string: "Built in 1912, this historic prairie style home welcomes you to its spacious front porch featuring furniture built by the garden owner’s father. A lovely English Lutyens bench sits at one end of the porch under a vintage stained glass window creating an inviting place to sit and socialize. The side yard was already established when the garden owners bought the house in 2015. The backyard, however, was a blank canvas, which invited them to design and install their personalized oasis as an extension of their home. The outdoor room includes a large dining table and bench, also built by Donna’s father. It is constructed using rare old cypress from Louisiana. The room is well used by the garden owners and their family as a relaxing escape in the summer and a cozy warm space in the winter, sitting in front of the fireplace in the glow of antique gas lamps. Their love of all things historic, weathered with patina and collected in part from Legacy Historic Salvage, directed the design of the greenhouse built by Patrick, which includes a vintage sink and a shelf above it that holds various garden tools. Exotic tropical patio plants are maintained in the greenhouse during the winter. The sundial orb sits as the focal point of the raised bed vegetable garden and a metal arbor stands at the entrance to the garden. A fire pit is made from the end of an oil tanker truck, and vintage bottles adorn the “bottle tree” which adds a touch of whimsy. A shady area in a back corner of the yard holds a bench set among various plants where one might sit and admire the garden. In the backyard a small maple, a fig, and potted citrus trees given by friends and family are symbolic of this lovingly created home and garden.")
            btnF.setTitle("Get Directions to Garden 10", for: .normal)
            break
        case "11":
            titleTV.text = "Garden 11A/B: 512-510 Grace Street"
            img.image = UIImage(named: "garden11")
            boldText = "Garden11A: Chris Gore and Matthew TenHuisen"
            let attStr = NSMutableAttributedString(string: boldText, attributes: attrs)
            attStr.append(NSMutableAttributedString(string: "\nThis graceful two-story historic house was built in 1907. After the house suffered severe fire damage in 1966, the current homeowners’ recognized an opportunity and bought and completely restored this home themselves. After renovation it was featured in the April 2012 issue of Wilma Magazine. A white picket fence softened with wisteria and roses looks spectacular and welcomes you to the home and garden. Rocking chairs are placed strategically on the front porch to encourage lounging and conversation. Strolling down the left side of the house on repurposed brick pathways is a formal pool on the left with an interesting swan based fountain backed by beautiful star jasmine on a raised picket fence. The path culminates with another striking three-tiered fountain, which cascades into a circular basin. As you cross the back garden there is a majestic Southern Magnolia defining the entrance to the gated pool complex that used to be a gravel parking lot. The salt-water swimming pool is the center of this wonderful entertainment complex. The luxurious cabana was designed and built by the homeowners. Tile from their renovated kitchen was carefully laid out and installed in the bas-relief fountain. The pool deck is filled with tropical containers, a bar and grilling station, seating areas and a fire pit providing a lush paradise for relaxation. This home and garden is always a delight and has been on a previous Azalea Festival Garden Tour along with the Candlelight Christmas Tour.\n\n"))
            boldText = "Garden11B: Josephine TenHuisen"
            attStr.append(NSMutableAttributedString(string: boldText, attributes: attrs))
            attStr.append(NSMutableAttributedString(string: "\nNext door is a Greek Revival Style house originally built for Wilburn Trask, identified with an historic plaque that dates it to 1865. Painted a “sunny” yellow color with a bright blue door, this house has a similar porch with rocking chairs and a glider swing. Whimsical lighting under the painted porch roof adds an extra dose of charm. Two potted ferns sit on the front brick steps and plantings along the street and driveway are lush and beautiful. All of the colorful annuals in the front and side garden are maintained in pots to make them easy to maintain. Tucked into the cozy courtyard is a lovely back porch with rocking chairs and a white glider that overlooks the shady brick patio with its two distinct seating areas. The bench is set at an angle under a large tree with ferns lending a tropical feel, then a charming birdbath and at the end a small dining table under a colorful umbrella. This garden has a big impact and shows how much can be accomplished in a small space with color, design and style."))
            descTV.attributedText = attStr
            btnF.setTitle("Get Directions to Garden 11", for: .normal)
            break
        case "12":
            titleTV.text = "Garden 12: 5024 Split Rail Drive\nSusan Wilson"
            img.image = UIImage(named: "garden12")
            let attStr = NSMutableAttributedString(string: "Trees were always the owner’s first love and this eclectic woodland cottage, dubbed “Flower Gate,” now has over fifty varieties. Instead of a traditional lawn, the front yard is full of shade and greenery, much of it provided by dense low-hanging vines that loop throughout the property. Interestingly, the owner’s use of native honeysuckle, wisteria, Chilean potato vine and thorn-less blackberry was inspired by Tarzan films that she watched as a child. The front yard vines, intertwined with tiny, almost invisible lights, add charm and magical character. The owner wanted to create a 360-degree cloak of greenery with as much variety and shade as possible. She was influenced by the lives of her grandparents and great grandparents, who lived entirely off the land. This fueled her zeal to sculpt living green plantings to become a kind of urban camouflage. Degrees in design and art history helped guide her to create this tiny natural enclave, the perfect hideaway for many furry and feathered friends who can’t resist the setting. They live here abundantly, in a gated community for wildlife, rich in resources for them to dine, nest and frolic. Multiple garden areas can be entered through the ten different gates and arbors, which in turn open to settings full of antiques, rustic statues of critters and a variety of objects d’art collected throughout the years. At the base of “Bear Falls” a quiet waterfall flows into a pond filled with koi, adding another point of interest. The owner’s notion is that you can never have too many cats, plants or places to sit. This dream of a yard, with plenty of space for the outdoor lover, lives up to that belief.\n\n")
            boldText = "Parking: "
            attStr.append(NSMutableAttributedString(string: boldText, attributes: attrs))
            attStr.append(NSMutableAttributedString(string: "Please park on the marked side of the street only."))
            descTV.attributedText = attStr
            btnF.setTitle("Get Directions to Garden 12", for: .normal)
            break
        default:
            break
        }
        btnF.titleLabel?.textAlignment = .center
        btnF.titleLabel?.minimumScaleFactor = 0.5
        btnF.titleLabel?.numberOfLines = 0
        btnF.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "DirectionsToHome", sender: btnHome)
    }
    
    @IBAction func btnDirectionsPressed(_ sender: UIButton) {
        switch(marker) {
        case "RC", "1", "2":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=314+Pine+Grove+Drive+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=314+Pine+Grove+Drive+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "3":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=300+Airlie+Road+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=300+Airlie+Road+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "4":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=Seawater+Lane+Wrightsville+Beach,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=Seawater+Lane+Wrightsville+Beach,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "5":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=6309+Pintail+Court+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=6309+Pintail+Court+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "6":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=707+Colonial+Drive+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=707+Colonial+Drive+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "7":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=314+Colonial+Drive+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=314+Colonial+Drive+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "8":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=1710+Chestnut+Street+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=1710+Chestnut+Street+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "9":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=1708+Chestnut+Street+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=1708+Chestnut+Street+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "10":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=1711+Princess+Street+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=1711+Princess+Street+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "11":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=512+Grace+Street+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=512+Grace+Street+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "12":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=5024+Split+Rail+Drive+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=5024+Split+Rail+Drive+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        default:
            break
        }
    }
    
    @IBAction func btnSPressed(_ sender: UIButton) {
        switch(marker) {
            case "1", "2":
                if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                    let URLString = "comgooglemaps://?daddr=6211+Greenville+Loop+Road+Wilmington,+North+Carolina&directionsmode=driving"
                    guard let url = URL(string: URLString) else { return }
                    if #available(iOS 10, *) { UIApplication.shared.open(url) }
                    else { UIApplication.shared.openURL(url) }
                } else {
                    let URLString = "http://maps.apple.com/?daddr=6211+Greenville+Loop+Road+Wilmington,+North+Carolina&dirflg=d"
                    guard let url = URL(string: URLString) else { return }
                    if #available(iOS 10, *) { UIApplication.shared.open(url) }
                    else { UIApplication.shared.openURL(url) }
                }
                break
            default:
                break
        }
    }
    
    @IBAction func btnBackPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "DirectionsToMap", sender: btnBack)
    }
}
