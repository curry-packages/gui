------------------------------------------------------------------------------
-- A simple counter demo for the GUI library
------------------------------------------------------------------------------

import GUI

counterGUI =
 Col [] [
   Label [Text "A simple counter:"],
   Entry [WRef val, Text "0", Background "yellow"],
   Row [] [Button (updateValue incrText val) [Text "Increment"],
           Button (setValue val "0")         [Text "Reset"],
           Button exitGUI                    [Text "Stop"]]]
     where val free

           incrText s = show (read s + 1)

main = runGUI "Counter Demo" counterGUI
