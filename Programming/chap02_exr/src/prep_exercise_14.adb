with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Prep_Exercise_14 is
   A : constant Integer := 5;
   B : constant Integer := 2;

begin
   Ada.Text_IO.Put (Item => "A = ");
   Ada.Integer_Text_IO.Put (Item => A);
   Ada.Text_IO.Put (Item => " B = ");
   Ada.Integer_Text_IO.Put (Item => B);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put (Item => "Sum = ");
   Ada.Integer_Text_IO.Put (Item => A + B);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put (Item => "Sum = ");
   Ada.Integer_Text_IO.Put (Item => A / B);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put (Item => "Sum = ");
   Ada.Integer_Text_IO.Put (Item => B - A);
   Ada.Text_IO.New_Line;

end Prep_Exercise_14;

--  A =         5 B =       2
--  Sum =         7
--  Sum =         2
--  Sum =         3
