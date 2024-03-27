
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

// Food and beverage item structure
struct FoodBeverageItem {
    string itemName;
    double price;
    // Add more fields as needed
};

class FlightManagementSystem {
private:
    vector<FlightInfo> flights;
    map<string, vector<Passenger>> passengerLists;
    map<string, vector<InventoryItem>> inventoryLists;
    map<string, vector<FoodBeverageItem>> menuItems;

public:
    void addFlight(const FlightInfo& flight) {
        flights.push_back(flight);
    }

    void addPassenger(const string& flightNumber, const Passenger& passenger) {
        passengerLists[flightNumber].push_back(passenger);
    }

    void addInventoryItem(const string& flightNumber, const InventoryItem& item) {
        inventoryLists[flightNumber].push_back(item);
    }

    void addMenuItem(const string& category, const FoodBeverageItem& item) {
        menuItems[category].push_back(item);
    }

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

    vector<FoodBeverageItem> getMenuItems(const string& category) const {
        if (menuItems.find(category) != menuItems.end()) {
            return menuItems.at(category);
        }
        return {};
    }
};

int main() {
    // Test the FlightManagementSystem class
    FlightManagementSystem flightSystem;

    // Add flight information
    FlightInfo flight1 = {"F1234", "JFK", "LAX", "2024-04-01 08:00", "2024-04-01 11:00", {"John Doe", "Jane Smith"}};
    flightSystem.addFlight(flight1);

    // Add passenger information
    Passenger passenger1 = {"John Doe", "A1", "Vegetarian"};
    flightSystem.addPassenger("F1234", passenger1);

    // Add inventory items
    InventoryItem item1 = {"Water Bottle", 100};
    flightSystem.addInventoryItem("F1234", item1);

    // Add menu items
    FoodBeverageItem menuItem1 = {"Sandwich", 8.99};
    flightSystem.addMenuItem("Food", menuItem1);

    return 0;
}
