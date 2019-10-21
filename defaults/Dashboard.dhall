{ id = None Natural
, uid = "new-dashboard"
, title = "New dashboard"
, tags = [] : List Text
, timezone = "browser"
, hideControls = False
, graphTootip = 1
, panels = [ ./Panel.dhall ]
, time = { from = "now-6h", to = "now" }
, timepicker = ./TimePicker.dhall
, templating = { list = [] : List Text }
, annotations = { list = [] : List Text }
, refresh = "1m"
, schemaVersion = 18
, version = 0
, links = [] : List Text
, editable = False
}
