with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

procedure quick_check02 is

--  Quick check pg 103-104

   --  1 Last name in EBN.
   Last_Name : constant String := "Maphis3";

   --  2 Define Pi.
   Pi : constant Float := 3.14159;

   --  3 Which are reserved words
   --  begin : constant String := "begin";
   --  procedure
   --  integer : constant String := "integer";
   --  Max_int : constant Integer := 3;

   --  4 Declare Count
   Count : Integer;
   Sum   : Float;
   Description : String (1 .. 10);

   Toes : Integer;
   C    : Float;  --  QC 13.
   Pay  : Float;  --  QC 15.

begin
   --  1. LastName
   Put ("1. Last Name: ");
   Put (Last_Name);
   New_Line;

   --  2. Pi
   Put ("2. Pi: ");
   Put (Pi);
   New_Line;

   --  4. Declarations
   Count := 12;
   Put ("4. Count: ");
   Put (Count);
   New_Line;
   Sum := 12.0 + 1.0;
   Put ("4. Sum: ");
   Put (Sum);
   New_Line;
   Description := "A Dogs Day";
   Put ("4. Discription: ");
   Put (Description);
   New_Line (2);

   --  5. Assing 10 to varialbe Toes
   Toes := 10;
   Put ("5. Toe: ");
   Put (Item => Toes'Image);
   New_Line (2);

   --  6. Divide 9/5
   Put ("6. 9 div 5 : ");
   Put (9.0 / 5.0);
   Put ("  ... ");
   Put (9 / 5);
   New_Line (2);

   --  7. Find result
   Put ("7. The value of 5 / 2: ");
   Put (5 / 2);  --  2
   New_Line (2);

   --  8. Use a 'Put' statement
   Put ("8.:");
   Put ("Problem Solving with Ada 95");
   New_Line (2);

   --  9. Put statements.
   Put (Item => "9. The answer is ");
   Put (Item => 2 + 2);
   New_Line (2);

   --  10. See Circle.adb

   --  11. Explicit type conversion
   Put ("11. Type conversions: ");
   Put (Integer (5.5));  --  Rounds up.
   Put (" ... ");
   Put (Integer (5.4));  --  Rounds down.
   New_Line;

   --  12.  Panic.

   --  13 .. Calculate result
   Put ("13. Calculate result of 9/5C + 32: ");
   New_Line;
   C := 0.0;
   Put (9.0 / 5.0 * C + 32.0);
   New_Line;
   C := 1.00;
   Put (9.0 / 5.0 * C + 32.0);
   New_Line (2);

   --  14. Result of expression.
   Put ("14.  Expression: ");
   Put ((1 + 2 * 2) / 1 + 1);  --  6
   New_Line (2);

   --  15 Formated output:
   Put ("15. Formated: ");
   Pay := 327.66101;
   Put (Item => Pay,
        Fore => 6,
        Aft => 2,
        Exp => 0);
   New_Line;

end quick_check02;
