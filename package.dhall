{ Dashboard =
    { Type = ./types/Dashboard.dhall, default = ./defaults/Dashboard.dhall }
, GridPos = { Type = ./types/GridPos.dhall, default = ./defaults/GridPos.dhall }
, Legend = { Type = ./types/Legend.dhall, default = ./defaults/Legend.dhall }
, Panel = { Type = ./types/Panel.dhall, default = ./defaults/Panel.dhall }
, Target = { Type = ./types/Target.dhall, default = ./defaults/Target.dhall }
, TimePicker =
    { Type = ./types/TimePicker.dhall, default = ./defaults/TimePicker.dhall }
, YAxis = { Type = ./types/YAxis.dhall, default = ./defaults/YAxis.dhall }
, render = ./render.dhall
}
