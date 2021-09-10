//
//  MyViewController.swift
//  Weather
//
//  Created by yinze cui on 2021/9/8.
//

import UIKit

class MyViewController: UIViewController, UIGestureRecognizerDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view=UIImageView(image:UIImage(named:"23"))
        view.frame=CGRect(x: 0, y: 0, width: 110, height: 30)
        return view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let pickerView=UIPickerView(frame:CGRect(x:20,y:100,width:280,height:200))
        pickerView.delegate=self
        pickerView.dataSource=self
        self.view.addSubview(pickerView)
        // Do any additional setup after loading the view.
        navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
    

    @IBAction func back(segue: UIStoryboardSegue) {
        print("closed")
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
