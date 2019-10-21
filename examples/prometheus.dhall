{- Prometheus dashboard from http://demo.robustperception.io:3000 -}
let Grafana = ../package.dhall

let graph {- Helper function to visualize a PromQL expression -} =
        λ(title : Text)
      → λ(expr : Text)
      → λ(format : Text)
      → λ(label : Text)
      → Grafana.Panel::{
        , title = title
        , type = "graph"
        , targets = [ Grafana.Target::{ expr = expr, refId = "A" } ]
        , yaxes =
            [ Grafana.YAxis::{ format = format, label = label }
            , Grafana.YAxis.default
            ]
        , legend = Grafana.Legend::{ show = False }
        }

let instance {- Instance parameter is reused on multiple panels -} =
      "demo.robustperception.io:9090"

let cpuUsage =
      graph
        "Prometheus CPU usage"
        ''
          irate(process_cpu_seconds_total{job="prometheus",instance="${instance}"}[5m])
        ''
        "none"
        "Cores/s"

let residentMemory =
      graph
        "Prometheus resident memory"
        ''
          process_resident_memory_bytes{instance="${instance}", job="prometheus"}
        ''
        "bytes"
        ""

let dashboard =
      Grafana.Dashboard::{
      , uid = "prometheus"
      , title = "Prometheus"
      , panels = [ cpuUsage, residentMemory ]
      , refresh = ""
      }

in  Grafana.render dashboard
