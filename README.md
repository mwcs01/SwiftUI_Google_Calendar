This project was create to show how use pull data from a pulic Google Calendar and place it in a SwiftUI View.

Things you will need to do to get the project to work. 
1) Get a Google API key from https://console.cloud.google.com/ and Enable Calendar API.
    A) Under Gettings Started goto Expolore and enable API's
    B) Click on Credentials and create a new API Key
    C) Now enable Calendar access by going to Library on the same screen. Search for Calendar and select Google Calendar API and enale the API.
2) You will need to get the shared pulic ID of the Calendar you want to use. 

Once you have both of those items you need add them to the code.

They both can be found in the GetCalendar.swift file.

func getData() {
  let calendarID = "en.usa%23holiday@group.v.calendar.google.com"
  let apiKey = "YourAPIKey"
  }
