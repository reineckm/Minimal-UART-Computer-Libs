# Minimal-UART-Computer-Libs
Libaries for development on the Minimal-UART-Computer by slu4code

Some Ideas for keeping it nice:
# Code can assume that a to z are adresses of 8 bit Registers
# Because RTS trashes Accumulator it will never be preserved
# x and y will always be preserved, ie pushed to stack and pulled before rts or never be changed
# z will carry the result
# Labes have to be prefixed with name of the routine so routines can be copied together
