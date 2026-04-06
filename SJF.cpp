
#include <iostream>
#include <vector>
#include <iomanip>
using namespace std;

struct Process {
    int pid, at, bt, ct, tat, wt;
    bool done = false;  // Track if process is completed
};

// Function to find the index of process with minimum burst time among arrived processes
int findMinBurst(vector<Process> &p, int n, int currentTime) {
    int idx = -1;
    int minBT = 1e9;

    for (int i = 0; i < n; i++) {
        if (!p[i].done && p[i].at <= currentTime && p[i].bt < minBT) {
            minBT = p[i].bt;
            idx = i;
        }
    }

    return idx; // Returns -1 if no process has arrived yet
}

int main() {
    int n;
    cout << "===== Non-Preemptive SJF Scheduling =====\nProcesses: ";
    cin >> n;

    vector<Process> p(n);

    // Input
    for (int i = 0; i < n; i++) {
        p[i].pid = i + 1;

        cout << "P" << p[i].pid << " Arrival: ";
        cin >> p[i].at;

        cout << "P" << p[i].pid << " Burst  : ";
        cin >> p[i].bt;
    }

    int completed = 0, time = 0;

    cout << "\nGantt Chart:\n| ";

    while (completed < n) {
        int idx = findMinBurst(p, n, time);

        if (idx == -1) {
            // No process has arrived, CPU idle
            time++;
            continue;
        }

        // Execute the selected process
        cout << "P" << p[idx].pid << " (" << time << "-" << time + p[idx].bt << ") | ";

        time += p[idx].bt;
        p[idx].ct = time;
        p[idx].tat = p[idx].ct - p[idx].at;
        p[idx].wt  = p[idx].tat - p[idx].bt;
        p[idx].done = true;
        completed++;
    }

    // Table Header
    cout << "\n\n"
         << left << setw(5) << "PID"
         << setw(5) << "AT"
         << setw(5) << "BT"
         << setw(5) << "CT"
         << setw(6) << "TAT"
         << setw(5) << "WT"
         << "\n" << string(31,'-') << "\n";

    double totalTAT = 0, totalWT = 0;

    for (int i = 0; i < n; i++) {
        cout << left << setw(5) << ("P" + to_string(p[i].pid))
             << setw(5) << p[i].at
             << setw(5) << p[i].bt
             << setw(5) << p[i].ct
             << setw(6) << p[i].tat
             << setw(5) << p[i].wt << endl;

        totalTAT += p[i].tat;
        totalWT  += p[i].wt;
    }

    cout << fixed << setprecision(2);
    cout << "\nAverage TAT: " << totalTAT / n;
    cout << "\nAverage WT : " << totalWT / n;

    return 0;
}

