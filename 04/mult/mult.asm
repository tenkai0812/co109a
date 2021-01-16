// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//#include<stdio.h>

//int main()
//{
    //int R0=5;

     //@5
     //D=A
     //@0
     //M=D

    //int R1=5;
     //@3
     //D=A
     //@1
     //M=D

    //int R2=0;

     @2
     M=0

    //LOOP:
        (loop)
        //if(R1==0) goto EXIT;

         @1
         D=M
         @exit
         D;JEQ 

        //R2+=R0;

         @0
         D=M
         @2
         M=M+D
         //R1--;
         @1
         M=M-1
        

        //goto LOOP;
        @loop
        0;JMP
    //EXIT:
    (exit)
    @exit
    0;JMP
    //return 0;
//}