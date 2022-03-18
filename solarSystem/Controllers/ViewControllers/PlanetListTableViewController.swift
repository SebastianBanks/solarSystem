//
//  PlanetListTableViewController.swift
//  solarSystem
//
//  Created by Sebastian Banks on 3/17/22.
//

import UIKit

class PlanetListTableViewController: UITableViewController {
    
    @IBOutlet weak var planetImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        

        // Configure the cell...
        let planet = PlanetController.planets[indexPath.row]
        cell.imageView?.image = UIImage(named: planet.planetImageName)
        cell.textLabel?.text = planet.planetName

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toDetailVC" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? PlanetDetailViewController
                    else { return }
            
            let planetToSend = PlanetController.planets[indexPath.row]
            
            destination.planet = planetToSend
        }
    }

}
