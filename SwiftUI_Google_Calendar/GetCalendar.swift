//
//  GetCalendar.swift
//  SwiftUI_Google_Calendar
//
//  Created by DB Admin on 12/18/19.
//  Copyright © 2019 Jim Baughman. All rights reserved.
//
import SwiftUI
import Combine
import Foundation

class GetCal: ObservableObject {
    let objectWillChange = ObservableObjectPublisher()
    var event = EventCalModel() {
        willSet {
            self.objectWillChange.send()
        }
    }
    
    init() {
        getData()
    }

    func getData() {
        let testDate = Date()
        let myDateFormatter = DateFormatter()
        myDateFormatter.locale = Locale(identifier: "en_US_POSIX")
        myDateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let startMO = testDate.startOfMonth()
        let endMO = testDate.endOfMonth()
        let calendarID = "en.usa#holiday@group.v.calendar.google.com"
        let apiKey = "YourAPIKey"

        var componets = URLComponents()
        componets.scheme = "https"
        componets.host = "www.googleapis.com"
        componets.path = "/calendar/v3/calendars/\(calendarID)/events"
        componets.queryItems = [
            URLQueryItem(name: "key", value: apiKey),
            URLQueryItem(name: "timeMin", value: myDateFormatter.string(from: startMO)),
            URLQueryItem(name: "timeMax", value: myDateFormatter.string(from: endMO)),
            URLQueryItem(name: "showDelted", value: "false"),
            URLQueryItem(name: "singleEvents", value: "true")
        ]
        
        let urlFormat = componets.url

        URLSession.shared.dataTask(with: urlFormat!) { (data, response, error) in
            if let httpResponse = response as? HTTPURLResponse {
                if httpResponse.statusCode == 200 {
                    if let data = data {
                        DispatchQueue.main.async {
                            do {
                                let test = try JSONDecoder().decode(EventCal.self, from: data)
                                self.event = EventCalModel(model: test)
                            } catch {
                                print(error.localizedDescription)
                            }
                        }
                    }
                }
            }
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
        }.resume()
    }
}
