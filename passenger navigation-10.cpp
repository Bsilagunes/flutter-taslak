
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
    };

    // Define map to store airport layout information based on destination and gate
    map<string, map<string, AirportLayout>> airportMap;

public:
    // Constructor to initialize airport layout
    Airport() {
        // Populate airportMap with sample data
        // For simplicity, using hardcoded sample data
        // In real application, data would be retrieved from a database or external source
        airportMap["New York"]["Gate A"] = {"A1", "Security Checkpoint 1", true, "Tax-Free Shopping Available. Enjoy your shopping experience!"};
        airportMap["New York"]["Gate B"] = {"B2", "Security Checkpoint 2", false, ""};
        airportMap["London"]["Gate C"] = {"C3", "Security Checkpoint 3", false, ""};
        airportMap["London"]["Gate D"] = {"D4", "Security Checkpoint 4", true, "Tax-Free Shopping Available. Take advantage of duty-free prices!"};
        // Add more airport layout data as needed
    }

    // Method to navigate passengers to their destination gate
    void navigatePassenger(const string& destination, const string& gate) {
        if (airportMap.find(destination) != airportMap.end()) {
            if (airportMap[destination].find(gate) != airportMap[destination].end()) {
                AirportLayout layout = airportMap[destination][gate];
                cout << "Navigating passenger to Gate " << layout.gate << " via " << layout.checkpoint << endl;
                if (layout.isTaxFree) {
                    cout << "You have reached Tax-Free Shopping Area." << endl;
                    cout << "Tax-Free Information: " << layout.taxFreeInfo << endl;
                }
            } else {
                cout << "Invalid gate for destination: " << destination << endl;
            }
        } else {
            cout << "Destination not found: " << destination << endl;
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

    return 0;
}
