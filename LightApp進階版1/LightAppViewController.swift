//
//  LightAppViewController.swift
//  LightApp進階版1
//
//  Created by Huang Hao on 2017/8/17.
//  Copyright © 2017年 Huang Hao. All rights reserved.
//

import UIKit




class LightAppViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIImageView!

    @IBOutlet weak var Button: UILabel!
    
    @IBOutlet weak var colorChangeButton: UIButton!
    
    var color1 = UIColor(red: CGFloat(148.0/255.0), green: CGFloat(0.0/255.0), blue: CGFloat(211.0/255.0), alpha: 1)
    var color2 = UIColor(red: CGFloat(75.0/255.0), green: CGFloat(0.0/255.0), blue: CGFloat(130.0/255.0), alpha: 1)
    var color3 = UIColor.blue
    var color4 = UIColor.green
    var color5 = UIColor.yellow
    var color6 = UIColor.orange
    var color7 = UIColor.red
    var color8 = UIColor.brown
    
    var count = 0
    
    
    func colorRainBow (){
        count = count + 1
        Button.text = "\(count)"
        if count == 1 {
            colorView.backgroundColor = color1
        }else{
            if count == 2 {
                colorView.backgroundColor = color2
            }else{
                if count == 3 {
                    colorView.backgroundColor = color3
                }else{
                    if count == 4 {
                        colorView.backgroundColor = color4
                    }else {
                        if count == 5 {
                            colorView.backgroundColor = color5
                        }else {
                            if count == 6 {
                                colorView.backgroundColor = color6
                            }else {
                                if count == 7 {
                                    colorView.backgroundColor = color7
                                    count = 0
                                }else{
                                    
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    

    
    @IBAction func colorChangeButton(_ sender: UIButton) {
        
        colorRainBow()
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
