 
 #include <iostream>
#include <string>
#include <vector>

using namespace std;

// Hava Trafik Kontrol Kulesi Sınıfı
class AirTrafficControlTower {
public:
    void communicateWithTower(const string& message) {
        cout << "Communicating with air traffic control tower: " << message << endl;
    }
};

// Pilot Sınıfı
class Pilot {
private:
    string name;
    bool radarSystemEnabled;
public:
    Pilot(string name) : name(name), radarSystemEnabled(false) {}

    void enableRadarSystem() {
        radarSystemEnabled = true;
        cout << "Radar system enabled.\n";
    }

    void disableRadarSystem() {
        radarSystemEnabled = false;
        cout << "Radar system disabled.\n";
    }

    void manualRadarScan() {
        if (radarSystemEnabled) {
            cout << "Performing manual radar scan.\n";
            // Manual radar scanning logic goes here
        }
        else {
            cout << "Radar system is not enabled. Please enable it first.\n";
        }
    }

    void communicateWithTower(const string& message, AirTrafficControlTower& tower) {
        tower.communicateWithTower(message);
    }
};

// Aircraft Sınıfı
class Aircraft {
private:
    vector<Pilot> pilots;
    AirTrafficControlTower tower;
public:
    Aircraft(const vector<string>& pilotNames) {
        for (const string& name : pilotNames) {
            pilots.push_back(Pilot(name));
        }
    }

    void enableRadarSystemForPilot(int index) {
        pilots[index].enableRadarSystem();
    }

    void disableRadarSystemForPilot(int index) {
        pilots[index].disableRadarSystem();
    }

    void manualRadarScanForPilot(int index) {
        pilots[index].manualRadarScan();
    }

    void communicateWithTowerForPilot(int index, const string& message) {
        pilots[index].communicateWithTower(message, tower);
    }
};

int main() {
    vector<string> pilotNames = {"Captain John", "First Officer Alice"};
    Aircraft aircraft(pilotNames);

    // Enable radar system for Captain John (index 0)
    aircraft.enableRadarSystemForPilot(0);

    // Perform manual radar scan for Captain John (index 0)
    aircraft.manualRadarScanForPilot(0);

    // Disable radar system for Captain John (index 0)
    aircraft.disableRadarSystemForPilot(0);

    // Attempt manual radar scan for Captain John (index 0) after disabling radar system
    aircraft.manualRadarScanForPilot(0);

    // Communicate with air traffic control tower for Captain John (index 0)
    aircraft.communicateWithTowerForPilot(0, "Requesting landing clearance");

    return 0;
}
