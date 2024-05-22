//
//  ViewController.swift
//  DemoDelivery
//
//  Created by user on 5/22/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var paramTextField: UITextField!
    @IBOutlet var paramSwitch: UISwitch!
    @IBOutlet var paramStepper: UIStepper!
    
    @IBOutlet var paramSlider: UISlider!
    @IBOutlet var paramSegment: UISegmentedControl!
    
    @IBOutlet var lblSwitch: UILabel!
    
    @IBOutlet var lblStepper: UILabel!
    
    @IBOutlet var lblResult: UILabel!
    
    
    @IBAction func onSwitch(_ sender: Any) {
        //Any ==> UISwitch는 다운캐스팅
        let updateSwitch = sender as! UISwitch
        if (updateSwitch.isOn == true ) {
            self.lblSwitch.text = "스위치 켜진 상태"
        } else {
            self.lblSwitch.text = "스위치 꺼진 상태"
        }
    }
    @IBAction func onStepper(_ sender: Any) {
        let intervalStepper = sender as! UIStepper
        self.lblStepper.text = "스테퍼:\(Int(intervalStepper.value))"
    }
    
    @IBAction func onSlider(_ sender: Any) {
        let slider = sender as! UISlider
        self.lblResult.text = "슬라이더:\(Int(slider.value))"
    }
    
    @IBAction func onSegment(_ sender: Any) {
        let segment = sender as! UISegmentedControl
        switch segment.selectedSegmentIndex {
        case 0:
            self.lblResult.text = "남자"
        case 1:
            self.lblResult.text = "여자"
        default:
            break
        }
        
    }
    
    
    @IBAction func onSubmit(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

