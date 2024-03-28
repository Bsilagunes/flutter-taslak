pilot

#include <iostream>
#include <vector>
#include <string>

using namespace std;

// FlightRoute class for representing flight routes
class FlightRoute {
private:
    string departureAirport;
    string arrivalAirport;

public:
    // Constructor to initialize flight route with departure and arrival airports
    FlightRoute(string departure, string arrival) : departureAirport(departure), arrivalAirport(arrival) {}

    // Getter method to retrieve departure airport
    string getDepartureAirport() const {
        return departureAirport;
    }

    // Getter method to retrieve arrival airport
    string getArrivalAirport() const {
        return arrivalAirport;
    }
};

// Pilot class for representing pilots
class Pilot {
private:
    string name;
    vector<FlightRoute> assignedRoutes;

public:
    // Constructor to initialize pilot with name
    Pilot(string name) : name(name) {}

    // Method to add assigned route to pilot
    void addAssignedRoute(const FlightRoute& route) {
        assignedRoutes.push_back(route);
    }

    // Getter method to retrieve pilot's name
    string getName() const {
        return name;
    }

    // Getter method to retrieve assigned routes of pilot
    vector<FlightRoute> getAssignedRoutes() const {
        return assignedRoutes;
    }
};

int main() {
    // Create a pilot and assign routes
    Pilot pilot("Captain John");
    FlightRoute route1("JFK", "LAX");
    FlightRoute route2("LAX", "ORD");
    pilot.addAssignedRoute(route1);
    pilot.addAssignedRoute(route2);

    // Display pilot information and assigned routes
    cout << "Pilot Name: " << pilot.getName() << endl;
    cout << "Assigned Routes: " << endl;
    for (const FlightRoute& route : pilot.getAssignedRoutes()) {
        cout << "Departure: " << route.getDepartureAirport() << " - Arrival: " << route.getArrivalAirport() << endl;
    }

    return 0;
}
