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
#include "adxl345_i2c_lib.h"
#include "interrupts.h"
// #include "adxl345_i2c_lib.h"

#define INACTIVE_SECONDS 5

void setup_activity_interrupt()
{
    //pin1 inactivity
    //pin2 activity 
  
	i2c_init();

	//set up interrupts 
    i2c_write(ADXL345_ADDRESS,ADXL345_REG_INT_MAP,ADXL345_INT_ACTIVITY);

    i2c_write(ADXL345_ADDRESS,ADXL345_REG_THRESH_ACT,32);

    i2c_write(ADXL345_ADDRESS,ADXL345_REG_THRESH_INACT,20);

    i2c_write(ADXL345_ADDRESS,ADXL345_REG_TIME_INACT,INACTIVE_SECONDS);

    i2c_write(ADXL345_ADDRESS,ADXL345_REG_ACT_INACT_CTL,0x11);

    i2c_write(ADXL345_ADDRESS,ADXL345_REG_INT_ENABLE,ADXL345_INT_ACTIVITY | ADXL345_INT_INACTIVITY);

    //prepare for sampling 
	i2c_write(ADXL_345 , ADXL_CONF_REG , 0x00);
  	
  	i2c_write(ADXL_345, ADXL_CONF_REG, 0x10);
 	
 	i2c_write(ADXL_345, ADXL_CONF_REG, 0x08);


}

void __user_mcu_init()
{
	setup_activity_interrupt();
}

void clear_interrupts()
{   
    i2c_write(ADXL345_ADDRESS,ADXL345_REG_INT_ENABLE,0x00);
    i2c_read(ADXL_345,ADXL345_REG_INT_SOURCE);
}


void enable_acc_interrupts()
{
    i2c_write(ADXL345_ADDRESS,ADXL345_REG_INT_ENABLE,ADXL345_INT_ACTIVITY | ADXL345_INT_INACTIVITY);
}
