{- https://grafana.com/docs/reference/dashboard/#dashboard-json -}
{ annotations : ./TextList.dhall
, editable : Bool
, graphTootip : Natural
, hideControls : Bool
, id : Optional Natural
, links : List Text
, panels : List ./Panel.dhall
, refresh : Text
, schemaVersion : Natural
, tags : List Text
, templating : ./TextList.dhall
, timepicker : ./TimePicker.dhall
, time : ./Time.dhall
, timezone : Text
, title : Text
, uid : Text
, version : Natural
}
