.include "/home/chirag/assembly/defs/m328Pdef.inc"

  
;Configuring pins 2-7 (PD2-PD7) of Arduino as output
  ldi r16,0b11111100  ;load the b value to r16 //
  out DDRD,r16
;Configuring pin 8 (PB0) of Arduino
;as output 
  ldi r16,0b00000001
  out DDRB,r16
;Writing the number 2 on the seven segment display
  ldi r17,0b10010000
  out PortD,r17      ;Output from port D
  
  ldi r17,0b00000000
  out PortB,r17
Start:
  rjmp Start
