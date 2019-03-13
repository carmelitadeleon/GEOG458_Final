evOverview <- paste("This map displays the United States export values in",
                    " millions of dollars. It defines which states have a",
                    " higher export value compared to others and which have",
                    " fewer export values. This map provides the ability to",
                    " learn the selected region's corresponding export commodity",
                    " and the most recent year's share value.")

evAnalysis <- paste("Based on the export value map, the top three exporting ",
                    "states are California, Texas, and New York. From these",
                    " three states, New York seems to have a greater 2017 share",
                    "value, 15.4462, compared to the other two states. In second place in Texas",
                    " with a share value of 8.7495 and in last is California with",
                    " a value of 4.1666. Similarly, an interesting behavior our team has",
                    " noticed was that a cluster of states in the midwest and most of the",
                    " western side of the U.S. has a lower export value in contrast to the",
                    " Northeast and Southeast of the U.S.")

prodOverview <- paste("This map displays states that export the same product. ",
                      "The default map shows all 24 export product types as well as their correlating",
                      " shipping states. To understand more in-depth, the user has the ability to view",
                      " the shipping commodity individually. By selecting different commodities through",
                      " the use of the dropbox, the map will likewise reflect only",
                      " the shipping states.")

prodAnalysisP1 <- paste("In reference to the Exporting Products map, our team discerned",
                        " that the top exporting product is civilian aircraft, engines,",
                        " and parts. This product is exported from 16 different states. ")

prodAnalysisP2 <- paste(" reports that the top countries to import this specific product",
                        " is China, France, the United Kingdom, and Canada. From the Export",
                        " Values Map the top three exporters were identified as California, Texas, and New York, ",
                        "however, it was interesting to find that Texas's commodity of oil is only shipped by three",
                        " other states: New Jersey, Mississippi, and Louisana. While New York is the only",
                        " exporter of diamonds and nonindustrial work. Nonindustrial and work is defined as",
                        " unmounted and sawn, cleaved, or bruted diamonds")

lqOverview <- "This map presents a location quotient pertaining to civilian craft exports in the United States. 
                      Location quotient is a valuable way of quantifying how concentrated a particular industry is in a region as compared to the nation. It can be used:
<ul><li>To determine which industries make the regional economy unique.</li>
                    <li>To identify the 'export orientation' of an industry and the most export-oriented industries in the region.</li>
                    <li>To identify emerging export industries beginning to bring money into the region.</li>
                    <li>To find endangered export industries that could erode the region's economic base.</li></ul>
Equation:<br><i><font-size = '2'>LQ = Regional Industry Concentration / National Industry Concentration</font></i><br>

                    As shown on the map, states that have aircrafts as their #1 export are displayed in the top exports map - there are 16 in total (these states are in labels).
                    "
lqAnalysis <- "The state with the highest location quotient value is Washington state. This makes sense because Boeing was first originated here in Washington state. 
                    <br>"

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

evOverview <- "This map displays each US state's export values in millions of dollars.
The gradient color scheme defines how high or low each state's export values are relative
to other states. Clicking on a state reveals a pop up that lists the state's top export
commodity and its share value in 2017 (the % share the top commodity has out of the state's
total exports).
"

evAnalysis <- "Based on the map, the top three exporting states are California,
Texas, and New York. Of these three states, New York has the greatest share value
of 15.4462. In second place is Texas with a share value of 8.7495 and in last is 
California with a value of 4.1666. While these three states play a major role in the US’
exporting economy, the degree to which they rely on their top export as a source of revenue
varies widely. Knowing this information can serve as a basis for additional investigation on
the diversification of state economies, why the state and federal government has political
interests in certain industries, and the perceived importance/relevance of a state on a national
level. <br>Observe that states in the Midwest and most of the Western side of the U.S. have a
lower export value in comparison to the Northeast and Southeast of the U.S - this suggests
that the East Coast is immensely important to the US’ exporting economy."

prodOverview <- "The default map shows all 24 export types and the corresponding state
that has that as their top export type. To understand each of the export types more in-depth
, the user has the ability to select and view the shipping commodity individually. By selecting
different commodities through the use of the dropbox, the map will likewise highlight only the
states that have the selected export type as their top export."

prodAnalysis <- "Based on the map, the top three exporting states are California,
Texas, and New York. Of these three states, New York has the greatest share value
of 15.4462. In second place is Texas with a share value of 8.7495 and in last is 
California with a value of 4.1666. While these three states play a major role in the US’
exporting economy, the degree to which they rely on their top export as a source of revenue
varies widely. Knowing this information can serve as a basis for additional investigation on
the diversification of state economies, why the state and federal government has political
interests in certain industries, and the perceived importance/relevance of a state on a national
level. <br>Observe that states in the Midwest and most of the Western side of the U.S. have a
lower export value in comparison to the Northeast and Southeast of the U.S - this suggests
that the East Coast is immensely important to the US’ exporting economy."

interactvBib <- "<li>The <a href='https://github.com/carmelitadeleon/GEOG458_Final/blob/master/InteractiveMap.R'>InteractiveMap.R</a>
that would take in multiple parameters to output an interactive map. This script creates a visualization of both the export values and
the export commodities for the United States.</li>"

pythonBib <- "<li>The <a href='https://github.com/carmelitadeleon/GEOG458_Final/blob/master/Data_Processing.ipynb'> Data_Processing.ipynb </a>
contains python script that processes, cleans, and outputs the data we use to do a closer analysis."

serverBib <- "<li>The <a href='https://github.com/carmelitadeleon/GEOG458_Final/blob/master/server.R'>
server.R</a> contains R script that supports the rendering of the texts and maps.
Moreover, it supports and is the backend programming of the Shiny App."

uiBib <- "<li>The <a href='https://github.com/carmelitadeleon/GEOG458_Final/blob/master/ui.R'>ui.R</a>
contains R script that takes in the user inputs and supports the display of maps and texts.
Moreover, it supports and is the frontend programming of the Shiny App."

txtBib <- "<li>The <a href='https://github.com/carmelitadeleon/GEOG458_Final/blob/master/text.R'>text.R</a> consists
of variables that store multilined strings for the purpose of rendering an overview, descriptions, and analysis."

timeseriesBib <- "<li>The <a href='https://github.com/carmelitadeleon/GEOG458_Final/blob/master/timeseries.R'>timeseries.R</a>
visualizes a map of the change over time of the absolute and relative percentage of the market value from 2014 to 2017."
