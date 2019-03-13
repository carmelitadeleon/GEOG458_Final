evOverview <- "<p>This map displays each US state's export values in millions of dollars.
The gradient color scheme defines how high or low each state's export values are relative
to other states. Clicking on a state reveals a pop up that lists the state's top export
commodity and its share value in 2017 (the % share the top commodity has out of the state's
total exports).</p>"

evAnalysis <- "<p>Based on the map, the top three exporting states are California,
Texas, and New York. Of these three states, New York has the greatest share value
of 15.4462. In second place is Texas with a share value of 8.7495 and in last is 
California with a value of 4.1666. While these three states play a major role in the US’
exporting economy, the degree to which they rely on their top export as a source of revenue
varies widely. Knowing this information can serve as a basis for additional investigation on
the diversification of state economies, why the state and federal government has political
interests in certain industries, and the perceived importance/relevance of a state on a national
level. <br>Observe that states in the Midwest and most of the Western side of the U.S. have a
lower export value in comparison to the Northeast and Southeast of the U.S - this suggests
that the East Coast is immensely important to the US’ exporting economy.</p>"

prodOverview <- "<p>The default map shows all 24 export types and the corresponding state
that has that as their top export type. To understand each of the export types more in-depth
, the user has the ability to select and view the shipping commodity individually. By selecting
different commodities through the use of the dropbox, the map will likewise highlight only the
states that have the selected export type as their top export.</p>"

prodAnalysis <- "<p>The most common top export type is “civilian aircrafts, engines,
and parts”. These products are exported from 16 different states across the US, making 
it perhaps the most important export for state economies.<br>Recall from the Export Values
Map the top three exporting states were identified as California, Texas, and New York.
California’s top export is civilian aircrafts, but its low share value (4.1666) suggests
that California’s exports are well diversified and aircrafts may not be what the state’s
export economy is commonly associated with. New York’s top export is cut and shaped diamonds
and has a very high share value (15.4462); given the price and markup of non-industrial diamonds,
we can deduce that this is the most expensive and popular good that NY exports. Texas’
top export is petroleum, which also has a high share value (8.7495); this means that Texas
relies more heavily on petroleum in its exporting economy and due to the unpredictability/instability
of oil markets, the state likely invests substantial time and effort in protecting its
share in the oil markets.</p>"

tempOverview <- "<p>This map displays the production value of the United States' top 16
cities for Civilian Aircraft, Engines & Parts, reported in millions of dollars. It
shows the values for these 16 cities across four years : 2014 - 2017, and shows the
change in export income for these cities through these years. Comparison amongst the
cities is also available, specifically using the %share columns, which show what percent
of the overall Civilian Aircraft, Engines & Parts market that city takes account of, and 
allows you to register the relative growth of a city to itself and then to others.</p>"

tempAnalysis <- "<p>From just the absolute monetary export value, we see Washington dominate
over everybody, to be expected as the largest private producer of Aircraft related utility
and products of a multi-billion dollar titan, Boeing, rests its wings there in Everett.
As we go to the %shares, we see that Boeing plays a huge role as a domestic influence
within Washington as on average 52% of their overall state's total exports pertains to
the industry that they dominate. If we continue down the line of states where aircraft-related
products are king, we look to the complete opposite side of the country to Connecticut, where
~41% of their total state exports are derived from this product. <p>Upon a little examination, this
is not suprising considering, Boeing's peers Barnes Aerospace($750m) & Kaman Aerosystems($620m),
are both headquarted there along with along with an U.S Air Force base held in East Granby, CT.
It is no surprise that these aero-product developers hold the government and the military as
some of their biggest customers, especially when defense magnate Lockheed Martin bought out
Sikorsky for $9 billion in 2015. 2015 is an interesting year, because we see the largest jump
in export value for a number of states. Washington as a standout jumped close to 7%, not to mention
South Carolina who jumped from ~4% to ~12%, tripling their output value in the span of 1 year,
and continueing to grab 5% then 2% dividend increments the years following places such as Kansas,
Kentucky & Arkansas all jumped ~4% with the rest of the top cities all rising at least 1-2%. </p><p> 
The potential causes of higher aircraft production & output is hard to locate as anything from
lowered oil tarrifs in the middle east, to interevening in the Syrian Civil War in the middle of
'15, to lower commercial flight prices across the industry, all could potentially contribute
to these cities' rising trends. One thing that is more certain is that if we look at cities
excluding WA, for high aircraft-related export, we see a pattern of high-government concentration
areas, and large defense/military cities this is seen with: <ul><li> Fort Huachuca - AZ</li><li>Eglin</li><li>Macdill</li><li>Patrick & Tyndall
Air Force Base, FL </li><li>Fort Benning</li><li>Gordan & Stewart</li></ul>These are all in Georgia.
To add on, it is also no surprise that the high aero-production cities are all
near a body of water, as not only is it strategically advantageous military wise, but functionally efficient as
establishing trade and a supply chain to have a naval channel.</p>"

interactvBib <- paste("This repository contains R script that would take in multiple",
                      " parameters to output an interactive map.")

staticBib <- paste("")

pythonBib <- paste("This repository contains python script that processed, cleaned, and ",
                   "outputted the data we are utilizing for a closer examination.")

serverBib <- paste("This repository contains R script that supports the rendering of the",
                   " outputting of texts and maps. Moreover, helps support the creation of the Shiny App.")

uiBib <- paste("This repository contains R script that takes in the user inputs and supports",
               " the display of maps and texts. Moreover, creates the Shiny App.")

txtBib <- paste("This repository consists of variables that store multilined strings for",
                " the purpose of rendering the overview, descriptions, and analysis.")


interactvBib <- "<li>The <a href='https://github.com/carmelitadeleon/GEOG458_Final/blob/master/InteractiveMap.R'>InteractiveMap.R</a>
that would take in multiple parameters to output an interactive map. This script creates a visualization of both the export values and
the export commodities for the United States.</li>"

staticBib <- "<li>The <a href='https://github.com/carmelitadeleon/GEOG458_Final/blob/master/staticMap.R'>staticMap.R</a> creates a visualization
of location quotients for civilian aircrafts.</li>"

pythonBib <- "<li>The <a href='https://github.com/carmelitadeleon/GEOG458_Final/blob/master/Data_Processing.ipynb'> Data_Processing.ipynb </a>
contains python script that processes, cleans, and outputs the data we use to do a closer analysis.</li>"

serverBib <- "<li>The <a href='https://github.com/carmelitadeleon/GEOG458_Final/blob/master/server.R'>
server.R</a> contains R script that supports the rendering of the texts and maps.
Moreover, it supports and is the backend programming of the Shiny App.</li>"

uiBib <- "<li>The <a href='https://github.com/carmelitadeleon/GEOG458_Final/blob/master/ui.R'>ui.R</a>
contains R script that takes in the user inputs and supports the display of maps and texts.
Moreover, it supports and is the frontend programming of the Shiny App.</li>"

txtBib <- "<li>The <a href='https://github.com/carmelitadeleon/GEOG458_Final/blob/master/text.R'>text.R</a> consists
of variables that store multilined strings for the purpose of rendering an overview, descriptions, and analysis.</li>"

timeseriesBib <- "<li>The <a href='https://github.com/carmelitadeleon/GEOG458_Final/blob/master/timeseries.R'>timeseries.R</a>
visualizes a map of the change over time of the absolute and relative percentage of the market value from 2014 to 2017.</li>"

dataBib <- "<li>The <a href='https://github.com/carmelitadeleon/GEOG458_Final/tree/master/data'>data</a> contains all the data
used to investigate and gather results for our research.</li>"
