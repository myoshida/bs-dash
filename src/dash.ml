module Console = Dash_console
module Array = Dash_array

module Obj = struct
  type 'a t
  type key = string
  external empty: unit -> 'a t = "Object" [@@bs.new]
end

module Map = struct
  type 'a t
  type key = string
  external empty: unit -> 'a t = "Map" [@@bs.new]
  external fromArray: (key * 'a) array -> 'a t = "Map" [@@bs.new]
  external get: 'a t -> key -> 'a option
    = "get" [@@bs.send] [@@bs.return nullable]
end

module String = struct
  type t = string
end

let _ =
  let res = Array.map [| 1; 2; 3 |] (fun elt -> elt + 1) in
  Console.log res

let _ =
  let res = Array.concat [| 1; 2; 3 |] [| 4; 5; 6 |] in
  Console.log res

let _ =
  Console.log (
      Array.every [| 1; 2; 3 |] (fun e -> e < 4)
    )
let _ =
  Console.log (
      Array.length [| 1; 2; 3; 4 |]
    )
let _ =
  Console.log (
      Array.filter [| 1; 2; 3; 4 |] (fun e -> (e mod 2) == 0)
    )
let _ =
  match Array.pop [| 4; 5 |] with
  | Some(a) -> Console.log2 "Some:" a
  | None -> Console.log "None"
let _ =
  let a = [| 1; 2; 3; 4 |] in
  let len = Array.push a 5 in
  Console.log2 a len
let _ =
  Console.log (
      Array.reverse [| 1; 2; 3; 4 |]
    )
let _ =
  Console.log (
      Array.sort [| 1; 2; 3; 4 |] (fun a b -> b - a)
    )
let _ =
  match Array.shift [| 4; 5 |] with
  | Some(a) -> Console.log2 "Some:" a
  | None -> Console.log "None"
