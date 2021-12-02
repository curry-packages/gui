-- temperature converter

import Graphics.UI

-- only a scale for Celsius:
tempWidget :: Widget
tempWidget =
  Col [] [
    Label [Text "Temperature in Celsius:"],
    Scale 0 100 [WRef cels, Cmd convert],
    Row [] [Label [Text "Fahrenheit: "],
            Message [WRef fahr, Background "white"],
            Label [Text "Kelvin: "],
            Message [WRef kelv, Background "white"]],
    Button exitGUI [Text "Stop"]]

 where
  cels,fahr,kelv free

  convert wp = do cs <- getValue cels wp
                  let c = read cs
                  setValue fahr (show (c * 9 `div` 5 + 32)) wp
                  setValue kelv (show (c + 273)) wp

main :: IO ()
main = runGUI "Temperature Conversion" tempWidget


-- a scale for Celsius and a scale for Fahrenheit:
tempWidget2 :: Widget
tempWidget2 =
  Col [] [
    Label [Text "Temperature in Celsius:"],
    Scale 0 100 [WRef cels, Cmd convertC],
    Row [] [Label [Text "Fahrenheit: "],
            Message [WRef fahr, Background "white"],
            Label [Text "Kelvin: "],
            Message [WRef kelv, Background "white"]],
    Label [Text "Temperature in Fahrenheit:"],
    Scale 0 212 [WRef fscl, Cmd convertF],
    Button exitGUI [Text "Stop"]]

 where
  cels,fahr,kelv,fscl free

  convertC wp = do cs <- getValue cels wp
                   let c = read cs
                   setValue fahr (show (c * 9 `div` 5 + 32)) wp
                   setValue kelv (show (c + 273)) wp
                   setValue fscl (show (c * 9 `div` 5 + 32)) wp

  convertF wp = do fs <- getValue fscl wp
                   let c = ((read fs)-32) * 5 `div` 9
                   setValue cels (show c) wp
                   setValue fahr (show (c * 9 `div` 5 + 32)) wp
                   setValue kelv (show (c + 273)) wp

main2 :: IO ()
main2 = runGUI "Temperature Conversion" tempWidget2

