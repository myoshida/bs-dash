type 'a t = 'a Js.t

type js_array
type js_object

type tp =
  | Null
  | Undefined
  | Bool of bool
  | Number of float
  | String of string
  | Array_ of js_array
  | Object of js_object
  | Function

type any

external typeof : 'a -> string = "#typeof"
external bool_of : 'a -> bool = "%identity"
external float_of : 'a -> float = "%identity"
external string_of : 'a -> string = "%identity"
external js_object_of : 'a -> js_object = "%identity"

let is_null: (any -> bool) = [%raw fun a -> "return a === null"]

let refrect o =
  match typeof o with
  | "undefined" -> Undefined
  | "boolean" -> Bool(bool_of o)
  | "number" -> Number(float_of o)
  | "string" -> String(string_of o)
  | "function" -> Function
  | "object" -> if is_null o then Null
                else Object(js_object_of o)
  | _ -> Undefined
