module Middleware = struct
  (** Re-exports simple middleware that doesn't have auxiliary
      functions *)
  let static = Static_serve.m
end
