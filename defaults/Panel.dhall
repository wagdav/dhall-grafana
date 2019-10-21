{ type = "text"
, title = "Title"
, gridPos = ./GridPos.dhall
, id = 0
, mode = "markdown"
, content =
    "For markdown syntax help: [commonmark.org/help](https://commonmark.org/help)"
, targets = [] : List ../types/Target.dhall
, yaxes = [ ./YAxis.dhall, ./YAxis.dhall ]
, datasource = None Text
, legend = ./Legend.dhall
}
