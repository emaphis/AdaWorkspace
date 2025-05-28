with Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Integer_Text_IO;

use Ada.Text_IO;
use Ada.Float_Text_IO;
use Ada.Integer_Text_IO;

procedure Mileage is

-- This program computes miles per gallon given four amounts
-- for gallons used, and starting and ending

   Amt1 : constant Float := 11.7;     -- Number of gallons for fill-up 1
   Amt2 : constant Float := 14.3;     -- Number of gallons for fill-up 2
   Amt3 : constant Float := 12.2;     -- Number of gallons for fill-up 3
   Amt4 : constant Float :=  8.5;     -- Number of gallons for

   Start_Miles : constant Float := 67_308.0;  -- Starting mileage
   End_Miles   : constant Float := 68_750.7;  -- Ending mileage

   MPG : Integer range 4 .. 100;              -- Computed miles per gallon

begin     -- Mileage
   MPG := Integer( (End_Miles - Start_Miles) / (Amt1 + Amt2 + Amt3 + Amt4) );

   Put (Item => "For the gallon Amounts: ");
   New_Line (Spacing => 1);
   Put (Item => Amt1,
        Fore => 4,
        Aft  => 1,
        Exp  => 0);
   Put (Item => ',');
   Put (Item => Amt2,
        Fore => 4,
        Aft  => 1,
        Exp  => 0);
   Put (Item => ',');
   Put (Item => Amt3,
        Fore => 4,
        Aft  => 1,
        Exp  => 0);
   Put (Item => ',');
   Put (Item => Amt4,
        Fore => 4,
        Aft  => 1,
        Exp  => 0);
   New_Line (Spacing => 2);
   Put (Item => "a starting mileage of ");
   Put (Item => Start_Miles,
        Fore => 6,
        Aft  => 1,
        Exp  => 0);
   New_Line (Spacing => 1);
   Put (Item => "and an ending mileage of ");
   Put (Item => End_Miles,
        Fore => 6,
        Aft  => 1,
        Exp  => 0);
   New_Line (Spacing => 2);
   Put (Item => "the mileage per gallon is ");
   Put (Item => MPG,
        Width => 3);
   New_Line (Spacing => 1);

end Mileage;
