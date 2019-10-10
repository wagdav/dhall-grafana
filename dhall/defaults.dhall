let types = ./types.dhall

let GridPos = { x = 0, y = 0, w = 12, h = 9 } : types.GridPos

let Legend =
      { avg = False
      , current = False
      , max = False
      , min = False
      , show = True
      , total = False
      , values = False
      }

let Panel =
        { type =
            "text"
        , title = "Title"
        , gridPos = GridPos
        , id = 0
        , mode = "markdown"
        , content =
            "For markdown syntax help: [commonmark.org/help](https://commonmark.org/help)"
        , targets = [] : List types.Target
        , yaxes = [] : List types.Yaxis
        , datasource = None Text
        , legend = Legend
        }
      : types.Panel

let Target = { refId = "A", expr = "" } : types.Target

let Yaxis =
        { format = "short"
        , label = ""
        , logBase = 1
        , min = None Double
        , max = None Double
        , show = True
        }
      : types.Yaxis

let Dashboard =
        { id = None Natural
        , uid = "new-dashboard"
        , title = "New dashboard"
        , tags = [] : List Text
        , timezone = "browser"
        , hideControls = False
        , graphTootip = 1
        , panels = [ Panel ]
        , time = { from = "now-6h", to = "now" }
        , timepicker =
              { collapse = False
              , enable = True
              , notice = False
              , now = True
              , time_options =
                  [ "5m"
                  , "15m"
                  , "1h"
                  , "3h"
                  , "6h"
                  , "12h"
                  , "24h"
                  , "2d"
                  , "3d"
                  , "4d"
                  , "7d"
                  , "30d"
                  ]
              , status = "Stable"
              , refresh_intervals =
                  [ "5s"
                  , "10s"
                  , "30s"
                  , "1m"
                  , "5m"
                  , "15m"
                  , "30m"
                  , "1h"
                  , "2h"
                  , "1d"
                  ]
              , type = "timepicker"
              }
            : types.TimePicker
        , templating = { list = [] : List Text }
        , annotations = { list = [] : List Text }
        , refresh = "1m"
        , schemaVersion = 18
        , version = 0
        , links = [] : List Text
        , editable = False
        }
      : types.Dashboard

in  { Dashboard = Dashboard
    , GridPos = GridPos
    , Legend = Legend
    , Panel = Panel
    , Target = Target
    , Yaxis = Yaxis
    }
