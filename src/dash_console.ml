external log: 'a -> unit
  = "log" [@@bs.val][@@bs.scope "console"]

external log2: 'a -> 'b -> unit
  = "log" [@@bs.val][@@bs.scope "console"]

external log3: 'a -> 'b -> 'c -> unit =
  "log" [@@bs.val][@@bs.scope "console"]

external log4: 'a -> 'b -> 'c -> 'd -> unit =
  "log" [@@bs.val][@@bs.scope "console"]

external error: 'a -> unit
  = "error" [@@bs.val][@@bs.scope "console"]

external error2: 'a -> 'b -> unit
  = "error" [@@bs.val][@@bs.scope "console"]

external error3: 'a -> 'b -> 'c -> unit =
  "error" [@@bs.val][@@bs.scope "console"]

external error4: 'a -> 'b -> 'c -> 'd -> unit =
  "error" [@@bs.val][@@bs.scope "console"]
