# Croydon Bins

This is an app that will pull the bin collection dates from croydon councils website. I am accessing the council website via the accessible version as it lets me view the individual html containers on the website and updates the urls with the postcode. The interactive version uses JS so the containers containing the data I want to render arent accessible and the urls dont update to show the postcode as the selection of the postcode is replaced with an inbuilt iframe/pop up whereas in the accessible version it is routed to an actual page.

This is currently in BETA. The croydon council website [found here](http://maps.croydon.gov.uk/aya/pages/aya/accessible/set-home.jsp?address=&command=searchAddress) doesnt have an API thus when querying the page a text/html document is returned. This version of the application is "usable" where the app renders a webview for the user to interact with the croydon council website to get their bin dates so it basically acts like a non-responsive PWA as the website has only been made to render for a computer screen.

How I want the application to work:
- user enters postcode to search
- postcode is queried on the croydon council page
- app renders list of homes to choose from
- user selects home
- app renders bins and dates of collection

Current implementation:
- a webview is used to display the croydon council page
- user enters postcode in webview
- user selects house from webview
- user is redirected to page showing when bin dates are in webview

What I can do currently:
- get postcode input
  - use a TextField to get the postcode input
- figured out how to pass postcode to webpage
  - edit 
    ```dart
    http://maps.croydon.gov.uk/aya/pages/aya/accessible/set-home.jsp?address=&command=searchAddress&page=2
    ``` 
    so that the url is structured like this 
    ```dart
    http://maps.croydon.gov.uk/aya/pages/aya/accessible/set-home.jsp?address=$postcode&command=searchAddress&page=2
    ```
    where $postcode is the postcode that the user has entered. The postcode needs to be structured as XXX XXX or XXXX XXX.

TODO:
- find a way to render the search result div on the page in the flutter app or find a way to return the list of addresses to the flutter app
  - error handling is handled by the council website but I need to find a way to return the error message (located in the search results div) back to the flutter app
- find a way to send the selected address to the council website
- find a way to render the div containing the bin collection dates to the app

The biggest hurdle will be finding a way to render a specific section from the council website in the flutter app. The error handling and the bin collection dates will use similar code so it will be much easier to implement after I have found a way to do this. The second hurdle would be finding a way to send the submission of the selected address from the flutter app to the website as although the url does change, the url changes to render the collection dates page immediately, there is no change in the url to specify the location data manually.

If you want to fork this please feel free to do so. I will be working in the development/testing branch (I haven't decided what to call the branch yet) so that a working version of the application will always stay on the master branch. 
