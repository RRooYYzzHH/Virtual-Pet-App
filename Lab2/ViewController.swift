//
//  ViewController.swift
//  Lab2
//
//  Created by RoYzH on 2/4/17.
//  Copyright © 2017 RoYzH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var happiness: DisplayView!
    
    @IBOutlet weak var foodLevel: DisplayView!
    
    @IBOutlet weak var happinessLabel: UILabel!
    
    @IBOutlet weak var flLabel: UILabel!
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var imageColor: UIView!
    
    @IBOutlet weak var sleepLabel: UILabel!
    
    @IBAction func sleepButton(_ sender: UIButton) {
        if(judgePet == 1) {
            if(h_Dog < 10) {
                sleepLabel.text = "I need more happiness!";
            }
            else {
                h_Dog = 0;
                fl_Dog = 0;
                updateDog();
                sleepLabel.text = "zzzzZZZZ";
            }
        }
        else if(judgePet == 2) {
            if(h_Cat < 10) {
                sleepLabel.text = "I need more happiness!";
            }
            else {
                h_Cat = 0;
                fl_Cat = 0;
                updateCat();
                sleepLabel.text = "zzzzZZZZ";
            }
        }
        else if(judgePet == 3) {
            if(h_Bird < 10) {
                sleepLabel.text = "I need more happiness!";
            }
            else {
                h_Bird = 0;
                fl_Bird = 0;
                updateBird();
                sleepLabel.text = "zzzzZZZZ";
            }
        }
        else if(judgePet == 4) {
            if(h_Bunny < 10) {
                sleepLabel.text = "I need more happiness!";
            }
            else {
                h_Bunny = 0;
                fl_Bunny = 0;
                updateBunny();
                sleepLabel.text = "zzzzZZZZ";
            }
        }
        else {
            if(h_Fish < 10) {
                sleepLabel.text = "I need more happiness!";
            }
            else {
                h_Fish = 0;
                fl_Fish = 0;
                updateFish();
                sleepLabel.text = "zzzzZZZZ";
            }
        }
    }
    
    // Dog
    var h_Dog: Int = 0;
    var fl_Dog: Int = 0;
    
    // Cat
    var h_Cat: Int = 0;
    var fl_Cat: Int = 0;
    
    // Bird
    var h_Bird: Int = 0;
    var fl_Bird: Int = 0;
    
    // Bunny
    var h_Bunny: Int = 0;
    var fl_Bunny: Int = 0;
    
    // Fish
    var h_Fish: Int = 0;
    var fl_Fish: Int = 0;
    
    var judgePet: Int = 2;
    
    // Update functions for five pets
    func updateCat() {
        flLabel.text = String(fl_Cat);
        happinessLabel.text = String(h_Cat);
        happiness.color = UIColor.cyan;
        if(h_Cat <= 10) {
            happiness.animateValue(to: CGFloat(Double(h_Cat) / 10.0));
        }
        else {
            happiness.animateValue(to: CGFloat(1));
        }
        foodLevel.color = UIColor.cyan;
        if(fl_Cat <= 10) {
            foodLevel.animateValue(to: CGFloat(Double(fl_Cat) / 10.0));
        }
        else {
            foodLevel.animateValue(to: CGFloat(1));
        }
        sleepLabel.text = "";
    }
    
    func updateDog() {
        flLabel.text = String(fl_Dog);
        happinessLabel.text = String(h_Dog);
        happiness.color = UIColor.red;
        if(h_Dog <= 10) {
            happiness.animateValue(to: CGFloat(Double(h_Dog) / 10.0));
        }
        else {
            happiness.animateValue(to: CGFloat(1));
        }
        foodLevel.color = UIColor.red;
        if(fl_Dog <= 10) {
            foodLevel.animateValue(to: CGFloat(Double(fl_Dog) / 10.0));
        }
        else {
            foodLevel.animateValue(to: CGFloat(1));
        }
        sleepLabel.text = "";
    }
    
    func updateBird() {
        flLabel.text = String(fl_Bird);
        happinessLabel.text = String(h_Bird);
        happiness.color = UIColor.yellow;
        if(h_Bird <= 10) {
            happiness.animateValue(to: CGFloat(Double(h_Bird) / 10.0));
        }
        else {
            happiness.animateValue(to: CGFloat(1));
        }
        foodLevel.color = UIColor.yellow;
        if(fl_Bird  <= 10) {
            foodLevel.animateValue(to: CGFloat(Double(fl_Bird) / 10.0));
        }
        else {
            foodLevel.animateValue(to: CGFloat(1));
        }
        sleepLabel.text = "";
    }
    
    func updateBunny() {
        flLabel.text = String(fl_Bunny);
        happinessLabel.text = String(h_Bunny);
        happiness.color = UIColor.green;
        if(h_Bunny <= 10) {
            happiness.animateValue(to: CGFloat(Double(h_Bunny) / 10.0));
        }
        else {
            happiness.animateValue(to: CGFloat(1));
        }
        foodLevel.color = UIColor.green;
        if(fl_Bunny <= 10) {
            foodLevel.animateValue(to: CGFloat(Double(fl_Bunny) / 10.0));
        }
        else {
            foodLevel.animateValue(to: CGFloat(1));
        }
        sleepLabel.text = "";
    }
    
    func updateFish() {
        flLabel.text = String(fl_Fish);
        happinessLabel.text = String(h_Fish);
        happiness.color = UIColor.magenta;
        if(h_Fish <= 10) {
            happiness.animateValue(to: CGFloat(Double(h_Fish) / 10.0));
        }
        else {
            happiness.animateValue(to: CGFloat(1));
        }
        foodLevel.color = UIColor.magenta;
        if(fl_Fish <= 10) {
            foodLevel.animateValue(to: CGFloat(Double(fl_Fish) / 10.0));
        }
        else {
            foodLevel.animateValue(to: CGFloat(1));
        }
        sleepLabel.text = "";
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        if(judgePet == 2) {
            if(fl_Cat > 0) {
                fl_Cat -= 1;
                h_Cat += 1;
                updateCat();
            }
            else {
                sleepLabel.text = "I need more food!";
            }
        }
        else if(judgePet == 1) {
            if(fl_Dog > 0) {
                fl_Dog -= 1;
                h_Dog += 1;
                updateDog();
            }
            else {
                sleepLabel.text = "I need more food!";
            }
        }
        else if(judgePet == 3) {
            if(fl_Bird > 0) {
                fl_Bird -= 1;
                h_Bird += 1;
                updateBird();
            }
            else {
                sleepLabel.text = "I need more food!";
            }
        }
        else if(judgePet == 4) {
            if(fl_Bunny > 0) {
                fl_Bunny -= 1;
                h_Bunny += 1;
                updateBunny();
            }
            else {
                sleepLabel.text = "I need more food!";
            }
        }
        else {
            if(fl_Fish > 0) {
                fl_Fish -= 1;
                h_Fish += 1;
                updateFish();
            }
            else {
                sleepLabel.text = "I need more food!";
            }
        }
    }
    
    @IBAction func feedButton(_ sender: UIButton) {
        if(judgePet == 2) {
            fl_Cat += 1;
            updateCat();
        }
        else if(judgePet == 1) {
            fl_Dog += 1;
            updateDog();
            
        }
        else if(judgePet == 3) {
            fl_Bird += 1;
            updateBird();
        }
        else if(judgePet == 4) {
            fl_Bunny += 1;
            updateBunny();
            
        }
        else {
            fl_Fish += 1;
            updateFish();
        }
    }
    
    
    @IBAction func DogButton(_ sender: UIButton) {
        Image.image = UIImage(named: "dog");
        imageColor.backgroundColor = UIColor.red;
        judgePet = 1;
        updateDog();

    }
    
    @IBAction func CatButton(_ sender: UIButton) {
        Image.image = UIImage(named: "cat");
        imageColor.backgroundColor = UIColor.cyan;
        judgePet = 2;
        updateCat();
    }
    
    @IBAction func BirdButton(_ sender: UIButton) {
        Image.image = UIImage(named: "bird");
        imageColor.backgroundColor = UIColor.yellow;
        judgePet = 3;
        updateBird();
    }
    
    @IBAction func BunnyButton(_ sender: UIButton) {
        Image.image = UIImage(named: "bunny");
        imageColor.backgroundColor = UIColor.green;
        judgePet = 4;
        updateBunny();
    }
    
    @IBAction func FishButton(_ sender: UIButton) {
        Image.image = UIImage(named: "fish");
        imageColor.backgroundColor = UIColor.magenta;
        judgePet = 5;
        updateFish();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

