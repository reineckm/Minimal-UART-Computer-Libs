# Minimal-UART-Computer-Libs
Libaries for development on the Minimal-UART-Computer by slu4code

Some Ideas for keeping it nice:
1. Code can assume that a to z are adresses of 8 bit Registers
2. Because RTS trashes Accumulator it will never be preserved
3. x and y will always be preserved, ie pushed to stack and pulled before rts or never be changed
4. z will carry the result
5. Labes have to be prefixed with name of the routine so routines can be copied together
