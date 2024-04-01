#include <iostream>
#include <string>
#include <vector>
#include <chrono>
#include <thread>

using namespace std;

// Cabin Crew Member Class
class CabinCrew {
private:
    string name;
public:
    CabinCrew(string name) : name(name) {}

    void provideInstructions() {
        cout << "Cabin Crew " << name << " provides emergency instructions to passengers.\n";
    }

    void assistPassengers() {
        cout << "Cabin Crew " << name << " assists passengers in evacuating the aircraft.\n";
    }

    void handleMedicalEmergency() {
        cout << "Cabin Crew " << name << " provides first aid to passengers.\n";
    }
};

// Pilot Class
class Pilot {
private:
    string name;
public:
    Pilot(string name) : name(name) {}

    void provideGuidance() {
        cout << "Pilot " << name << " provides emergency guidance to cabin crew and passengers.\n";
    }

    void initiateEmergencyLanding() {
        cout << "Pilot " << name << " initiates emergency landing procedures.\n";
    }
};

// Aircraft Emergency Management System Class
class EmergencyManagementSystem {
private:
    vector<CabinCrew> crew;
    Pilot pilot;
public:
    EmergencyManagementSystem(const vector<string>& crewNames, const string& pilotName) : pilot(pilotName) {
        for (const string& name : crewNames) {
            crew.push_back(CabinCrew(name));
        }
    }

    void provideEmergencyInfo() {
        cout << "Emergency Information: In case of an emergency, remain calm and follow crew instructions.\n";
        // Code for playing videos could be added here
    }

    void showSeatMap() {
        cout << "Seat Map: The seat map indicates emergency exits. Please locate the nearest exit to your seat.\n";
    }

    void assignCrewResponsibility() {
        for (CabinCrew& member : crew) {
            member.provideInstructions();
        }
        pilot.provideGuidance();
    }

    void initiateEmergencyProcedures() {
        cout << "Initiating emergency procedures...\n";
        this_thread::sleep_for(chrono::seconds(1));
        cout << "Passengers are being informed...\n";
        provideEmergencyInfo();
        cout << "Seat map is displayed...\n";
        showSeatMap();
        cout << "Cabin crew is assigned responsibilities...\n";
        assignCrewResponsibility();
        cout << "Passengers are being evacuated...\n";
        for (CabinCrew& member : crew) {
            member.assistPassengers();
        }
        cout << "Emergency procedures completed.\n";
    }

    void handleMedicalEmergency() {
        cout << "Medical emergency reported. Providing medical assistance...\n";
        for (CabinCrew& member : crew) {
            member.handleMedicalEmergency();
        }
    }

    void initiateEmergencyLanding() {
        cout << "Initiating emergency landing...\n";
        pilot.initiateEmergencyLanding();
    }
};

int main() {
    vector<string> crewNames = {"Alice", "Bob", "Charlie"};
    string pilotName = "Captain John";

    EmergencyManagementSystem ems(crewNames, pilotName);

    // Scenario: Medical Emergency
    ems.handleMedicalEmergency();

    // Scenario: Emergency Landing
    ems.initiateEmergencyLanding();

    return 0;
}


