//
//  ViewController.swift
//  Stormy
//
//  Created by Luu Tien Thanh on 6/30/16.
//  Copyright © 2016 Luu Tien Thanh. All rights reserved.
//

import UIKit

extension CurrentWeather {
    var temperatureString: String {
        return "\(Int(temperature))º"
    }
    
    var humidityString: String {
        let precentageValue = Int(humidity * 100)
        return "\(precentageValue)%"
    }
    
    var precipitationProbabilityString: String {
        let precentageValue = Int(precipitationProbability * 100)
        return "\(precentageValue)%"
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentHumidityLabel: UILabel!
    @IBOutlet weak var currentPrecipitationLabel: UILabel!
    @IBOutlet weak var currentWeatherIcon: UIImageView!
    @IBOutlet weak var currentSummaryLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    private let forecastAPIKey = "bed8463ef6e9d72bbdaf0b8767259b91"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let icon = WeatherIcon.PartlyCloudyDay.image
        let currentWeather = CurrentWeather(temperature: 56.0, humidity: 1.0, precipitationProbability: 1.0, summary: "Wet and rainy!", icon: icon)
        
        display(currentWeather)

//        let weatherData = NSData(contentsOfURL: forecastURL!)
//
//        let json = try! NSJSONSerialization.JSONObjectWithData(weatherData!, options: []) as! [String: AnyObject]

//        let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(forecastAPIKey)/")
//        let forecastURL = NSURL(string: "37.8267,-122.423", relativeToURL: baseURL)
//        
//        let configuartion = NSURLSessionConfiguration.defaultSessionConfiguration()
//        let session = NSURLSession(configuration: configuartion)
//        
//        let request = NSURLRequest(URL: forecastURL!)
//        
//        let dataTask = session.dataTaskWithRequest(request) { data, response, error in
//            print(data!)
//            print("Inside closure in background thread")
//        }
//        
//        print("On the main thread!")
//        
//        dataTask.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func display(weather: CurrentWeather) {
        currentTemperatureLabel.text = weather.temperatureString
        currentPrecipitationLabel.text = weather.precipitationProbabilityString
        currentHumidityLabel.text = weather.humidityString
        currentSummaryLabel.text = weather.summary
        currentWeatherIcon.image = weather.icon
    }
}

