//
//  ContentView.swift
//  SwiftUI_Google_Calendar
//
//  Created by DB Admin on 12/18/19.
//  Copyright © 2019 Jim Baughman. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var manager = GetCal()

    var body: some View {
        RowView(data: manager.event)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
