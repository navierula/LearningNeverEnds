(* I'm just a girl trying to learn the basics of OCaml - learn with me! *)
(* Practicing examples from: https://try.ocamlpro.com *)

(* Classic print statement --> "Hello, world!"*)
print_string "Hello, World!\n";;

(* list with ints *)
[1;2;3]

(* list with strings *)
[|"Navie";"Narula"]

(* reverse list *)
List.rev[1;2;3]

(* get 1st element of list // hd = head *)
List.hd[1;2;3]

(* concatenate arrays *)
Array.append[|1;2|][|3;4|]

(* gets second, or last, element of array *)
Array.get [|1; 2; 3|] 2

(* make n of this string *)
String.make 11 's'

(* concatenation *)
"Navie" ^ " loves " ^ "pugs."

(* length of string *)
String.length "hey"

(* make lower *)
String.lowercase "BYE"

(* concat using separator, could be useful for dates, times, etc.*)
String.concat "/" [""; "usr"; "local"; "bin"]

(* get int from string *)
int_of_string "11"

(* here's a tuple *)
(11, "Navie", true)

(* get 1st element *)
fst (8, 9)

(* get second element *)
snd (8, 9)

(* variable assignment *)
let x = 5 * 6

(* to make variable modfiable, must assign a reference *)
let x = ref 30

(* now can change value using x:= *)
x := 100/2

(* access value contained in reference by !*)
let y = !x + 50

(* print int *)
print_int 11

(* print string *)
print_string "Hello"

(* reference to a list *)
let listt = ref []

(* for loop, iterating through a range *)
for i = 1 to 10 do
  listt := i :: !listt;
done;
!listt

(* reverse listt *)
List.rev !listt

(* iterating through differently, downwards! *)
for i = 10 downto 1 do
 listt := i :: !listt
done;
!listt

(* boolean expression *)
1 > 2

(* just type this, because I love the result :) *)
"cat" > "dog" (* returns false *)
"dog" > "cat" (* returns true *)

(* check for equality *)
7 = 7

(* check for inequality *)
7 <> 7 

(* to compare values of different types *)
"7" = string_of_int 7

(* define multiple things *)
let a = 3 and b = 4

(* compute minimum using conditionals *)
Printf.printf "min(%d,%d) = %d\n" a b
    (if a < b then a else b)

(* while loop *)
while !x > 20 do
  print_int !x; print_newline ();
  x := !x - 2
done



