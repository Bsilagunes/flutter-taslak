


In-Flight App
Overview:
The In-Flight Entertainment App is a mobile application developed using the Flutter framework. It provides passengers with a selection of movies to watch during their flight, along with features such as searching, favoriting movies, and watching trailers.

Features:
Movie Selection: Displays a list of available movies for passengers to choose from.
Search Functionality: Allows users to search for movies by title.
Favorite Movies: Users can mark movies as favorites for easy access later.
Watch Trailers: Users can watch trailers of selected movies.
Technologies Used:
Flutter: A cross-platform framework developed by Google for building natively compiled applications for mobile, web, and desktop from a single codebase. Flutter uses the Dart programming language.
Dart: A programming language optimized for building user interfaces with Flutter.
Material Design: The app follows Google's Material Design guidelines for a modern and intuitive user interface.
url_launcher Package: Used to launch URLs for watching movie trailers in a web browser.
Development Environment:
Flutter SDK: The Flutter software development kit is required for developing Flutter applications. It includes the Flutter framework, Dart SDK, and other development tools.
Integrated Development Environment (IDE): Developers can use IDEs such as Visual Studio Code or Android Studio with the Flutter and Dart plugins installed for coding and debugging.
Usage:
Clone the repository to your local machine.
Open the project in your preferred IDE.
Make sure you have Flutter installed and set up properly.
Run the app on an emulator or physical device using the flutter run command.
Explore the app's features such as movie selection, searching, and watching trailers.

seat Number Warning System: When the user approaches their assigned seat, the app will provide a vibration alert to notify them. We'll create a new screen where users can enter their seat number, and when they approach their seat, the phone will vibrate.
•	I've improved the title of the SeatNumberScreen to make it clearer what the screen is for.
•	I've added an OutlineInputBorder to the TextField for better visual clarity.
•	I've modified the alert dialog message to provide more descriptive guidance to the user.
•	I've updated the button text to "Start Seat Alert" for clarity.
These improvements enhance the user experience and make the seat number warning system feature more intuitive to use.

1.	Baggage Notification Feature:
•	When passengers disembark from the plane, they often need to wait for their baggage to arrive at the baggage waiting area. Our system includes a baggage notification feature that allows passengers to receive real-time alerts when their baggage arrives.
•	Passengers can input their baggage tag or receipt number into the mobile app to subscribe to notifications for their specific baggage. Once their baggage arrives at the waiting area, they'll receive an instant notification on their mobile device, enabling them to retrieve their baggage promptly.
2.	Damage Reporting and Detection:
•	In the unfortunate event that a passenger's baggage is damaged during transit, our system provides a convenient way for passengers to report the damage.
•	Passengers can use the mobile app to upload photos of their damaged baggage. The system includes an image processing component built in C++ that analyzes the uploaded photos to detect damages.
•	Upon detection of damages, passengers are promptly notified through the app, allowing them to take appropriate action, such as filing a complaint or seeking assistance from airport staff.
3.	Photo Upload and Processing:
•	The system includes a dedicated screen within the mobile app for passengers to upload photos of their damaged baggage.
•	Passengers can either select existing photos from their device's gallery or capture new photos using the device's camera. Once uploaded, the photos are sent to the backend system for processing.
•	The C++ backend system utilizes image processing algorithms to analyze the uploaded photos and identify any signs of damage, such as tears, dents, or scratches.
4.	Notification Management:
•	The system's backend component manages the process of sending notifications to passengers regarding their baggage status.
•	Notifications are triggered based on events such as baggage arrival at the waiting area or detection of damages in uploaded photos.
•	Passengers receive notifications directly on their mobile devices, providing them with timely updates and alerts throughout their journey.
5.	User-Friendly Interface:
•	The mobile app features an intuitive user interface that is easy to navigate and interact with.
•	Passengers can quickly access the various features of the app, including baggage notification, damage reporting, and photo upload, with minimal effort.
•	Clear instructions and prompts guide passengers through each step of the process, ensuring a seamless and hassle-free experience.
Overall, the suitcase system combines cutting-edge technology with user-centric design to streamline the baggage management process and enhance the overall travel experience for passengers. By providing real-time notifications, damage detection capabilities, and user-friendly interfaces, the system aims to empower passengers with greater control and peace of mind when it comes to managing their baggage.




Contribution:
Contributions to the project are welcome! If you have any ideas for improvements or new features, feel free to fork the repository, make your changes, and submit a pull request.

License:
This project is licensed under the MIT License.






