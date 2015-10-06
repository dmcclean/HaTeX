{-# LANGUAGE OverloadedStrings #-}

module Text.LaTeX.Packages.Siunitx
 ( -- * siunitx package
   siunitx
   -- * siunitx commands
   -- ** Number Formatting
 , num, numlist, numrange
   -- ** Angle Formatting
 , ang
   -- ** Units
 , ampere, candela, kelvin, kilogram, metre, meter, mole, second
 , becquerel, newton, degreeCelsius, ohm, coulomb, pascal, farad, radian, gray, siemens, hertz, sievert, henry, steradian, joule, tesla, katal, volt, lumen, watt, lux, weber
 , day, degree, hectare, hour, litre, liter, arcminute, minute, arcsecond, tonne
 , astronomicalunit, atomicmassunit, bohr, clight, dalton, electronmass, electronvolt, elementarycharge, hartree, planckbar
 , angstrom, bar, barn, bel, decibel, knot, mmHg, nauticalmile, neper
   -- ** Prefixes
 , yocto, zepto, atto, femto, pico, nano, micro, milli, centi, deci, deca, deka, hecto, kilo, mega, giga, tera, peta, exa, zetta, yotta
   -- ** Powers
 , per, tothe, raiseto, square, squared, cubic, cubed
   ) where

import Text.LaTeX.Base
import Text.LaTeX.Base.Syntax
import Text.LaTeX.Base.Class
import Text.LaTeX.Base.Render
import Text.LaTeX.Base.Types
import Data.List (intersperse)

-- | The 'siunitx' package.
--
-- > usepackage [] siunitx
siunitx :: PackageName
siunitx = "siunitx"  

-- TODO: handle options
num :: (Texy a, LaTeXC l) => a -> l
num = comm1 "num" . texy

numlist :: (Texy a, LaTeXC l) => [a] -> l
numlist = comm1 "numlist" . mconcat .  intersperse ";" .  fmap texy

numrange :: (Texy a, LaTeXC l) => a -> a -> l
numrange = undefined

ang :: (Texy a, LaTeXC l) => a -> l
ang = undefined

per, square, squared, cubic, cubed :: LaTeXC l => l
per = commS "per"
square = commS "square"
squared = commS "squared"
cubic = commS "cubic"
cubed = commS "cubed"

tothe, raiseto :: (Texy a, LaTeXC l) => a -> l
tothe = comm1 "tothe" . texy
raiseto = comm1 "raiseto" . texy

-- Table 1
ampere, candela, kelvin, kilogram, metre, meter, mole, second :: LaTeXC l => l
ampere = commS "ampere"
candela = commS "candela"
kelvin = commS "kelvin"
kilogram = commS "kilogram"
metre = commS "metre"
meter = commS "meter"
mole = commS "mole"
second = commS "second"

-- Table 2
becquerel, newton, degreeCelsius, ohm, coulomb, pascal, farad, radian, gray, siemens, hertz, sievert, henry, steradian, joule, tesla, katal, volt, lumen, watt, lux, weber :: LaTeXC l => l
becquerel = commS "becquerel"
newton = commS "newton"
degreeCelsius = commS "degreeCelsius"
ohm = commS "ohm"
coulomb = commS "coulomb"
pascal = commS "pascal"
farad = commS "farad"
radian = commS "radian"
gray = commS "gray"
siemens = commS "siemens"
hertz = commS "hertz"
sievert = commS "sievert"
henry = commS "henry"
steradian = commS "steradian"
joule = commS "joule"
tesla = commS "tesla"
katal = commS "katal"
volt = commS "volt"
lumen = commS "lumen"
watt = commS "watt"
lux = commS "lux"
weber = commS "weber"

-- Table 3
day, degree, hectare, hour, litre, liter, arcminute, minute, arcsecond, tonne :: LaTeXC l => l
day = commS "day"
degree = commS "degree"
hectare = commS "hectare"
hour = commS "hour"
litre = commS "litre"
liter = commS "liter"
arcminute = commS "arcminute"
minute = commS "minute"
arcsecond = commS "arcsecond"
tonne = commS "tonne"

-- Table 4
astronomicalunit, atomicmassunit, bohr, clight, dalton, electronmass, electronvolt, elementarycharge, hartree, planckbar :: LaTeXC l => l
astronomicalunit = commS "astronomicalunit"
atomicmassunit = commS "atomicmassunit"
bohr = commS "bohr"
clight = commS "clight"
dalton = commS "dalton"
electronmass = commS "electronmass"
electronvolt = commS "electronvolt"
elementarycharge = commS "elementarycharge"
hartree = commS "hartree"
planckbar = commS "planckbar"

-- Table 5
angstrom, bar, barn, bel, decibel, knot, mmHg, nauticalmile, neper :: LaTeXC l => l
angstrom = commS "angstrom"
bar = commS "bar"
barn = commS "barn"
bel = commS "bel"
decibel = commS "decibel"
knot = commS "knot"
mmHg = commS "mmHg"
nauticalmile = commS "nauticalmile"
neper = commS "neper"

-- Table 6
yocto, zepto, atto, femto, pico, nano, micro, milli, centi, deci, deca, deka, hecto, kilo, mega, giga, tera, peta, exa, zetta, yotta :: LaTeXC l => l
yocto = commS "yocto"
zepto = commS "zepto"
atto = commS "atto"
femto = commS "femto"
pico = commS "pico"
nano = commS "nano"
micro = commS "micro"
milli = commS "milli"
centi = commS "centi"
deci = commS "deci"
deca = commS "deca"
deka = commS "deka"
hecto = commS "hecto"
kilo = commS "kilo"
mega = commS "mega"
giga = commS "giga"
tera = commS "tera"
peta = commS "peta"
exa = commS "exa"
zetta = commS "zetta"
yotta = commS "yotta"
