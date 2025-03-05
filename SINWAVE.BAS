Name    : SINWAVE
Length  : $00C5 (197)
Load at : $0801 (2,049)

    5  REM  SIN WAVE GENERATOR
   10  TEXT : REM  TEXT MODE
   20  HOME 
   30  S = 1
   40  GOTO 70
   50  GR : REM  GFX MODE
   60  S = 0
   70  FOR X = 0 TO 39 STEP .45
   80    Y = SIN (X / 1.57) * 6 + 19.5
   90    COLOR= INT (( RND (1) * 14) + 1)
  100    PLOT X,Y
  110  NEXT X
  115  PRINT CHR$ (7)
  120  IF S = 1 THEN 
         50
  130  GOTO 10