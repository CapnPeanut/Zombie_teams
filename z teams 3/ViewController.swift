//
//  ViewController.swift
//  z teams 3
//
//  Created by Brian Atchley on 3/4/15.
//  Copyright (c) 2015 Brian Atchley. All rights reserved.
//

import UIKit
import AVFoundation
import iAd


class ViewController: UIViewController {
    
//    var positions = Positions()
//    var names = Names()
//    var backgroundMusic = AVAudioPlayer()
//    var backgroundMusicTwo = AVAudioPlayer()
    
   // 6 player crap
    
    

    
    
   
    @IBAction func fourPlayerButton(sender: AnyObject) {
        backgroundMusic = self.setupAudioPlayerWithFile("from shadows", type:"mp3")
        backgroundMusic.volume = 0.3
        backgroundMusic.play()
    }
    @IBAction func sixPlayerButton(sender: AnyObject) {
        backgroundMusicTwo = self.setupAudioPlayerWithFile("Dont Laugh", type:"mp3")
        backgroundMusicTwo.volume = 0.3
        backgroundMusicTwo.play()
        
        
    }
    
    
    
        @IBOutlet weak var sixPlayerPersonLabel: UILabel!
    @IBOutlet weak var sixPlayerPersonTwoLabel: UILabel!
    @IBOutlet weak var sixPlayerPersonThreeLabel: UILabel!
    @IBOutlet weak var sixPlayerPersonFourLabel: UILabel!
    @IBOutlet weak var sixPlayerPersonFiveLabel: UILabel!
    @IBOutlet weak var sixPlayerPersonSixLabel: UILabel!
    
    
    
    

    
    
