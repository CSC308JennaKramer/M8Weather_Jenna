//
//  ViewController.swift
//  M3Weather
//
//  Created by Kramer, Jenna L. on 2/5/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var tempWarningLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let weather = "Stormy"
        let temp = 60
        
        if weather == "Stormy"{
            weatherImageView.image = UIImage(named: "stormy")
            statusLabel.text = "Stormy"
            //tempLabel.text =
            
        } else if weather == "Snowy"{
            weatherImageView.image = UIImage(named: "snowy")
        }else if weather == "Sunny"{
            weatherImageView.image = UIImage(named: "sun")
        }else if weather == "Rainy"{
            weatherImageView.image = UIImage(named: "weather")
        }else if weather == "Cloudy"{
            weatherImageView.image = UIImage(named: "clouds")
        }
        
        switch weather{
        case "Sunny":
            weatherImageView.image = UIImage(named: "sun")
        case "Rainy":
            weatherImageView.image = UIImage(named: "weather")
        case "Stormy":
            weatherImageView.image = UIImage(named: "stormy")
        case "Cloudy":
            weatherImageView.image = UIImage(named: "clouds")
        default:
            break
        }
        
        statusLabel.text = weather
        tempLabel.text = "\(UnitTemperature.fahrenheit.symbol)\(temp)"
        
        if temp < 20{
            tempWarningLabel.text = "Extreme Cold"
        } else if temp >= 20 && temp <= 49 {
            tempWarningLabel.text = "It's cold outside!"
        } else if temp >= 50 && temp <= 68 {
            tempWarningLabel.text = "Cool and mild!"
        } else if temp >= 69 && temp <= 85 {
            tempWarningLabel.text = "Warm!"
        } else {
            tempWarningLabel.text = "Heat Alert!"
        }
        
        switch temp{
        case ..<20:
            tempWarningLabel.text = "Extreme Cold"
        case 20..<50:
            tempWarningLabel.text = "It's cold outside!"
        case 50..<69:
            tempWarningLabel.text = "Cool and mild!"
        case 69..<86:
            tempWarningLabel.text = "Warm!"
        default:
            tempWarningLabel.text = "Heat Alert!"
        }
        
    }
    
}
