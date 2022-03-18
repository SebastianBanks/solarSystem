//
//  PlanetDetailViewController.swift
//  solarSystem
//
//  Created by Sebastian Banks on 3/17/22.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetDiameterLabel: UILabel!
    @IBOutlet weak var planetDistanceLabel: UILabel!
    @IBOutlet weak var planetDaysLabel: UILabel!
    
    var planet: Planet?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func updateView() {
        
        guard let planet = planet else { return }
        planetNameLabel.text = planet.planetName
        planetImage.image = UIImage(named: planet.planetImageName)
        planetDiameterLabel.text = "\(planet.planetDiameter) km"
        planetDistanceLabel.text = "\(planet.maxMillionKMsFromSun) km"
        planetDaysLabel.text = "\(planet.planetDayLength) days"
    }

}
