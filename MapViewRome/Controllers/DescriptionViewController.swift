//
//  ViewController.swift
//  MapViewKZ
//
//  Created by Мерей Булатова on 24.04.2024.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    @IBOutlet weak var labelOfPlace: UILabel!
    
    @IBOutlet weak var detailImage: UIImageView!
    
    @IBOutlet weak var openMapButton: UIButton!
    
    @IBOutlet weak var detailText: UITextView!
    
    @IBOutlet weak var mapImage: UIImageView!
    
    @IBOutlet weak var location: UILabel!
    
    @IBOutlet weak var adress: UITextView!
    
    @IBOutlet weak var afterword: UITextView!

    @IBAction func openMapButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailMapVC = storyboard.instantiateViewController(withIdentifier: "detailedMapViewController") as! MapViewController
        
        detailMapVC.mapLocations = sights
        
        navigationController?.show(detailMapVC, sender: self)
    }
    
    var sights = Sights()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelOfPlace.text = sights.place
        detailImage.image = UIImage(named: sights.detailImage)
        mapImage.image = UIImage(named: sights.mapImage)
        detailText.text = sights.detailText
        adress.text = sights.detailAdress
        location.text = "How to reach it?"
        afterword.text = "Explore the Eternal City and fall in love with it! ❤"

        
    }

}
