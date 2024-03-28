pilot
#include <iostream>
#include <string>
#include <vector>
#include <map>

using namespace std;

// FlightRoute class for representing flight routes
class FlightRoute {
private:
    string departureAirport;
    string arrivalAirport;

public:
    FlightRoute(string departure, string arrival) : departureAirport(departure), arrivalAirport(arrival) {}

    // Getters
    string getDepartureAirport() const {
        return departureAirport;
    }

    string getArrivalAirport() const {
        return arrivalAirport;
    }
};

// Pilot class for representing pilots
class Pilot {
private:
    string name;
    string fingerprint; // Fingerprint for fingerprint authentication
    vector<FlightRoute> assignedRoutes;

public:
    Pilot(string name, string fingerprint) : name(name), fingerprint(fingerprint) {}

    void addAssignedRoute(const FlightRoute& route) {
        assignedRoutes.push_back(route);
    }

    // Getters
    string getName() const {
        return name;
    }

    string getFingerprint() const {
        return fingerprint;
    }

    vector<FlightRoute> getAssignedRoutes() const {
        return assignedRoutes;
    }
};

// EmergencyAlertSystem class for sending emergency alerts
class EmergencyAlertSystem {
private:
    map<string, string> pilotEmergencyContacts; // Pilot name to emergency contact mapping

public:
    void addEmergencyContact(const string& pilotName, const string& contact) {
        pilotEmergencyContacts[pilotName] = contact;
    }

    void sendEmergencyAlert(const string& pilotName, const string& message) {
        if (pilotEmergencyContacts.find(pilotName) != pilotEmergencyContacts.end()) {
            cout << "Emergency Alert: " << message << " - Contact: " << pilotEmergencyContacts[pilotName] << endl;
        } else {
            cout << "Emergency Alert: " << message << " - No emergency contact available for pilot " << pilotName << endl;
        }
    }
};

int main() {
    // Create pilots
    Pilot pilot1("Captain John", "fingerprint123");
    Pilot pilot2("Captain Emily", "fingerprint456");

    // Assign routes to pilots
    FlightRoute route1("JFK", "LAX");
    FlightRoute route2("LAX", "ORD");
    pilot1.addAssignedRoute(route1);
    pilot2.addAssignedRoute(route2);

    // Create emergency alert system
    EmergencyAlertSystem alertSystem;
    alertSystem.addEmergencyContact(pilot1.getName(), "Emergency Contact: 123-456-7890");
    alertSystem.addEmergencyContact(pilot2.getName(), "Emergency Contact: 987-654-3210");

    // Send emergency alert in case of pilot replacement
    string replacedPilotName = "Captain John";
    string newPilotName = "Captain Michael";
    alertSystem.sendEmergencyAlert(replacedPilotName, "Pilot replacement - New pilot: " + newPilotName);

    return 0;
}


