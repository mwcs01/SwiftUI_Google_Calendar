[![Build Status](https://img.shields.io/badge/platforms-iOS-lightgrey.svg)](https://github.com/Jinxiansen/SwiftUI)
[![Xcode](https://img.shields.io/badge/Xcode-11.3-blue.svg)](https://developer.apple.com/xcode)
[![swift-version](https://img.shields.io/badge/swift-5.1-brightgreen.svg)](https://github.com/apple/swift)
[![swiftui-version](https://img.shields.io/badge/swiftui-brightgreen)](https://developer.apple.com/documentation/swiftui)
![License](https://img.shields.io/github/license/JakeLin/SwiftWeather.svg?style=flat)


This project was created as an example on how to pull data from a public Google Calendar and place it in a SwiftUI List View.

Things you will need to get the project to work. 
1) Get a Google API key from https://console.cloud.google.com/ and Enable Calendar API.
    
    * Under Getting Started goto **Expolore and enable API's**.
    * Click on **Credentials** and create a new API Key, this will be the key you need for your API Calls to work. Best practice is to create API key for each app.
    * Now enable Calendar access by going to **Library** on the same screen. Search for Calendar and select Google Calendar API and enale the API.

2) You will need to get the **shared pulic ID** of the Calendar you want to use. 
    * The project is currently set to use the public US Holiday Calendar.

Once you have your API Key and the public id you need add them to the code.

They both can be found in the GetCalendar.swift file.
```swift
func getData() {
  let calendarID = "en.usa#holiday@group.v.calendar.google.com"
  let apiKey = "YourAPIKey"
}
```
If you have any `%` values in your Calendar ID make sure to change them to the repsented value.

* %23 = #
* %40 = @
* For a full list of conversions see [HTML URL Encoding Reference](https://www.w3schools.com/tags/ref_urlencode.asp)


A feature that was found to be usefull and added to this example was get the first and last day of the current month so that it would only display items for the current month. 

<img src="https://raw.githubusercontent.com/dbadmin/SwiftUI_Google_Calendar/master/ScreenShots/Simulator_Screen_Shot.png" width="45%"></img> 


