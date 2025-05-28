with Ada.Text_IO;

procedure Hello_world is

   -- Program from page 50.

   Greeting : constant String := "Hello Ada World"; -- The message
   
begin
   Ada.Text_IO.Put (Item => Greeting);
   Ada.Text_IO.New_Line;
end Hello_world;
