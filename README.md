


In-Flight App
Overview:

The In-Flight Entertainment App is a mobile application developed using the Flutter framework. 
It provides passengers with a selection of movies to watch during their flight, along with features such as searching, favoriting movies, and watching trailers.

Features:
-Movie Selection: Displays a list of available movies for passengers to choose from.

-Search Functionality: Allows users to search for movies by title.

-Favorite Movies: Users can mark movies as favorites for easy access later.

-Watch Trailers: Users can watch trailers of selected movies.

Technologies Used:
Flutter: A cross-platform framework developed by Google for building natively compiled applications for mobile, web, and desktop from a single codebase. Flutter uses the Dart programming language.

Dart: A programming language optimized for building user interfaces with Flutter.

Material Design: The app follows Google's Material Design guidelines for a modern and intuitive user interface.

url_launcher Package: Used to launch URLs for watching movie trailers in a web browser.

Development Environment:
Flutter SDK: The Flutter software development kit is required for developing Flutter applications. It includes the Flutter framework, Dart SDK, and other development tools.

Integrated Development Environment (IDE): Developers can use IDEs such as Visual Studio Code or Android Studio with the Flutter and Dart plugins installed for coding and debugging.

Usage:
 -Clone the repository to your local machine.
 -Open the project in your preferred IDE.
 -Make sure you have Flutter installed and set up properly.
 -Run the app on an emulator or physical device using the flutter run command.
 -Explore the app's features such as movie selection, searching, and watching trailers.
 

seat Number Warning System: When the user approaches their assigned seat, the app will provide a vibration alert to notify them. We'll create a new screen where users can enter their seat number, and when they approach their seat, the phone will vibrate.

•	I've improved the title of the SeatNumberScreen to make it clearer what the screen is for.
•	I've added an OutlineInputBorder to the TextField for better visual clarity.
•	I've modified the alert dialog message to provide more descriptive guidance to the user.
•	I've updated the button text to "Start Seat Alert" for clarity.
These improvements enhance the user experience and make the seat number warning system feature more intuitive to use.

1.	Baggage Notification Feature:
•	When passengers disembark from the plane, they often need to wait for their baggage to arrive at the baggage waiting area. Our system includes a baggage notification feature that allows passengers to receive real-time alerts when their baggage arrives.

•	Passengers can input their baggage tag or receipt number into the mobile app to subscribe to notifications for their specific baggage. Once their baggage arrives at the waiting area, they'll receive an instant notification on their mobile device, enabling them to retrieve their baggage promptly.

3.	Damage Reporting and Detection:
•	In the unfortunate event that a passenger's baggage is damaged during transit, our system provides a convenient way for passengers to report the damage.
•	Passengers can use the mobile app to upload photos of their damaged baggage. The system includes an image processing component built in C++ that analyzes the uploaded photos to detect damages.
•	Upon detection of damages, passengers are promptly notified through the app, allowing them to take appropriate action, such as filing a complaint or seeking assistance from airport staff.

5.	Photo Upload and Processing:
•	The system includes a dedicated screen within the mobile app for passengers to upload photos of their damaged baggage.
•	Passengers can either select existing photos from their device's gallery or capture new photos using the device's camera. Once uploaded, the photos are sent to the backend system for processing.
•	The C++ backend system utilizes image processing algorithms to analyze the uploaded photos and identify any signs of damage, such as tears, dents, or scratches.

7.	Notification Management:
•	The system's backend component manages the process of sending notifications to passengers regarding their baggage status.
•	Notifications are triggered based on events such as baggage arrival at the waiting area or detection of damages in uploaded photos.
•	Passengers receive notifications directly on their mobile devices, providing them with timely updates and alerts throughout their journey.

9.	User-Friendly Interface:
•	The mobile app features an intuitive user interface that is easy to navigate and interact with.
•	Passengers can quickly access the various features of the app, including baggage notification, damage reporting, and photo upload, with minimal effort.
•	Clear instructions and prompts guide passengers through each step of the process, ensuring a seamless and hassle-free experience.

Overall, the suitcase system combines cutting-edge technology with user-centric design to streamline the baggage management process and enhance the overall travel experience for passengers. By providing real-time notifications, damage detection capabilities, and user-friendly interfaces, the system aims to empower passengers with greater control and peace of mind when it comes to managing their baggage.

1.	Flight Information and Task Management:
   
•	The app provides flight attendants and pilots with easy access to crucial flight information and task management capabilities.
•	It includes features for managing flight plans, passenger lists, special service 
•	requests, and other operational data.

2.	Passenger Services and Communication:
•	It facilitates more effective communication between flight attendants and passengers.
•	The app offers a communication channel for receiving passenger requests and feedback, as well as managing special service requests.

4.	Emergency Management and Training:
•	It equips flight attendants and pilots with essential training and information for handling emergencies.
•	This includes emergency procedures, first aid instructions, and safety protocols to ensure swift and effective response during crisis situations.

6.	Cabin Equipment and Inventory Tracking:
•	The app features an inventory management system to streamline tracking of cabin equipment and supplies.
•	Flight attendants can record, track, and request replenishment or repair of cabin equipment and materials as needed.

8.	Passenger Monitoring and Comfort Management:
•	It enables flight attendants to monitor passenger behavior and comfort levels.
•	This includes tracking passenger movements, seat preferences, and special needs, allowing for personalized service delivery.

1.	Food and Beverage Ordering:
•	Passengers can conveniently browse and order from a selection of food and beverage items available onboard using the FMS mobile app. The app provides a user-friendly interface for placing orders, making inflight dining more convenient and enjoyable.

