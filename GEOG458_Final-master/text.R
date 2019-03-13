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

tempOverview <- paste("This map displays the production value of the United States' top 16 cities for Civilian", 
                      "Aircraft, Engines & Parts, reported in millions of dollars. It shows the values for these 16 cities",
                    " across four years : 2014 - 2017, and shows the change in export income for these cities through these years.",
                    " Comparison amongst the cities is also available, specifically using the %share columns, which show what percent",
                    " of the overall Civilian Aircraft, Engines & Parts market that city takes account of, and allows you to register",
                    " the relative growth of a city to itself and then to others.")

tempAnalysis <- paste(" From just the absolute monetary export value, we see Washington dominate over everybody, to be expected as the",
                        "largest private producer of Aircraft related utility and products of a multi-billion dollar titan, Boeing, rests its",
                        "wings there in Everett. As we go to the %shares, we see that Boeing plays a huge role as a domestic influence within Washington",
                        "as on average 52% of their overall state's total exports pertains to the industry that they dominate. If we continue down the line of states",
                        "where aircraft-related products are king, we look to the complete opposite side of the country to Connecticut, where ~41% of their total state exports are derived",
                        "from this product. Upon a little examination, this is not suprising considering, Boeing's peers Barnes Aerospace($750m) & Kaman Aerosystems($620m), are both headquarted there along with",
                        "along with an U.S Air Force base held in East Granby, CT. It is no surprise that these aero-product developers hold the government and the military as some of their biggest customers, especially",
                        "when defense magnate Lockheed Martin bought out Sikorsky for $9 billion in 2015. 2015 is an interesting year, because we see the largest jump in export value for a number of states. WA, as a standout",
                        "jumped close to 7%, not to mention South Carolina who jumped from ~4% to ~12%, tripling their output value in the span of 1 year, and continueing to grab 5% then 2% dividend increments the years following",
                        "Places such as Kansas, Kentucky & Arkansas all jumped ~4% with the rest of the top cities all rising at least 1-2%. The potential causes of higher aircraft production & output is hard to locate",
                        "as anything from lowered oil tarrifs in the middle east, to interevening in the Syrian Civil War in the middle of '15, to lower commercial flight prices across the industry, all could potentially contribute to",
                        "these cities' rising trends. One thing that is more certain is that if we look at cities excluding WA, for high aircraft-related export, we see a pattern of high-government concentration areas, and large defense/military cities",
                        "this is seen with Fort Huachuca - AZ, Eglin,Macdill,Patrick,& Tyndall Air Force Base, FL (Yes 4 bases), Fort Benning, Gordan & Stewart, all in Georgia. To add on, it is also no surprise that the high aero-production cities",
                        "are all near a body of water, as not only is it strategically advantageous military wise, but functionally efficient as establishing trade and a supply chain to have a naval channel.")

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
