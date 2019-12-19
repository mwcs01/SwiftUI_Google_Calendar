This project was created as an example on the use of pulling data from a pulic Google Calendar and place it in a SwiftUI View.

Things you will need to do to get the project to work. 
1) Get a Google API key from https://console.cloud.google.com/ and Enable Calendar API.
    
    * Under Getting Started goto **Expolore and enable API's**.
    * Click on **Credentials** and create a new API Key, this will be the key you need for your API Calls to work. Best practice is to create API key for each app.
    * Now enable Calendar access by going to **Library** on the same screen. Search for Calendar and select Google Calendar API and enale the API.

2) You will need to get the **shared pulic ID** of the Calendar you want to use. 
  * The project is currently set to use the public US Holiday Calendar.

Once you have both of those items you need add them to the code.

They both can be found in the GetCalendar.swift file.
```
func getData() {
  let calendarID = "en.usa%23holiday@group.v.calendar.google.com"
  let apiKey = "YourAPIKey"
}
```

A feature that was found to be usefull and added to this example was get the first and last day of the current month so that it would only display items for the current month. 

![Example Screen](https://raw.githubusercontent.com/dbadmin/SwiftUI_Google_Calendar/master/ScreenShots/Simulator_Screen_Shot.png)


