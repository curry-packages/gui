-- "Hello World" demo for the GUI library

import Graphics.UI

main :: IO ()
main = runGUI "Hello" (Col [] [Label [Text "Hello world!"],
                               Button exitGUI [Text "Stop"]])
