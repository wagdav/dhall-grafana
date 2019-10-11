{- Assign consequtive IDs to each panel a dashboard -}
let types = ./dhall/types.dhall

let map =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/master/Prelude/List/map

let IndexPanel = { index : Natural, value : types.Panel }

let renderPanel =
        λ(p : IndexPanel)
      → let xOffset = if Natural/even p.index then 0 else 12

        in    p.value
            ⫽ { id = p.index, gridPos = p.value.gridPos ⫽ { x = xOffset } }

in    λ(dashboard : types.Dashboard)
    → let panels =
            map
              IndexPanel
              types.Panel
              renderPanel
              (List/indexed types.Panel dashboard.panels)

      in  dashboard ⫽ { panels = panels } : types.Dashboard
