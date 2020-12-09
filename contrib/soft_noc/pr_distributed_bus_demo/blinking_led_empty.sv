// Copyright (c) 2001-2018 Intel Corporation
//  
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to
// permit persons to whom the Software is furnished to do so, subject to
// the following conditions:
//  
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//  
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
// CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
// SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

///////////////////////////////////////////////////////////
// blinking_led.v
// a persona to drive LEDs ON
///////////////////////////////////////////////////////////
`timescale 1 ps / 1 ps
`default_nettype none

module blinking_led_empty (

   // clock
   input wire clock,
   input wire fast_clock,
   input wire [31:0] counter,

   input wire dummy_in,
   output reg dummy_out,

   // Control signals for the LEDs
   output wire led_two_on,
   output wire led_three_on

);

   assign led_two_on   = 1'b0;
   assign led_three_on = 1'b0;

   reg dummy_intermediate;
   always_ff @(posedge fast_clock)
     begin
	dummy_intermediate <= dummy_in;	
	dummy_out <= dummy_intermediate;
     end

endmodule
