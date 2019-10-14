-- lab1.adb
-- komentarz do końca linii

-- wykorzystany pakiet 
with Ada.Text_IO;
use Ada.Text_IO;

-- procedura główna - dowolna nazwa
procedure Lab1 is

-- część deklaracyjna  

  NFact : Integer := 4;
  
  -- funkcja - forma pełna
  function Max2(A1, A2 : in Float ) return Float is
  begin
    if A1 > A2 then return A1;
    else return A2; 
    end if;
  end Max2;    

  -- funkcja "wyrażeniowa"  
  -- forma uproszczona funkcji
  -- jej treścią jest tylko wyrażenie w nawiasie   
  
  function Add(A1, A2 : Float) return Float is
    (A1 + A2);
       
  function Max(A1, A2 : in Float ) return Float is
    (if A1 > A2 then A1 else A2);    
    
  -- Fibonacci      
  function Fibo(N : Natural) return Natural is   
    (if N = 0 then 1 elsif N in 1|2 then  1 else Fibo(N-1) + Fibo(N-2) );   
  
    -- procedura 
    -- zparametryzowany ciąg instrukcji  
  procedure Print_Fibo(N: Integer) is
  begin
    if N <1 or N>46 then raise Constraint_Error;
    end if;
    Put_Line("Ciąg Fibonacciego dla N= " & N'Img);
    for I in 1..N loop
      Put( Fibo(I)'Img & " " );
    end loop;   
    New_Line;
  end Print_Fibo;

  function Avg(A1, A2 : Float) return Float is
    (0.5 * (A1 + A2));

  function Factorial(N : Natural) return Natural is
    (if N < 1 then 1 else N * Factorial(N - 1));

-- poniżej treść procesury głównej   
begin
  Put_Line("Suma = " & Add(3.0, 4.0)'Img ); 
  Put_Line( "Max =" & Max(6.7, 8.9)'Img);
  Put_Line( "Max2 =" & Max2(6.7, 8.9)'Img);
  Print_Fibo(12);

  
  Put_Line("------");
  Put_Line("Avg = " & Avg(7.0, 11.5)'Img);
  Put_Line(NFact'Img & "! = " & Factorial(NFact)'Img);
end Lab1;  