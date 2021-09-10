//
//  NavigationViewController.swift
//  Weather
//
//  Created by yinze cui on 2021/9/9.
//

import UIKit
import CoreLocation

class NavigationViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var imageScreen: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set stepper
        let stepper=UIStepper(frame:CGRect(x:270,y:800,width:0,height:0))
        stepper.minimumValue=0
        stepper.maximumValue=3
        stepper.stepValue=1
        stepper.addTarget(self, action: #selector(click), for:UIControl.Event.valueChanged)
        stepper.wraps = true
        self.view.addSubview(stepper)
        
        //call timer function
    
        timerStart(timerInterval: 5.0, status: true)
        
        
        //when user launch app then request
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyThreeKilometers
        locationManager.requestLocation()
    }
    
    
    @objc func click(stepper:UIStepper){
        //print(stepper.value)
        switch stepper.value {
        case 0.0: imageScreen.image = UIImage(named: "bg")
        case 1.0: imageScreen.image = UIImage(named: "23")
        case 2.0: imageScreen.image = UIImage(named: "24")
        case 3.0: imageScreen.image = UIImage(named: "25")

        default:
            print("end")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations:[CLLocation]) {
        let lon = locations[0].coordinate.longitude
        let lat = locations[0].coordinate.latitude
        print(lon)
        print(lat)
    }
    
    func locationManager(_ manager: CLLocationManager,didFailWithError error:Error) {
        print(error)
    }
    // Do any additional setup after aselfloading} the view
    
    func timerStart(timerInterval:Double, status:Bool){
        var countTimer = 0;
        let countdownTimer = Timer(timeInterval: timerInterval, repeats: status){_ in
            switch countTimer%4 {
            case 0: self.imageScreen.image = UIImage(named: "bg")
            case 1: self.imageScreen.image = UIImage(named: "23")
            case 2: self.imageScreen.image = UIImage(named: "24")
            case 3: self.imageScreen.image = UIImage(named: "25")

            default:
                print("end")
            }
            
            countTimer += 1
        }
        RunLoop.current.add(countdownTimer, forMode: .default)
        countdownTimer.fire()
        
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
