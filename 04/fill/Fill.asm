// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

//WHILE1:                 //(WHILE1)
  //  int i=16384:        //@16384,D=A,@i,M=D  

    //WHILE2:             //(WHILE2)
      //  if(i>=24576)    //@24576,D=A,@i,D=M-D
        //    goto WEND2; //@WEND2,D;JGE
       // int color=0;    //@color,M=0
       // if(M[24576]==0) //@24576,D=M
         //   goto NEXT;  //@NEXT,D;JEQ
       // color=-1;       //@color,M=-1
 //   NEXT:               //(NEXT)
     //   M[i]=color;     //@color,D=M,@i,A=M,M=D
       // i++;            //@i,D=M,D=D+1,M=D
       // goto WHILE2;    //@WHILE2,0;JMP
   // WEND2:              //(WEND2)

    //goto WHILE1;        //@WHILE1,0;JMP

    (WHILE1)
    @16384
    D=A
    @i
    M=D 
    (WHILE2)

    @24576
    D=A
    @i
    D=M-D
    @WEND2
    D;JGE
    @color
    M=0

    // if(M[24576]==0) 
    //   goto NEXT; 
    @24576
    D=M
    @NEXT
    D;JEQ
    @color
    M=-1
    (NEXT)
    @color
    D=M
    @i
    A=M
    M=D
    @i
    D=M
    D=D+1
    M=D
    @WHILE2
    0;JMP
    (WEND2)
    @WHILE1
    0;JMP
© 2021 GitHub, Inc.