
// C++ Backend (Flight Management System)

#include <iostream>
#include <vector>
#include <map>
#include <string>

using namespace std;

// Flight information structure
struct FlightInfo {
    string flightNumber;
    string departureAirport;
    string arrivalAirport;
    string departureTime;
    string arrivalTime;
    vector<string> passengerList;
    // Add more fields as needed
};

// Passenger structure
struct Passenger {
    string name;
    string seatNumber;
    string specialService;
    // Add more fields as needed
};

// Inventory item structure
struct InventoryItem {
    string itemName;
    int quantity;
    // Add more fields as needed
};

class FlightManagementSystem {
private:
    vector<FlightInfo> flights;
    map<string, vector<Passenger>> passengerLists;
    map<string, vector<InventoryItem>> inventoryLists;

public:
    void addFlight(const FlightInfo& flight) {
        flights.push_back(flight);
    }

    void addPassenger(const string& flightNumber, const Passenger& passenger) {
        if (passengerLists.find(flightNumber) == passengerLists.end()) {
            passengerLists[flightNumber] = vector<Passenger>();
        }
        passengerLists[flightNumber].push_back(passenger);
    }

    void addInventoryItem(const string& flightNumber, const InventoryItem& item) {
        if (inventoryLists.find(flightNumber) == inventoryLists.end()) {
            inventoryLists[flightNumber] = vector<InventoryItem>();
        }
        inventoryLists[flightNumber].push_back(item);
    }

    // Methods for accessing flight information, passenger lists, and inventory
    vector<FlightInfo> getFlights() const {
        return flights;
    }

    vector<Passenger> getPassengerList(const string& flightNumber) const {
        if (passengerLists.find(flightNumber) != passengerLists.end()) {
            return passengerLists.at(flightNumber);
        }
        return {};
    }

    vector<InventoryItem> getInventoryList(const string& flightNumber) const {
        if (inventoryLists.find(flightNumber) != inventoryLists.end()) {
            return inventoryLists.at(flightNumber);
        }
        return {};
    }
};
