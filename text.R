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
Equation:<br><i><font-size = '2'>LQ = Regional Industry Concentration / National Industry Concentration</font></i><br><br>
As shown on the map, states that have aircrafts as their #1 export are displayed in the top exports map - there are 16 in total (these states are in labels).
                    "
lqAnalysis <- "This map displays the location quotient values for civilian aircraft exports because it appears most frequently as the top exports among the 50 states & 2 regions. According to the Export Type map, there are 16 states in total that have civilian aircrafts as their top export. 

Washington state has the highest location quotient for civilian aircraft exports - this means that the share of civilian aircraft exports in Washington's total exporting economy is much higher than the share of civilian aircraft exports in the US' total exporting economy. Civilian aircraft exports are therefore particularly important to Washington's exports economy. 

Further investigation reveals why civilian aircrafts comprise such a large share of Washington's exports - one of the largest aircraft manufacturers in the world, Boeing, has its 'Boeing Commercial Airplanes (BCA) division, which designs, assembles, markets, and sells jet airliners and business jets' headquartered in Renton, Washington. Interestingly, despite Boeing 'the largest exporter in the United States by dollar value', WA state still ends up with a very high LQ, which confirms that the state's economy relies much more heavily on civilian aircraft exports than the national economy does. "

dataOverview <- "   Data we used comes from the US Census Bureau Foreign Trade/ State Trade Data
and USA Trade Online, which is a trade statistic data repository for the US Census Bureau. The
export data contains for each state, information on the top 25 exports, the value of each of those
exports in millions of USD from 2014 - 2017, as well as the export's percentage share of the state's
total export value from 2014 - 2017. "

dataAnalysis <- "   There are some limitations to the use of this data, which is acknowledged by the Census Bureau, and they include discrepancies between export origin and production origin, non-sampling errors resulting from reporting errors and undocumented shipments, as well as not providing information on a specific company or individual exporting /importing goods due to confidentiality laws. 
	With agricultural crops, for example, the state in which the crop was grown / cultivated is not counted in that state's export if it is shipped to another state for export. In this scenario, the value of the agricultural crop is counted in the exporting state; not in the state in which it was grown. This same concept applies to goods that are produced in one state but stored and exported later by another state.
Some of the consequences for the discrepancy between production and export origin is that coastal states will have their exports overstated while original production states will have their exports understated. Those original production states that have their exports understated are likely to be landlocked states such as the Midwest. 
"

dataProcess <- "    Before joining the data to a shapefile of US States, the data needed to be subsetted using a 'select by' logic to include only the top export for each state to avoid a one-to-many relationship and the problems associated with that. We had to further subset the data to include only those states whose top export is Civilian Aircraft in order to do a meaningful Location Quotient analysis. The location quotient requires 4 values to be calculated, two of which are already present in the original data, while the other two must be appended on and comes from the USA Trade Online website. Another column was added to the dataset that calculates the LQ from the appropriate columns for each row. "

footer_data <- "<br><br><br><br><br><font-size = '0.5'>'Limitations: <a href=' https://www.census.gov/foreign-trade/aip/elom.html'> https://www.census.gov/foreign-trade/aip/elom.html</a></font><br>
Data: https://www.census.gov/foreign-trade/statistics/state/data/exstall.xls<br>
Data: https://https://usatrade.census.gov"

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
