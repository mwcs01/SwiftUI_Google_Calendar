//
//  CalendarRowView.swift
//  SwiftUI_Google_Calendar
//
//  Created by DB Admin on 12/18/19.
//  Copyright © 2019 Jim Baughman. All rights reserved.
//

import SwiftUI

struct RowView: View {
    var data: EventCalModel
    var body: some View {
        VStack {
            List(data.items.sorted() { $0.sort < $1.sort }, id: \.id) { item in
                HStack {
                    VStack {
                        if item.dateTime != "" {
                            Text("\(self.getOnlyDateMonthYearFromFullDate(currentDateFormate: "yyyy-MM-dd'T'HH:mm:ssZ", conVertFormate: "MMM", convertDate: item.dateTime))")
                            Text("\(self.getOnlyDateMonthYearFromFullDate(currentDateFormate: "yyyy-MM-dd'T'HH:mm:ssZ", conVertFormate: "dd", convertDate: item.dateTime))")
                            Text("\(self.getOnlyDateMonthYearFromFullDate(currentDateFormate: "yyyy-MM-dd'T'HH:mm:ssZ", conVertFormate: "yyyy", convertDate: item.dateTime))")
                        }
                        if item.start != "" {
                            Text("\(self.getOnlyDateMonthYearFromFullDate(currentDateFormate: "yyyy-MM-dd", conVertFormate: "MMM", convertDate: item.start))")
                            Text("\(self.getOnlyDateMonthYearFromFullDate(currentDateFormate: "yyyy-MM-dd", conVertFormate: "dd", convertDate: item.start))")
                        }
                    }.padding()
                    HStack{
                        if item.end != "" {
                            VStack {
                                Text(item.summary)
                                Text("\(self.getOnlyDateMonthYearFromFullDate(currentDateFormate: "yyyy-MM-dd", conVertFormate: "MM-dd", convertDate: item.start)) - \(self.getOnlyDateMonthYearFromFullDate(currentDateFormate: "yyyy-MM-dd", conVertFormate: "MM-dd", convertDate: item.end))")
                            }
                        } else {
                            Text(item.summary)
                        }
                    }
                }
            }
        }
    }
    
    func getOnlyDateMonthYearFromFullDate(currentDateFormate: String, conVertFormate: String, convertDate: String ) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = currentDateFormate
        let finalDate = formatter.date(from: convertDate)
        formatter.dateFormat = conVertFormate
        let dateString = formatter.string(from: finalDate!)
        return dateString
    }
}
