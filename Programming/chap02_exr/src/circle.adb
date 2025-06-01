--  Quick Check 10.

with Ada.Text_IO;
with Ada.Float_Text_IO;

procedure circle is

   --  Constants

   Pi : constant Float := 3.14159;  --  Ratio of circumferenc to diameter

   --  Variables

   Circumfrence : Float;  --  The computed circumfrence of the circle

begin  -- Circle
   Circumfrence := 2.0 * Pi * 7.9 * 7.0;
   Ada.Text_IO.Put (Item => "The circumference of a circle of ");
   Ada.Text_IO.Put (Item => "or radius of 7 is ");
   Ada.Float_Text_IO.Put (Item => Circumfrence,
                          Fore => 1,
                          Aft => 2,
                          Exp => 0);
   Ada.Text_IO.New_Line;
end circle;

-- The circumference of a circle of or radius of 7 is 347.46
