with Ada.Float_Text_IO;
with Ada.Text_IO;

procedure Temperature is

-- This program computes the midpoint between
-- the freezing and boiling point of water

-- Program Construction pg72

-- Declarative part begins here

   -- Constants.
   Freeze : constant Float := 32.0;    -- Freezing point of qater
   Boil   : constant Float := 212.0;   -- Boiling point of water

   -- Variables
   Avg_Temp : Float;    -- The result of averaging
                        -- Freeze and Boil

begin    -- The executable statement begin here.

   -- Display the constants.
   Ada.Text_IO.Put       (Item => "Water freezes at ");
   Ada.Float_Text_IO.Put (Item => Freeze);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put       (Item => "and boils at ");
   Ada.Float_Text_IO.Put (Item => Boil);
   Ada.Text_IO.Put       (Item => " degrees.");
   Ada.Text_IO.New_Line;
   Ada.Text_IO.New_Line;

   -- Calculate the average
   Avg_Temp := Freeze + Boil;
   Avg_Temp := Avg_Temp / 2.0;

   -- Display the average
   Ada.Text_IO.Put       (Item => "Halfway between is ");
   Ada.Float_Text_IO.Put (Item => Avg_Temp);
   Ada.Text_IO.Put       (Item => " degrees");
   Ada.Text_IO.New_Line;

end Temperature;