    @IBAction func newPositionsSixPlayer(sender: AnyObject) {
        var sweetness = positions
        
        
        
        
        func slippy() ->String{
        let arrayKey = Int(arc4random_uniform(UInt32(sweetness.positionsArray.count)))
        let randPosition = sweetness.positionsArray[arrayKey]
        
        // make sure the number isnt repeated
        sweetness.positionsArray.removeAtIndex(arrayKey)
        
        return randPosition
        }
        
        
    sixPlayerPersonLabel.text = slippy()
    sixPlayerPersonTwoLabel.text = slippy()
    sixPlayerPersonThreeLabel.text = slippy()
    sixPlayerPersonFourLabel.text = slippy()
    sixPlayerPersonFiveLabel.text = slippy()
    sixPlayerPersonSixLabel.text = slippy()
    
    
    
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // 4 player crap
    @IBOutlet weak var labelBalcony: UILabel!
    @IBOutlet weak var labelStairs: UILabel!
    @IBOutlet weak var labelWindow: UILabel!
    @IBOutlet weak var labelRover: UILabel!
    
    @IBOutlet weak var addMikeLabel: UILabel!
        func addMikeText() {
        self.addMikeLabel.text = "OLD Man Mike"
        }
    @IBOutlet weak var addChrisLabel: UILabel!
        func addChrisText(){
        self.addChrisLabel.text = "Chris"
        }
    @IBOutlet weak var addBrianLabel: UILabel!
        func addBrianText(){
        self.addBrianLabel.text = "Bee-Rye"
        }
    @IBOutlet weak var addPatriceLabel: UILabel!
        func addPatriceText(){
        self.addPatriceLabel.text = "Pat-rice"
        }
    @IBOutlet weak var addDanielLabel: UILabel!
        func addDanielText(){
        self.addDanielLabel.text = "Bang 'em D"
        }
    @IBOutlet weak var addTwomeyLabel: UILabel!
        func addTwomeyText(){
        self.addTwomeyLabel.text = "Chief Whooping Cough"
        }
    
    @IBOutlet weak var addMike: UIButton!
    @IBOutlet weak var addChris: UIButton!
    @IBOutlet weak var addBrian: UIButton!
    @IBOutlet weak var addPatrice: UIButton!
    @IBOutlet weak var addDaniel: UIButton!
    @IBOutlet weak var addTwomey: UIButton!
    
    @IBAction func addMikePressed(sender: AnyObject) {
       
        if contains(names.namesArray, addMikeLabel.text!){
            addMike.backgroundColor = UIColor.blackColor()
            let gay = find(names.namesArray, addMikeLabel.text!)
            names.namesArray.removeAtIndex(gay!)
        }
        else {
        
        addMike.backgroundColor = UIColor.greenColor()
        names.namesArray.append(addMikeLabel.text!)
        }
    }
    
    
    @IBAction func addChrisPressed(sender: AnyObject) {
        if contains(names.namesArray, addChrisLabel.text!){
            addChris.backgroundColor = UIColor.blackColor()
            let homo = find(names.namesArray, addChrisLabel.text!)
            names.namesArray.removeAtIndex(homo!)
        } else {
        addChris.backgroundColor = UIColor.greenColor()
        names.namesArray.append(addChrisLabel.text!)
        }
    }
    
    
    
    @IBAction func addBrianPressed(sender: AnyObject) {
        if contains(names.namesArray, addBrianLabel.text!){
            addBrian.backgroundColor = UIColor.blackColor()
            let fag = find(names.namesArray, addBrianLabel.text!)
            names.namesArray.removeAtIndex(fag!)
        } else{
        addBrian.backgroundColor = UIColor.greenColor()
        names.namesArray.append(addBrianLabel.text!)
        }
    }
    
    
    @IBAction func addPatricePressed(sender: AnyObject) {
        if contains(names.namesArray, addPatriceLabel.text!){
            addPatrice.backgroundColor = UIColor.blackColor()
            let queer = find(names.namesArray, addPatriceLabel.text!)
            names.namesArray.removeAtIndex(queer!)
        } else {
        addPatrice.backgroundColor = UIColor.greenColor()
        names.namesArray.append(addPatriceLabel.text!)
    }
    }
    
    
    @IBAction func addDanielPressed(sender: AnyObject) {
        if contains(names.namesArray, addDanielLabel.text!){
            addDaniel.backgroundColor = UIColor.blackColor()
            let balls = find(names.namesArray, addDanielLabel.text!)
            names.namesArray.removeAtIndex(balls!)
        
        } else {
        addDaniel.backgroundColor = UIColor.greenColor()
        names.namesArray.append(addDanielLabel.text!)
    }
    }
    @IBAction func addTwomeyPressed(sender: AnyObject) {
        if contains(names.namesArray, addTwomeyLabel.text!){
            addTwomey.backgroundColor = UIColor.blackColor()
            let nuts = find(names.namesArray, addTwomeyLabel.text!)
            names.namesArray.removeAtIndex(nuts!)
        } else {
        addTwomey.backgroundColor = UIColor.greenColor()
        names.namesArray.append(addTwomeyLabel.text!)
        }
    }
    
    
    /*
   
    @IBOutlet weak var labelBalcony: UILabel!
    @IBOutlet weak var labelStairs: UILabel!
    @IBOutlet weak var labelWindow: UILabel!
    @IBOutlet weak var labelRover: UILabel!
    @IBOutlet weak var addMike: UIButton!
    @IBOutlet weak var addChris: UIButton!
    @IBOutlet weak var addBrian: UIButton!
    @IBOutlet weak var addPatrice: UIButton!
    @IBOutlet weak var addDaniel: UIButton!
    @IBOutlet weak var addTwomey: UIButton!
    
    */
    
    
    //oooooooooooooooooooooooooooooooooooo
    
    


    
    
    
    
    
    //oooooooooooooooooooooooooooooooooooo
    
  // 4 player actions
    
   /* @IBAction func addMikePressed(sender: AnyObject) {
    
        addMike.backgroundColor = UIColor.greenColor()
        names.namesArray.append("OLD Man Mike")
    }

    
    @IBAction func addChrisPressed(sender: AnyObject) {
        addChris.backgroundColor = UIColor.greenColor()
        names.namesArray.append("Chris")
    }
    
    
    @IBAction func addBrianPressed(sender: AnyObject) {
        addBrian.backgroundColor = UIColor.greenColor()
        names.namesArray.append("Brian")
    }
    
    
    @IBAction func addPatricePressed(sender: AnyObject) {
        addPatrice.backgroundColor = UIColor.greenColor()
        names.namesArray.append("Patrice")
    }
    
    @IBAction func addDanielPressed(sender: AnyObject) {
        addDaniel.backgroundColor = UIColor.greenColor()
        names.namesArray.append("Daniel")
    }
    
    @IBAction func addTwomeyPressed(sender: AnyObject) {
        addTwomey.backgroundColor = UIColor.greenColor()
        names.namesArray.append("Twomey")
    }
    
    */

    
    
    
    @IBAction func newPositionsButton(sender: AnyObject) {
     /*   var a = names.namesArray[0]
        var b = names.namesArray[1]
        var c = names.namesArray[2]
        var d = names.namesArray[3]
       */
        
        
        
        
        
        
   //     labelBalcony.text = "\(labelBalcony)"
     //   labelWindow.text = "\(labelWindow)"
       // labelStairs.text = "\(labelStairs)"
        //labelRover.text = "\(labelRover)"
        
        
        
        
        let title = "Error"
        let message = "Pick some dudes, bruh!"
        let okText = "OK"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        let okButton = UIAlertAction(title: okText, style: UIAlertActionStyle.Cancel, handler: nil)
        alert.addAction(okButton)
        
        if names.namesArray.isEmpty {
            presentViewController(alert, animated: true, completion: nil)
        }
        else
        {
      
        
    //    let balconyNumber:Int? = labelBalcony.text?.toInt()
      //  let roverNumber:Int? = labelRover.text?.toInt()
        //let stairsNumber:Int? = labelStairs.text?.toInt()
        //let windowNumber:Int? = labelWindow.text?.toInt()
            
            
          
           var sweetnessTwo = names
            
            
    
    
        
        func dontRepeatAgainAgainAgain(){
          
            
            let arrayKey = Int(arc4random_uniform(UInt32(sweetnessTwo.namesArray.count)))
            let randName = sweetnessTwo.namesArray[arrayKey]
            
            // make sure the number isnt repeated
            sweetnessTwo.namesArray.removeAtIndex(arrayKey)
            
            
            
            labelRover.text = randName
            
          /*  func repeat() {
                
            labelRover.text = names.randomName()
            }
            
            labelRover.text = names.randomName()
            
            if labelRover.text == labelBalcony.text{
                repeat()
            }
            else if labelRover.text == labelWindow.text {
                repeat()
            }
            else if labelRover.text == labelStairs.text{
                repeat()
            }
            
           */
            
            
        }
        
        
        
        //oooooooooooooooooooooooooooooo
        
        func dontRepeatAgainAgain() {
            
            let arrayKey = Int(arc4random_uniform(UInt32(sweetnessTwo.namesArray.count)))
            let randName = sweetnessTwo.namesArray[arrayKey]
            
            // make sure the number isnt repeated
            sweetnessTwo.namesArray.removeAtIndex(arrayKey)
            
            
            
            labelWindow.text = randName
            
            
            
            
            
            
            
            
          /*  func repeat() {
                
                labelWindow.text = names.randomName()
            }
            
            labelWindow.text = names.randomName()
            
            if labelWindow == names.namesArray [0] {
                repeat()
            }
            else if labelWindow.text == labelBalcony.text {
                repeat()
            }
            else if labelWindow.text == labelStairs.text{
                repeat()
            }
          
          */
            
        }
        
        
        
      //oooooooooooooooooooooooooooooo
        
        func dontRepeatAgain() {
            
            let arrayKey = Int(arc4random_uniform(UInt32(sweetnessTwo.namesArray.count)))
            let randName = sweetnessTwo.namesArray[arrayKey]
            
            // make sure the number isnt repeated
            sweetnessTwo.namesArray.removeAtIndex(arrayKey)
            
            
            
            labelStairs.text = randName
            
            
            
            
            
          /*  func repeat() {
                
                labelStairs.text = names.randomName()
            }
            
            labelStairs.text = names.randomName()
            
            if labelStairs.text == labelBalcony.text{
                repeat()
            }
            else if labelStairs.text == labelRover.text {
                repeat()
            }
           else if labelStairs.text == labelBalcony.text{
                repeat()
            }
            
          */
            
        }
        
        
        //oooooooooooooooooooooooooooooooo
        
        func dontRepeat() {
            
            let arrayKey = Int(arc4random_uniform(UInt32(sweetnessTwo.namesArray.count)))
            let randName = sweetnessTwo.namesArray[arrayKey]
            
            // make sure the number isnt repeated
            sweetnessTwo.namesArray.removeAtIndex(arrayKey)
            
            
            
            labelBalcony.text = randName
            
            
            
            
         /*
            func repeat() {
                
                labelBalcony.text = names.randomName()
            }
            
            labelBalcony.text = names.randomName()
            
            if labelBalcony.text == labelWindow.text{
                repeat()
            }
            else if labelBalcony.text == labelStairs.text {
                repeat()
            }
            else if labelBalcony.text == labelRover.text{
                repeat()
            }
           */
            
        }
        
        
        
      //oooooooooooooooooooooooo
            if names.namesArray.count == 3 {
                labelBalcony.text = ""
                labelRover.text = ""
                labelStairs.text = ""
                labelWindow.text = ""
                dontRepeatAgainAgainAgain()
                
                dontRepeatAgain()
                
                dontRepeat()
                
                
            }
            else if names.namesArray.count == 2{
                labelBalcony.text = ""
                labelRover.text = ""
                labelStairs.text = ""
                labelWindow.text = ""
                dontRepeatAgain()
                
                dontRepeat()
                
                
            }
            else if names.namesArray.count == 1{
                labelBalcony.text = ""
                labelRover.text = ""
                labelStairs.text = ""
                labelWindow.text = ""
              dontRepeatAgainAgainAgain()
                
            }
            else{
                labelBalcony.text = ""
                labelRover.text = ""
                labelStairs.text = ""
                labelWindow.text = ""
            
            
            
            dontRepeatAgainAgainAgain()
            
            dontRepeatAgainAgain()
            
            dontRepeatAgain()
            
            dontRepeat()
        
        
        
        
        
        
        
            }
        
        
        }

        

        
        
    }
    
    
//    
//    func setupAudioPlayerWithFile(file:NSString, type:NSString) -> AVAudioPlayer  {
//        //1
//        var path = NSBundle.mainBundle().pathForResource(file as String, ofType:type as String)
//        var url = NSURL.fileURLWithPath(path!)
//        
//        //2
//        var error: NSError?
//        
//        //3
//        var audioPlayer:AVAudioPlayer?
//        audioPlayer = AVAudioPlayer(contentsOfURL: url, error: &error)
//        
//        //4
//        return audioPlayer!
//    }
//  
//    
//
//    
//    
//    
//    
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//       
//        
//        
//    }
//    override func prepareForSegue(segue: UIStoryboardSegue,
//        sender: AnyObject?) {
//            
//            let destination = segue.destinationViewController
//                as! UIViewController
//            destination.interstitialPresentationPolicy =
//                ADInterstitialPresentationPolicy.Automatic
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

