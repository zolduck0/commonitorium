#include <iostream>
#include <cstdlib>
#include <unistd.h>
#include <signal.h>
#include <atomic>

std::atomic<bool> keepRunning(true);

void signalHandler(int signum)
{
    std::cout << "Interrupt signal (" << signum << ") received.\n";
    keepRunning = false;
}

int main()
{
    signal(SIGTERM, signalHandler);

    while(keepRunning)
    {
        system("gnome-terminal -- bash -c './terminal.sh'");
        sleep(3600);
    }

    std::cout << "Exiting...\n";

    return 0;
}