

#include <iostream>
#include <vector>
#include <string>
#include <map>

using namespace std;

// Define Airport class to represent airport layout and features
class Airport {
private:
    // Define AirportLayout structure to store layout information
    struct AirportLayout {
        string gate;
        string checkpoint;
        bool isTaxFree;
        string taxFreeInfo;
        string flightType;
        bool isEasyPassportControl;
    };

    // Define map to store airport layout information based on destination and gate
    map<string, map<string, AirportLayout>> airportMap;

    // Variable to track emergency assistance status
    bool emergencyAssistanceRequested;

public:
    // Constructor to initialize airport layout
    Airport() : emergencyAssistanceRequested(false) {
        // Populate airportMap with sample data
        // For simplicity, using hardcoded sample data
        // In real application, data would be retrieved from a database or external source
        // For demonstration, added sample data for both domestic and international flights
        airportMap["New York"]["Gate A"] = {"A1", "Security Checkpoint 1", true, "Tax-Free Shopping Available. Enjoy your shopping experience!", "Domestic", true};
        airportMap["New York"]["Gate B"] = {"B2", "Security Checkpoint 2", false, "", "International", false};
        airportMap["London"]["Gate C"] = {"C3", "Security Checkpoint 3", false, "", "Domestic", true};
        airportMap["London"]["Gate D"] = {"D4", "Security Checkpoint 4", true, "Tax-Free Shopping Available. Take advantage of duty-free prices!", "International", false};
        // Add more airport layout data as needed
    }

    // Method to navigate passengers to their destination gate
    void navigatePassenger(const string& destination, const string& gate) {
        auto destinationIter = airportMap.find(destination);
        if (destinationIter != airportMap.end()) {
            auto gateIter = destinationIter->second.find(gate);
            if (gateIter != destinationIter->second.end()) {
                AirportLayout layout = gateIter->second;
                cout << "Navigating passenger to Gate " << layout.gate << " via " << layout.checkpoint << endl;
                if (layout.isTaxFree) {
                    cout << "You have reached Tax-Free Shopping Area." << endl;
                    cout << "Tax-Free Information: " << layout.taxFreeInfo << endl;
                }
                cout << "Flight Type: " << layout.flightType << endl;
                if (layout.isEasyPassportControl) {
                    cout << "You have reached Easy Passport Control Point. Enjoy the quick process!" << endl;
                }
            } else {
                cout << "Invalid gate for destination: " << destination << endl;
            }
        } else {
            cout << "Destination not found: " << destination << endl;
        }
    }

    // Method to handle emergency assistance calls
    void handleEmergencyCall() {
        // Check if emergency assistance is already requested
        if (!emergencyAssistanceRequested) {
            // Set emergency assistance status to true
            emergencyAssistanceRequested = true;
            cout << "Emergency assistance has been requested. Help will arrive shortly." << endl;
        } else {
            cout << "Emergency assistance has already been requested. Please wait for assistance." << endl;
        }
    }
};

int main() {
    // Create Airport object
    Airport airport;

    // Example usage: Passenger inputs destination and gate information
    string destination, gate;
    cout << "Enter destination: ";
    cin >> destination;
    cout << "Enter gate: ";
    cin >> gate;

    // Navigate passenger to destination gate
    airport.navigatePassenger(destination, gate);

    // Example usage: Passenger triggers emergency assistance call
    string emergencyCall;
    cout << "Do you want to trigger emergency assistance call? (yes/no): ";
    cin >> emergencyCall;
    if (emergencyCall == "yes") {
        airport.handleEmergencyCall();
    }

    return 0;
}
