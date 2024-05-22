//
//  ResultViewController.swift
//  DemoDelivery
//
//  Created by user on 5/22/24.
//

import UIKit

class ResultViewController: UIViewController {

    //파라메터 받기(Property)
    var paramTextField: String = ""
    var paramSwitch: Bool = false
    var paramStepper: Double = 0
    var paramSlider: Float = 0
    var paramSegment: Int = 0
    
    @IBOutlet var lblResult: UILabel!
    
    
    @IBAction func dismiss(_ sender: Any) {
        //취소
        self.presentingViewController?.dismiss(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var result:String = ""
        result = paramTextField + "\n"
        result += (paramSwitch == true ? "선택함" : "선택안함") + "\n"
        result += "스테퍼: \(paramStepper) \n"
        result += "슬라이더: \(paramSlider) \n"
        switch paramSegment {
        case 0:
            result += "남자"
        case 1:
            result += "여자"
        default:
            break
        }
        self.lblResult.text = result
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
