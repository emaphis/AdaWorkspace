with Ada.Text_IO;        use Ada.Text_IO;
with Ada.Float_Text_IO;  use Ada.Float_Text_IO;

procedure Quilt is

-- This program computes the weight of down required and the cost of
-- filling quilts with each of three different grades of goose down
-- given the lofts and costs of each grade
-- Project pg 87.S

   -- Dimensions of tubes to be filled with down (inches)
   Diameter : constant Float := 6.25;
   Length   : constant Float := 104.0;

   Num_Tubes : constant Integer := 12;   -- Tubes per quilt

   -- Lofts of different down grades (cubic inches per ounce)
   Premium_Loft  : constant Float := 1_000.0;
   Ordinary_Loft : constant Float :=   700.0;
   Economy_Loft  : constant Float :=   500.0;

   -- Price (in dollars) per ounce of different down grades
   Premium_Price  : constant Float := 0.97;
   Ordinary_Price : constant Float := 0.54;
   Economy_Price  : constant Float := 0.32;

   Pi : constant Float := 3.14159265;

   Radius       : Float range 0.0..Float'Last; -- Radius of a tube (inches)
   Tube_Volume  : Float range 0.0..Float'Last; -- Volume of a tube (cubic inches)
   Total_Volume : Float range 0.0..Float'Last; -- Volume of quilt (cubic inches)

   -- Weights of different down grades to fill a quilt (ounces)
   Premium_Weight  : Float range 0.0..Float'Last;
   Ordinary_Weight : Float range 0.0..Float'Last;
   Economy_Weight  : Float range 0.0..Float'Last;

   -- Cost to fill a quilt with different down grades (dollars)
   Premium_Cost  : Float range 0.0..Float'Last;
   Ordinary_Cost : Float range 0.0..Float'Last;
   Economy_Cost  : Float range 0.0..Float'Last;

begin
   -- Compute volume of down needed to fill a quilt
   Radius := Diameter / 2.0;
   Tube_Volume := Pi * Radius ** 2 * Length;
   Total_Volume := Float(Num_Tubes) * Tube_Volume;

   -- Compute weights and costs of different grade downs to fill a quilt
   Premium_Weight  := Total_Volume / Premium_Loft;
   Premium_Cost    := Premium_Weight * Premium_Price;
   Ordinary_Weight := Total_Volume / Ordinary_Loft;
   Ordinary_Cost   := Ordinary_Weight * Ordinary_Price;
   Economy_Weight  := Total_Volume / Economy_Loft;
   Economy_Cost    := Economy_Weight * Economy_Price;

   -- Display the results
   Put  (Item => "It requires ");
   Put (Item => Total_Volume,
        Fore => 1,
        Aft  => 2,
        Exp  => 0);
   Put (Item => " cubic inches of down to fill a quilt.");
   New_Line (Spacing => 2);
   Put (Item => "The weight and cost for");
   New_Line;
   Put (Item => "   Premium down is ");
   Put (Item => Premium_Weight,
        Fore => 6,
        Aft  => 2,
        Exp  => 0);
   Put  (Item => " ounces    $");
   Put (Item => Premium_Cost,
        Fore => 1,
        Aft  => 2,
        Exp  => 0);
   New_Line;
   Put  (Item => "   Ordinary down is");
   Put (Item => Ordinary_Weight,
        Fore => 6,
        Aft  => 2,
        Exp  => 0);
   Put  (Item => " ounces    $");
   Put (Item => Ordinary_Cost,
        Fore => 1,
        Aft  => 2,
        Exp  => 0);
   New_Line;
   Put  (Item => "   Economy down is ");
   Put (Item => Economy_Weight,
        Fore => 6,
        Aft  => 2,
        Exp  => 0);
   Put  (Item => " ounces    $");
   Put (Item => Economy_Cost,
        Fore => 1,
        Aft  => 2,
        Exp  => 0);
   New_Line;

end Quilt;
