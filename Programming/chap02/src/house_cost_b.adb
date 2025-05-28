with Ada.Text_IO;
with Ada.Float_Text_IO;

procedure House_Cost_B is

   -- This program computes the cost per square foot of
   -- living space for a house, given the dimensions of
   -- the house, the number of stories, the size of the
   -- nonliving space, and the total cost less land.

   Width            : constant Float := 30.0;      -- Width of the house
   Length           : constant Float := 40.0;      -- Length of the house
   Stories          : constant Float := 2.5;       -- Number of full stories
   Price            : constant Float := 150_000.0; -- Selling price less land
   Non_Living_Space : constant Float := 825.0;     -- Garage, closets, etc

   Gross_Footage    : Float;    -- Total square footage
   Living_Footage   : Float;    -- Living area
   Cost_Per_Foot    : Float;    -- Cost/foot of living area

begin   -- House Cost
   Gross_Footage  := Length * Width * Stories;
   Living_Footage := Gross_Footage - Non_Living_Space;
   Cost_Per_Foot  := Price / Living_Footage;
   Ada.Float_Text_IO.Put  (Item => Cost_Per_Foot,
                           Fore => 4,
                           Aft => 2,
                           Exp => 0);
   Ada.Text_IO.New_Line;
end House_Cost_B;
