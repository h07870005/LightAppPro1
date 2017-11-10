//
//  LightAppViewController.swift
//  LightApp進階版1
//
//  Created by Huang Hao on 2017/8/17.
//  Copyright © 2017年 Huang Hao. All rights reserved.
//

import UIKit
import GameplayKit





class LightAppViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIImageView!

    @IBOutlet weak var Button: UILabel!
    
    @IBOutlet weak var colorChangeButton: UIButton!
    
    @IBOutlet weak var RandomNumber: UILabel!
    
    
    let 紫色 = UIColor(red: CGFloat(148), green: CGFloat(0), blue: CGFloat(211), alpha: 1)
    let 靛色 = UIColor(red: CGFloat(75), green: CGFloat(0), blue: CGFloat(130), alpha: 1)
    let 藍色 = UIColor(red: CGFloat(0), green: CGFloat(0), blue: CGFloat(255), alpha: 1)
    let 綠色 = UIColor(red: CGFloat(0), green: CGFloat(255), blue: CGFloat(0), alpha: 1)
    let 黃色 = UIColor(red: CGFloat(255), green: CGFloat(255), blue: CGFloat(0), alpha: 1)
    let 橙色 = UIColor(red: CGFloat(255), green: CGFloat(127), blue: CGFloat(0), alpha: 1)
    let 紅色 = UIColor(red: CGFloat(255), green: CGFloat(0), blue: CGFloat(0), alpha: 1)
    
    func colorRandom (){
        let colorarray = [紫色,靛色,藍色,綠色,黃色,橙色,紅色]
        let numbercolor = GKShuffledDistribution(lowestValue: 0, highestValue: colorarray.count-1)
        let number = numbercolor.nextInt()
        colorView.backgroundColor = colorarray[number]
        print(number)
        RandomNumber.text = "\(number)"
        
       /* if number == 0 {
            colorView.backgroundColor = 紫色
            RandomNumber.text = "\(number)"
        }
        if number == 1 {
            colorView.backgroundColor = 靛色
            RandomNumber.text = "\(number)"
        }
        if number == 2 {
            colorView.backgroundColor = 藍色
            RandomNumber.text = "\(number)"
        }
        if number == 3 {
            colorView.backgroundColor = 綠色
            RandomNumber.text = "\(number)"
        }
        if number == 4 {
            colorView.backgroundColor = 黃色
            RandomNumber.text = "\(number)"
        }
        if number == 5 {
            colorView.backgroundColor = 橙色
            RandomNumber.text = "\(number)"
        }
        if number == 6 {
            colorView.backgroundColor = 紅色
            RandomNumber.text = "\(number)"
        }
 */
    }
    
    
    

    
    @IBAction func colorChangeButton(_ sender: UIButton) {
        
        colorRandom()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorRandom()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
