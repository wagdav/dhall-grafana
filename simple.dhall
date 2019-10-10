{- Dasboard with default panels -}
let defaults = ./dhall/defaults.dhall

let render = ./render.dhall

let markdown = defaults.Panel

let graph = defaults.Panel ⫽ { type = "graph" }

let dashboard =
        defaults.Dashboard
      ⫽ { uid = "default"
        , title = "Default panels"
        , panels = [ markdown, graph ]
        }

in  render dashboard
