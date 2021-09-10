//
//  SettingTableViewCell.swift
//  Weather
//
//  Created by 徐艺文 on 9/9/21.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    @IBOutlet weak var autoSwitch: UISwitch!
    @IBOutlet weak var timeSlider: UISlider!
    
    private var time = 30
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func autoChangeTriggered(_ sender: Any) {
        if(autoSwitch.isOn){
            print("On")
        }else{
            print("Off")
        }
    }
    

    @IBAction func timeSliderValueChange(_ sender: Any) {
        time = Int(timeSlider.value)
    }
    
    //public function
    func getTime() -> Int{
        return time;
    }
    

}
