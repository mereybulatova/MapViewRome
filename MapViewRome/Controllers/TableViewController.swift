//
//  TableViewController.swift
//  MapViewKZ
//
//  Created by Мерей Булатова on 24.04.2024.
//

import UIKit

class TableViewController: UITableViewController {
    
    var arraySights = [Sights(place: "Colosseum", image: "colosseum", shortDescript: "The 1900-year-old amphitheater is the symbol of the Eternal City and a must-see!",detailImage: "col",mapImage: "col2",detailText: "The building of the Roman Colosseum took place between 73 and 75 AD and was completed in 79 AD, with the inauguration games taking places in 81 AD.An estimated 100,000 prisoners were brought back to Rome as slaves after the Jewish war, meaning Vespasian had a limitless workforce to build his creation. The Colosseum’s amphitheatre is unique because it has a very distinct shape. Most amphitheatres are circular but the Colosseum is oval. The reason it was built in an oval shape was to allow all seats to get a good view of the events without restrictions.", detailAdress: "The address: Piazza del Colosseo, 1,00184 Roma RM, Italy", latitude: 41.890251, longitude: 12.492373),
                       Sights(place: "Roman Forum", image: "forum", shortDescript: "Discover the center of Roman society at the Forum, where laws were decreed, politics discussed, and goods bartered",detailImage: "rom",mapImage: "rom2",detailText: "According to a widely accepted legend, ancient Rome was founded by brothers Romulus and Remus in 753 B.C. After a rising conflict, Romulus killed Remus, became king and named Rome after himself.The traditional story also credits Romulus with starting an alliance with his rival, Titus Tatius, and making the site of the Roman Forum a neutral meeting zone.At first, the Forum essentially served as a marketplace for day-to-day shopping. Over time, it became much more versatile and functional, as public affairs were held in the area.", detailAdress: "The address: Via della Salara Vecchia, 5/6, 00186 Roma RM, Italy", latitude: 41.892464, longitude: 12.485325),
                       Sights(place: "Trevi fountain", image: "trevi", shortDescript: "The magnificent Trevi Fountain in Rome is an iconic landmark, renowned for its grandeur and beauty",detailImage: "tre",mapImage: "tre2",detailText: "There are few monuments that you can visit that will actually take your breath away upon your first glimpse. I can say with certainty that the Trevi Fountain is one of them. The central statue of Oceanus dominates the imposing fountain. ( No, this is not the God Neptune). He is reigning in two horses- one is calm, one is violent which signifies the various moods of the sea.The stone is Travertine, which is a porous limestone great for buildings and is also the same stone for another famous monument- The Colosseum!", detailAdress: "The address: Piazza di Trevi, 00187 Roma RM, Italy", latitude: 41.900932, longitude: 12.483313),
                       Sights(place: "Spanish steps", image: "spanish", shortDescript: "The Spanish steps in Rome attract tourists from all over the world",detailImage: "step",mapImage: "step2",detailText: "The Spansih steps are a fantastic example of the unique architecture the ancient Romans are famous for. Plus, the view of the Piazza di Spagna from above is exceptional. The Spanish steps represent figuratively and metaphorically the close relationship between the Sacred and the Eternal city, shown through the elevation and vastness of the monument. The longest and widest steps in Europe are also an important landmark in Rome as they host events and are home to Italian traditions", detailAdress: "The address: Piazza di Spagna, 00187 Roma RM, Italy", latitude: 41.905991, longitude: 12.482775),
                       Sights(place: "Pantheon", image: "pantheon", shortDescript: "The Pantheon and it's dome is a true architectural wonder",detailImage: "pan",mapImage: "pan2",detailText: "The Pantheon was originally built as a pagan temple dedicated to all the gods, but in the year 608 Emperor Phocas gave the temple to Pope Boniface IV as a gift who, in turn, removed all remnants of paganism and consecrated it as the church of St Mary and the Martyrs.The most fascinating part of the Pantheon is its giant dome, with its famous hole in the top (The eye of the Pantheon, or oculus). The dome was the largest in the world for 1300 years and to present remains the largest unsupported dome in the world. Its diameter is 43.30 meters (or 142 ft.)", detailAdress: "The address: Piazza della Rotonda, 00186 Roma RM, Italy", latitude: 41.898609, longitude: 12.476873),
                       Sights(place: "Aventine Keyhole", image: "keyhole", shortDescript: "The Aventine Keyhole offers one of Rome's most picturesque and perfectly manicured views of St Peter's Basilica, but it remains shrouded in mystery",detailImage: "key",mapImage: "key2",detailText: "The keyhole of the Knights of Malta is one of the city’s more intriguing off-the-beaten-path sights. With its uninviting door and perfectly framed view of Saint Peter’s Basilica, it has become a favorite stop for travelers looking for alternative attractions in the city. It is common to see visitors queue up in front of the impenetrable door to take a peek, and many try to capture it with their camera — however, the view is one that can be truly experienced only in person.", detailAdress: "The address: Piazza dei Cavalieri di Malta, 4, 00153 Roma RM, Italy", latitude: 41.883754, longitude: 12.483022),
                       Sights(place: "Vatican", image: "vatican", shortDescript: "Vatican City State is a landlocked independent country, city-state, microstate, and enclave within Rome is full of treasures",detailImage: "vat",mapImage: "vat2",detailText: "The Vatican City, one of the most sacred places in Christendom, attests to a great history and a formidable spiritual venture. A unique collection of artistic and architectural masterpieces lie within the boundaries of this small state. At its centre is St Peter's Basilica, with its double colonnade and a circular piazza in front and bordered by palaces and gardens. The basilica, erected over the tomb of St Peter the Apostle, is the largest religious building in the world, the fruit of the combined genius of Bramante, Raphael, Michelangelo, Bernini and Maderno", detailAdress: "The address: 00120 Città del Vaticano,", latitude: 41.902168, longitude: 12.453937),
                       Sights(place: "Trastevere", image: "trastevere", shortDescript: "Trastevere is considered the 'heart' of Rome.It is famous for its 'bohemian' atmosphere, restaurants and wine bars, boutiques and craft shops.",detailImage: "tra",mapImage: "tra2",detailText: "On the opposite bank of the Tiber lies the most fun and picturesque district of Rome. It is a perfect area to wander through the maze of narrow streets and for a hotel in Rome. This old working-class neighbourhood with its narrow alleyways and medieval houses is a particularly lively affair at night – thanks to the many tourists – with lots of restaurants, trattorias and pizzerias. Visit this truly Italian neighbourhood of Rome for a lovely stroll or relax on one of the many café terraces.", detailAdress: "The address: Viale di Trastevere", latitude: 41.885147, longitude: 12.473157)]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arraySights.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 380
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InfoCell", for: indexPath)
        
        let placeName = cell.viewWithTag(1000) as! UILabel
        placeName.text = arraySights[indexPath.row].place
        
        let imageOfPlace = cell.viewWithTag(1001) as! UIImageView
        imageOfPlace.image = UIImage(named: arraySights[indexPath.row].image)
        
        let textview = cell.viewWithTag(1002) as! UITextView
        textview.text = arraySights[indexPath.row].shortDescript
        textview.layer .cornerRadius = 2
        textview.sizeToFit()
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(identifier: "detailViewController") as! DescriptionViewController
        
        detailVC.sights = arraySights[indexPath.row]
        
        navigationController?.show(detailVC, sender: self)
        
        
    }
}
