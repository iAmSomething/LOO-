//
//  ViewController.swift
//  sideMenuMultiButton
//
//  Created by 김태훈 on 2018. 5. 8..
//  Copyright © 2018년 김태훈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var goToMain: UIBarButtonItem!
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var isBtnClicked = true
    var member = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sideMenuConstraint.constant = -240
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func menuButton(_ sender: UIBarButtonItem) {
        if isBtnClicked {
            sideMenuConstraint.constant = 0
            UIView.animate(withDuration: 0.2, animations: {
                self.view.layoutIfNeeded()
            })
        }
        else {
            sideMenuConstraint.constant = -240
            UIView.animate(withDuration: 0.2, animations: {
                self.view.layoutIfNeeded()
            })
        }
        isBtnClicked = !isBtnClicked
    }
    @IBAction func heejinBtn(_ sender: UIButton) {member = 1; performSegue(withIdentifier: "secondVC", sender: self)}
    @IBAction func hyunjinBtn(_ sender: UIButton) {member = 2; performSegue(withIdentifier: "secondVC", sender: self)}
    
    @IBAction func haseulBtn(_ sender: UIButton) {member = 3; performSegue(withIdentifier: "secondVC", sender: self)}
    @IBAction func yeojinBtn(_ sender: UIButton) {member = 4; performSegue(withIdentifier: "secondVC", sender: self)}
    @IBAction func viviBtn(_ sender: UIButton) {member = 5; performSegue(withIdentifier: "secondVC", sender: self)}
    @IBAction func kimlipBtn(_ sender: UIButton) {member = 6; performSegue(withIdentifier: "secondVC", sender: self)}
    @IBAction func jinsoulBtn(_ sender: UIButton) {member = 7; performSegue(withIdentifier: "secondVC", sender: self)}
    @IBAction func choerryBtn(_ sender: UIButton) {member = 8; performSegue(withIdentifier: "secondVC", sender: self)}
    @IBAction func yvesBtn(_ sender: UIButton) {member = 9; performSegue(withIdentifier: "secondVC", sender: self)}
    @IBAction func chuuBtn(_ sender: UIButton) {member = 10; performSegue(withIdentifier: "secondVC", sender: self)}
    @IBAction func gowonBtn(_ sender: UIButton) {member = 11; performSegue(withIdentifier: "secondVC", sender: self)}
    @IBAction func oliviaBtn(_ sender: UIButton) {member = 12; performSegue(withIdentifier: "secondVC", sender: self)}
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? secondViewController {
            destination.number = member
        }
    }
}

