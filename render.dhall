{- Assign consequtive IDs to each panel a dashboard -}
let types = ./dhall/types.dhall

let map =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/master/Prelude/List/map

let IndexPanel = { index : Natural, value : types.Panel }

let addPanelIds = λ(p : IndexPanel) → p.value ⫽ { id = p.index }

in    λ(dashboard : types.Dashboard)
    → let panels =
            map
              IndexPanel
              types.Panel
              addPanelIds
              (List/indexed types.Panel dashboard.panels)

      in  dashboard ⫽ { panels = panels } : types.Dashboard
