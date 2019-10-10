{- https://grafana.com/docs/reference/dashboard/#dashboard-json -}

let {- https://grafana.com/docs/reference/dashboard/#panel-size-and-position -}
    GridPos =
      { x : Natural, y : Natural, w : Natural, h : Natural }

let Time = { from : Text, to : Text }

let {- https://grafana.com/docs/reference/dashboard/#timepicker -}
    TimePicker =
      { collapse : Bool
      , enable : Bool
      , notice : Bool
      , now : Bool
      , refresh_intervals : List Text
      , status : Text
      , time_options : List Text
      , type : Text
      }

let TextList = { list : List Text }

let Target = { refId : Text, expr : Text }

let Yaxis =
      { format : Text
      , label : Text
      , logBase : Natural
      , max : Optional Double
      , min : Optional Double
      , show : Bool
      }

let Legend =
      { avg : Bool
      , current : Bool
      , max : Bool
      , min : Bool
      , show : Bool
      , total : Bool
      , values : Bool
      }

let {- https://grafana.com/docs/reference/dashboard/#panels -}
    Panel =
      { type : Text
      , title : Text
      , gridPos : GridPos
      , id : Natural
      , mode : Text
      , content : Text
      , targets : List Target
      , yaxes : List Yaxis
      , datasource : Optional Text
      , legend : Legend
      }

let Dashboard =
      { annotations : TextList
      , editable : Bool
      , graphTootip : Natural
      , hideControls : Bool
      , id : Optional Natural
      , links : List Text
      , panels : List Panel
      , refresh : Text
      , schemaVersion : Natural
      , tags : List Text
      , templating : TextList
      , timepicker : TimePicker
      , time : Time
      , timezone : Text
      , title : Text
      , uid : Text
      , version : Natural
      }

in  { Dashboard = Dashboard
    , GridPos = GridPos
    , Legend = Legend
    , Panel = Panel
    , Target = Target
    , TextList = TextList
    , TimePicker = TimePicker
    , Time = Time
    , Yaxis = Yaxis
    }
