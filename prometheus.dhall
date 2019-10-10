{- Prometheus dashboard from http://demo.robustperception.io:3000 -}
let defaults = ./dhall/defaults.dhall

let types = ./dhall/types.dhall

let render = ./render.dhall

let markdown = defaults.Panel

let
    {- Helper function to visualize a PromQL expression -} graph =
        λ(title : Text)
      → λ(expr : Text)
      → λ(format : Text)
      → λ(label : Text)
      →     defaults.Panel
          ⫽ { title = title
            , type = "graph"
            , targets = [ defaults.Target ⫽ { expr = expr, refId = "A" } ]
            , yaxes =
                [ defaults.Yaxis ⫽ { format = format, label = label }
                , defaults.Yaxis
                ]
            , legend = defaults.Legend ⫽ { show = False }
            }
        : types.Panel

let {- Instance parameter is reused on multiple panels -} instance =
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
        defaults.Dashboard
      ⫽ { uid = "prometheus"
        , title = "Prometheus"
        , panels = [ cpuUsage, residentMemory ]
        , refresh = ""
        }

in  render dashboard
