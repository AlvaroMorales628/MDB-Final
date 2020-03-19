//
//  FirstViewController.swift
//  FinalExam
//
//  Created by Anmol Parande on 3/15/20.
//  Copyright © 2020 Anmol Parande. All rights reserved.
//

import UIKit

/**
 ViewController which shows the Corona Data for each country
 */
class CountryListViewController: CoronaTableViewController {
    
    @IBOutlet weak var labelCode: UIStackView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    // Task 2
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        labelCode.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self,
            action: #selector(handleTap))
        labelCode.addGestureRecognizer(tapGesture)
    }
    
    
    //Code that handles the segue
    @objc func handleTap() {
        print ("Tap on second label detected")
        performSegue(withIdentifier: "OnlySegue", sender: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "OnlySegue" {
            let vc = segue.destination as! DetailViewController
            print("button pressed")
        }
    }
}

