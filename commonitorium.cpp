#include <iostream>
#include <cstdlib>
#include <unistd.h>

int main()
{
    while (true)
    {
        system("gnome-terminal -- bash -c './terminal.sh'");
        sleep(3600);
    }

    return 0;
}