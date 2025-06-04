--  Prepation Exercise 17 - pg. 110

with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Prep_Exercise_17 is

   Pounds : constant := 10;

   Price : Integer;
   Cost  : Integer;
   Ch    : String (1 .. 1);
begin
   Price := 10;
   Cost  := Price * Pounds;
   Ch   := "A";

   Ada.Text_IO.Put (Item => "Cost is ");
   Ada.Text_IO.New_Line;

   Ada.Integer_Text_IO.Put (Item => Cost);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put (Item => "Price is ");
   Ada.Integer_Text_IO.Put (Item => Price);
   Ada.Text_IO.Put (Item => "Cost is ");
   Ada.Integer_Text_IO.Put (Item => Cost);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put (Item => "Grade ");
   Ada.Text_IO.Put (Item => Ch);
   Ada.Text_IO.Put (Item => " costs ");
   Ada.Text_IO.New_Line;

   Ada.Integer_Text_IO.Put (Item => Cost);
   Ada.Text_IO.New_Line;

end Prep_Exercise_17;

--  Cost is
--            100
--  Price is        10Cost is         100
--  Grade A costs
--            100
