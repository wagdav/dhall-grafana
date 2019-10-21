{- https://grafana.com/docs/reference/dashboard/#panels -}
{ type : Text
, title : Text
, gridPos : ./GridPos.dhall
, id : Natural
, mode : Text
, content : Text
, targets : List ./Target.dhall
, yaxes : List ./YAxis.dhall
, datasource : Optional Text
, legend : ./Legend.dhall
}
