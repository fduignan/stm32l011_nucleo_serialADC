
/* 
 * Serial: serial i/o routines for the STM32L011
 */


#include "stm32l011.h"
#include "serial.h"
void delay(int);

void delay(int dly)
{
    while( dly--);
}

void initClockHSI16()
{
    // Use the HSI16 clock as the system clock - allows operation down to 1.5V
    RCC_CR &= ~BIT24;
    RCC_CR |= BIT0; // turn on HSI16 (16MHz clock)
    while ((RCC_CR & BIT2)==0); // wait for HSI to be ready
    // set HSI16 as system clock source 
    RCC_CFGR |= BIT0;
}
void configPins()
{
    // Enable PORTB where LED is connected
    RCC_IOPENR |= BIT1;
    GPIOB_MODER |= BIT6; // make bit3  an output
    GPIOB_MODER &= ~BIT7; // make bit3  an output
}	

void initADC()
{

	// Turn on GPIOB
	RCC_IOPENR |= BIT1;
	// Turn on ADC 
	RCC_APB2ENR |= BIT9;	
	// Select analog mode for PA0
	GPIOA_MODER |= (BIT1+BIT0);  
	// Begin ADCCalibration	
	ADC_CR = BIT31;
	// Wait for calibration complete:  
	while ((ADC_CR & BIT31));
	// Select Channel 0
	ADC_CHSELR |= BIT0;
	// Enable the reference voltage
	ADC_CCR |= BIT22;	
	// Enable the ADC
	ADC_CR |= BIT0;  
}

int readADC()
{
	// Trigger a conversion
	ADC_CR |=  BIT2;
	// Wait for End of Conversion
	while ( (ADC_CR & BIT2) );
	// return result
	return ADC_DR;
}
void testADC()
{
	eputs("ADC: ");
	printHex(readADC());
	eputs("\r\n");
}

int main()
{
    uint32_t Counter=0;
    initClockHSI16();
    configPins(); 
    initUART(9600);
    initADC();
    // enable interrupts 
    enable_interrupts();
    while(1)
    {
        
        GPIOB_ODR |= BIT3;
        testADC();
        delay(100000);
        GPIOB_ODR &= ~BIT3;
        delay(100000);
    } 
    return 0;
}








