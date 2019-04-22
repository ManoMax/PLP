#include <iostream>
#include "Literal.cpp"
#include "Literal.h"
//#include "receive_input.cpp"
using namespace std;

int main()
{
   Literal* p;
    p = new Literal;
    receive_input(p);

    cout << literal_to_string(p);
    return 0;
}