2.	Flight Sharing and Social Media Integration:
•	FMS allows passengers to share their flight details on social media platforms directly from the mobile app. This feature enhances social connectivity and enables passengers to keep friends and family informed about their travel plans.

3.	Weather Forecast and Travel Guide:
•	Passengers can access real-time weather forecasts and travel guides for their destination through the FMS mobile app. This feature provides valuable information about local weather conditions, attractions, and activities, enhancing the overall travel experience.


Benefits:
•	Efficiency: FMS automates various aspects of airline operations, reducing manual effort and minimizing errors.
•	Convenience: Passengers can access essential flight information and services conveniently through the mobile app, enhancing their travel experience.
•	Personalization: FMS enables airlines to deliver personalized services to passengers based on their preferences and requirements.
•	Enhanced Communication: FMS facilitates seamless communication between airlines, flight crew, and passengers, ensuring timely updates and notifications throughout the travel journey.
In summary, Flight Management System is a comprehensive solution that revolutionizes airline operations and passenger experience, offering a range of features designed to optimize efficiency, convenience, and satisfaction in air travel.

Pilot-Specific Fingerprint Authentication System:

This feature is one of the integrated security measures in the aircraft application. It provides pilots with access to the application using fingerprint authentication.
This ensures that only authorized pilots can access the application and view flight data, routes, and other sensitive information. The fingerprint system verifies the identity of pilots and allows them to securely log into the application.

Emergency Alert System:
This feature provides emergency notifications in unexpected situations and during pilot changes.
For example, in case of a pilot experiencing sudden illness or requiring replacement due to an emergency, the application quickly notifies other pilots and relevant individuals. 
This enables the aircraft crew to quickly organize and ensure flight safety.


Explanation:

•	The code defines two classes: FlightRoute and Pilot, representing flight routes and pilots respectively.
•	FlightRoute class has two private member variables departureAirport and arrivalAirport to store the departure and arrival airports.
•	Pilot class has a private member variable name to store the pilot's name and a vector assignedRoutes to store the flight routes assigned to the pilot.
•	The FlightRoute class constructor initializes the departure and arrival airports.
•	Getter methods are provided in both classes to retrieve the departure and arrival airports for FlightRoute and the pilot's name and assigned routes for Pilot.
•	In the main() function, a Pilot object named pilot is created with the name "Captain John", and two FlightRoute objects route1 and route2 are created with departure and arrival airport codes. These routes are then added to the pilot object using the addAssignedRoute() method.
•	Finally, the pilot's information and assigned routes are displayed using cout statements.

Airport Navigation System

1.	Airport Layout Representation:
•	The system represents the layout of the airport, including gates, security checkpoints, and tax-free shopping areas.

2.	Destination and Gate Mapping:
•	Passengers input their destination and gate information, and the system guides them to the corresponding gate through the appropriate security checkpoint.

3.	Tax-Free Shopping Information:
•	If the gate is located near a tax-free shopping area, the system informs the passenger about the availability of tax-free shopping and provides additional information about the offerings.

5.	Error Handling:
•	The system checks for valid destination and gate inputs, and it provides appropriate error messages if invalid inputs are detected.

Usage:

•	Users input their destination and gate information.
•	The system navigates the user to the designated gate, providing information about nearby tax-free shopping areas if applicable.
This Airport Navigation System aims to enhance the passenger experience by providing efficient navigation within the airport premises, guiding passengers to their gates while also informing them about available amenities such as tax-free shopping areas.

1.	Airport Map and Information: This feature includes layout information for both domestic and international terminals, as well as special information points. Passengers can easily find their locations within the airport and access specific service points.
   
2.	Gate Navigation Assistance: Enables passengers to be directed to their intended arrival gates. Passengers receive information about the most suitable routes to their arrival gates, ensuring a swift and seamless journey.
   
3.	Duty-Free Shopping Areas: Indicates the presence of duty-free shopping areas at the airport and provides information for passengers to take advantage of this opportunity.
Passengers can plan their shopping experiences by learning about duty-free shopping facilities.

4.	Domestic and International Flight Information: Provides information on whether the passengers' destinations are for domestic or international flights, offering necessary guidance. This feature assists passengers in determining the appropriate terminals or gates for their flights.
   
5.	Easy Passport Control Points: Specifies the availability of easy passport control points at the airport. Passengers can utilize these points for expedited passage through passport control, facilitating a smoother travel experience.

Airport Emergency Assistance Call Button Feature

-Passengers can press this button to make a call for assistance in cases of theft, lost items, or stolen belongings, alerting the police or airport personnel. Additionally, the program includes a control mechanism to prevent multiple calls and ensures that the emergency assistance call is made only once.


1.	CabinCrew Class: Represents the cabin crew members on the aircraft. Each cabin crew member is instantiated with a name and provides instructions to passengers during emergencies and assists them during evacuation processes.
   
2.	Pilot Class: Represents the pilot on the aircraft. The pilot provides emergency guidance to both the cabin crew and passengers, and initiates emergency landing procedures when necessary.
   
3.	EmergencyManagementSystem Class: Constructs the emergency management system for in-flight emergencies. It defines the roles of cabin crew members and the pilot within the system. This class provides a function to initiate emergency procedures.
   
4.	initiateEmergencyProcedures() Function: Simulates the initiation of emergency procedures. During execution, cabin crew members and the pilot provide instructions to passengers and initiate the evacuation process.








Contribution:
Contributions to the project are welcome! If you have any ideas for improvements or new features, feel free to fork the repository, make your changes, and submit a pull request!

License:
This project is licensed under the MIT License.






