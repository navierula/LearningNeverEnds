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

(* function def *)
let incr n = n + 1

(* function def with tuples/parameters *)
let plus_and_mult (a, b, c) = (a + b) * c

(* function calls *)
incr 10
plus_and_mult(2, 4, 6)

(* define addition function *)
let plus x y = x + y

(* call addition function *)
plus 3 4

(* function can return mult values, thanks tuples! *)
let divide x y = (x / y, x mod y)

(* so, calling it returns multi vals *)
divide 10 4

(* more practice and forms *)
let mult x y = x * y
let double mult 2
double 11

(* define function and apply it *)
(fun x -> x + 1) 10

(* increment every element in list *)
List.map
List.map (fun x -> x + 1) [1; 2; 3; 4]

(* you can fold to compute sum of all elements in list *)
List.fold_left
(fun acc -> acc + x)
0 
[1; 2; 3; 4]

(* we can also do this *)
let plus = fun acc x -> acc + x
List.fold_left plus 0 [1; 2; 3; 4]

(* define pattern matching *)

let string_of_int x = match x with
   | 0 -> "zero"
   | 1 -> "one"
   | 2 -> "two"
   | _ -> "many"

(* pattern matching on characters *)

let is_capital = function
  | 'a' .. 'z' -> false
  | 'A' .. 'Z' -> true
  | _          -> failwith "Not a valid letter"


(* pattern matching with tuples *)
let fit str len = match (str,len) with
  | ("foo", 51) -> true
  | ("bar", 51) -> true
  | (_    , 42) -> false
  | _           -> (String.length str) = len


(* list is either empty [], a head h, or a tail t h::t *)
(* define the head *)

let head = function
	| [] -> failwith "empty list"
	| h :: t -> h

(* second element *)
let second_element = function
  | []      -> failwith "the list is empty"
  | [_]     -> failwith "the list contains only one element"
  | _::e::_ -> e

(* and further! *)
let second_element = function
  | []      -> failwith "the list is empty"
  | [_]     -> failwith "the list contains only one element"
  | _::e::_ -> e

(* check for a list of size 2 *)
let has_size_two = function
  | [| _; _ |] -> true
  | _          -> false







