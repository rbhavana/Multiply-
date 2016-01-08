//
//  ViewController.swift
//  Multiply
//
//  Created by Student on 9/14/15.
//  Copyright (c) 2015 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var segmentContoller: UISegmentedControl!
    @IBOutlet weak var textfieldOne: UITextField!
    @IBOutlet weak var textfieldTwo: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
    }

    @IBAction func buttonPressed(sender: AnyObject)
    {
      var inputOne = textfieldOne.text.toInt()
      var inputTwo = textfieldTwo.text.toInt()
      var answer = inputOne! * inputTwo!
      
      if answer == 64
      {myImageView.image = UIImage (named: "mario kart 2")}
      else if answer % 2 == 1
      {myImageView.image = UIImage (named: "Mario Kart 1")}
      else if answer % 2 == 0
      {myImageView.image = UIImage (named: "mario")}

        
        if (segmentContoller.selectedSegmentIndex) == 0
        { answer = inputOne! + inputTwo!}
        
        if (segmentContoller.selectedSegmentIndex) == 1
        { answer = inputOne! - inputTwo!}
        
        if (segmentContoller.selectedSegmentIndex) == 2
        { answer = inputOne! * inputTwo!}
        
        if (segmentContoller.selectedSegmentIndex) == 3
        { answer = inputOne! / inputTwo!}
        
myLabel.text = "\(answer)"
    }
    


}



