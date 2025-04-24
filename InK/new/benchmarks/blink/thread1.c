// This file is part of InK.
// 
// author = "dpatoukas " 
// maintainer = "dpatoukas "
// email = "dpatoukas@gmail.com" 
//  
// copyright = "Copyright 2018 Delft University of Technology" 
// license = "LGPL" 
// version = "3.0" 
// status = "Production"
//
// 
// InK is free software: you ca	n redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

#include "ink.h"

// define task-shared persistent variables.
__shared(
    uint16_t blink_counter;
)

TASK(t_init);
TASK(t_blink_on);
TASK(t_blink_off);
TASK(t_end);

// called at the very first boot
void thread1_init(){
    // create a thread with priority 15 and entry task t_init
    __CREATE(15,t_init);
    __SIGNAL(15);
}

void __app_reboot(){
    __no_operation();
}

TASK(t_init){
    P1OUT &= ~0x01;
    P1DIR |= 0x01;

    __SET(blink_counter, 0);

    return t_blink_on;
}

TASK(t_blink_on){
    __port_on(1, 0);
    __delay_cycles(400000);
    __SET(blink_counter, __GET(blink_counter) + 1);

    return t_blink_off;
}

TASK(t_blink_off){
    __port_off(1, 0);
    __delay_cycles(100000);


    // if (__GET(blink_counter) == 10)
    // {
    //     return t_end;
    // }

    return t_blink_on;
}

TASK(t_end){
    return NULL;
}
