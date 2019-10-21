{- Assign consequtive IDs to each panel a dashboard -}

let Panel = ./types/Panel.dhall

let Dashboard = ./types/Dashboard.dhall

let map =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/master/Prelude/List/map

let IndexPanel = { index : Natural, value : Panel }

let renderPanel =
        λ(p : IndexPanel)
      → let xOffset = if Natural/even p.index then 0 else 12

        in    p.value
            ⫽ { id = p.index, gridPos = p.value.gridPos ⫽ { x = xOffset } }

in    λ(dashboard : Dashboard)
    → let panels =
            map
              IndexPanel
              Panel
              renderPanel
              (List/indexed Panel dashboard.panels)

      in  dashboard ⫽ { panels = panels } : Dashboard
