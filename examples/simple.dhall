{- Dasboard with default panels -}
let Grafana = ../package.dhall

let dashboard =
      Grafana.Dashboard::{
      , uid = "default"
      , title = "Default panels"
      , panels = [ Grafana.Panel.default, Grafana.Panel::{ type = "graph" } ]
      }

in  Grafana.render dashboard
