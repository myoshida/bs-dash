external concat: 'a array -> 'a array -> 'a array
  = "concat" [@@bs.send]

external concat3: 'a array -> 'a array -> 'a array -> 'a array
  = "concat" [@@bs.send]

external concat4: 'a array -> 'a array -> 'a array -> 'a array -> 'a array
  = "concat" [@@bs.send]

external every: 'a array -> ('a -> bool [@bs.uncurry]) -> bool
  = "every" [@@bs.send]

external everyi: 'a array -> ('a -> int -> bool [@bs.uncurry]) -> bool
  = "every" [@@bs.send]

external filter: 'a array -> ('a -> bool [@bs.uncurry]) -> 'a array
  = "filter" [@@bs.send]

external filteri: 'a array -> ('a -> int -> bool [@bs.uncurry]) -> 'a array
  = "filter" [@@bs.send]

external length: 'a array -> int = "length" [@@bs.get]

external map: 'a array -> ('a -> 'a [@bs.uncurry]) -> 'a array
  = "map" [@@bs.send]

external mapi: 'a array -> ('a -> int -> 'a [@bs.uncurry]) -> 'a array
  = "map" [@@bs.send]

external pop: 'a array -> 'a option
  = "pop" [@@bs.send] [@@bs.return nullable]

external push: 'a array -> 'a -> 'a array
  = "push" [@@bs.send]

external reverse: 'a array -> 'a array
  = "reverse" [@@bs.send]

external shift: 'a array -> 'a option
  = "shift" [@@bs.send] [@@bs.return nullable]

external sort: 'a array -> ('a -> 'a -> int [@bs.uncurry]) -> 'a array
  = "sort" [@@bs.send]

external unshift: 'a array -> 'a -> 'a array
  = "unshift" [@@bs.send]

