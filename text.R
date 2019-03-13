# This text is for the first tab called Welcome
intro <- "<b>Exploratory research question:</b>This final research project analyzes the US' state-level export data for the purposes of exploring the variety in exported goods, regional trends in exports, and the financial significance of exports on different spatial scales (state vs national). Through this exploration, we aim to answer the following question: <i>Where do the US' exported goods originate from and why do they originate where they do?</i>"
  
intro2 <- "<br><br><b>What is an export? What is the economic significance of exports?</b><br>
<ul><li>'An export is a function of international trade whereby goods produced in one country are shipped to another country for future sale or trade. Exports are a crucial component of a country's economy, as the sale of such goods adds to the producing nation's gross output.'<br></li>
<li>'Most of the largest companies operating in advanced economies derive a substantial portion of their annual revenues from exports to other countries.'</li></ul>"

intro3 <- "<b>Why are we asking this question?</b><br>
<ul><li>According to research giant Statista, as of 2017, the [United States] is the <a href='https://www.statista.com/statistics/264623/leading-export-countries-worldwide/'>world's second largest exporting country</a> (in terms of dollars). The United States exports approximately $1.5 trillion in primarily capital goods (goods or services that are used as inputs for other businesses to produce <a href='https://www.investopedia.com/terms/c/consumer-goods.asp'>consumer goods</a>).</li>
<li>Most people understand that consumer goods are produced where labor is cheaper and raw materials/commodities are exported where natural resources are readily available and easily extractable i.e. third world countries.</li>
<li>However, little is understood about <b>where</b> the US' exported goods originate from and <b>why</b> they originate where they do.</li>
<li>Our project aims to explore these questions and provide the basis for further investigation and research.</li></ul>"

footer_intro <- "<br><br><br><br>Sources:<br><font size = '1'><a href='https://www.investopedia.com/terms/e/export.asp'>https://www.investopedia.com/terms/e/export.asp</a><br><a href='https://www.investopedia.com/terms/c/capitalgoods.asp'>https://www.investopedia.com/terms/c/capitalgoods.asp</a><br><a href='https://www.rferl.org/a/why-are-commodity-exporters-in-trouble/27208195.html'>https://www.rferl.org/a/why-are-commodity-exporters-in-trouble/27208195.html</a></font>"

# This text is for the second tab called Data
dataOverview <- "   Data we used comes from the US Census Bureau Foreign Trade/ State Trade Data
and USA Trade Online, which is a trade statistic data repository for the US Census Bureau. The
export data contains for each state, information on the top 25 exports, the value of each of those
exports in millions of USD from 2014 - 2017, as well as the export's percentage share of the state's
total export value from 2014 - 2017. "

dataAnalysis <- "   There are some limitations to the use of this data, which is acknowledged by the Census Bureau, and they include discrepancies between export origin and production origin, non-sampling errors resulting from reporting errors and undocumented shipments, as well as not providing information on a specific company or individual exporting /importing goods due to confidentiality laws. 
With agricultural crops, for example, the state in which the crop was grown / cultivated is not counted in that state's export if it is shipped to another state for export. In this scenario, the value of the agricultural crop is counted in the exporting state; not in the state in which it was grown. This same concept applies to goods that are produced in one state but stored and exported later by another state.
Some of the consequences for the discrepancy between production and export origin is that coastal states will have their exports overstated while original production states will have their exports understated. Those original production states that have their exports understated are likely to be landlocked states such as the Midwest."

dataProcess <- "    Before joining the data to a shapefile of US States, the data needed to be subsetted using a 'select by' logic to include only the top export for each state to avoid a one-to-many relationship and the problems associated with that. We had to further subset the data to include only those states whose top export is Civilian Aircraft in order to do a meaningful Location Quotient analysis. The location quotient requires 4 values to be calculated, two of which are already present in the original data, while the other two must be appended on and comes from the USA Trade Online website. Another column was added to the dataset that calculates the LQ from the appropriate columns for each row."

footer_data <- "<br><br><br><br>Sources:<br><font size = '1'><a href='https://www.census.gov/foreign-trade/aip/elom.html'>https://www.census.gov/foreign-trade/aip/elom.html</a><br>
<a href='https://www.census.gov/foreign-trade/statistics/state/data/exstall.xls'>https://www.census.gov/foreign-trade/statistics/state/data/exstall.xls</a><br><a href='https://https://usatrade.census.gov'>https://https://usatrade.census.gov</a></font>"

# This text is for the third tab called Export Values
evOverview <- "<p>This map displays each US state's export values in millions of dollars.
The gradient color scheme defines how high or low each state's export values are relative
to other states. Clicking on a state reveals a pop up that lists the state's top export
commodity and its share value in 2017 (the % share the top commodity has out of the state's
total exports).</p>"

evAnalysis <- "<p>Based on the map, the top three exporting states are: <ol><li>New York: 15.4462 share value</li><li>
Texas: 8.7495 share value</li><li>California: 4.1666 share value</ol> While these three states play a major role in the US\'
exporting economy, the degree to which they rely on their top export as a source of revenue
varies widely. With this information in mind, it can serve as a basis for additional investigation on
the diversification of state economies. For instance, why the state and federal government has political
interests in certain industries, and the perceived importance/relevance of a state on a national
level.</p><p>In reference to the map, we can observe that states in the Midwest and most of the Western side of the U.S. have a
lower export value in comparison to the Northeast and Southeast of the U.S - which suggests
that the East Coast is extremely essential to the US\' exporting economy.</p>"

# This text is for the fourth tab called Export Type
prodOverview <- "<p>The default map shows all 24 export types and the corresponding state
that has that as their top export type. To understand each of the export types more in-depth
, the user has the ability to select and view the shipping commodity individually. By selecting
different commodities through the use of the dropbox, the map will likewise highlight only the
states that have the selected export type as their top export.</p>"

prodAnalysis <- "<p>The most common top export type is 'civilian aircrafts, engines,
and parts'. These products are exported from 16 different states across the US, making 
it perhaps the most important export for state economies.</p><p>Recall from the Export Values
Map the top three exporting states were identified as:<ul><li>California: Civilian aircrafts
</li><li>Texas: Petroleum</li><li>New York: Diamonds</li></ul>
Although California\'s top export is civilian aircrafts, it has a low share value of 4.1666.
This suggests that California\'s exports are well diversified and aircrafts may not be what the state\'s
export economy is commonly associated with. Similarly, New York\'s top export is cut and shaped diamonds
and has a very high share value (15.4462). Taking into account of the price and markup of non-industrial diamonds,
we can deduce that this is the most expensive and popular good that NY exports. Texas\'
top export is petroleum, which also has a high share value (8.7495). This means that Texas
relies more heavily on petroleum in its exporting economy. Nonetheless, due
to the unpredictability/instability of oil markets, the state likely invests substantial
time and effort in protecting its share in the oil markets.</p>"

# footer for the export commodity map
prodfooter_intro <- "<br><br><br><br>Sources:<br><a href='https://www.foreign-trade.com/reference/hscode.htm'>https://www.foreign-trade.com/reference/hscode.htm</a>"

# This text is for the fifth tab called LQ
lqOverview <- "This map presents a location quotient pertaining to civilian aircraft exports in the United States. 
                      Location quotient is a valuable way of quantifying how concentrated a particular industry is in a region as compared to the nation. It can be used:
<ul><li>To determine which industries make the regional economy unique.</li>
<li>To identify the 'export orientation' of an industry and the most export-oriented industries in the region.</li>
<li>To identify emerging export industries beginning to bring money into the region.</li>
<li>To find endangered export industries that could erode the region's economic base.</li></ul>
Equation:<br><i><font-size = '2'>LQ = Regional Industry Concentration / National Industry Concentration</font></i><br><br>
As shown on the map, states that have aircrafts as their #1 export are displayed in the top exports map - there are 16 in total (these states are in labels)."

lqAnalysis <- "This map displays the location quotient values for civilian aircraft exports because it appears most frequently as the top exports among the 50 states & 2 regions. According to the Export Type map, there are 16 states in total that have civilian aircrafts as their top export. 

Washington state has the highest location quotient for civilian aircraft exports - this means that the share of civilian aircraft exports in Washington's total exporting economy is much higher than the share of civilian aircraft exports in the US' total exporting economy. Civilian aircraft exports are therefore particularly important to Washington's exports economy. 

Further investigation reveals why civilian aircrafts comprise such a large share of Washington's exports - one of the largest aircraft manufacturers in the world, Boeing, has its 'Boeing Commercial Airplanes (BCA) division, which designs, assembles, markets, and sells jet airliners and business jets' headquartered in Renton, Washington. Interestingly, despite Boeing 'the largest exporter in the United States by dollar value', WA state still ends up with a very high LQ, which confirms that the state's economy relies much more heavily on civilian aircraft exports than the national economy does. "

footer_lq <- "<br><br>Sources:<br><font size='1'><a href='https://www.economicmodeling.com/2011/10/14/understanding-location-quotient-2/'>https://www.economicmodeling.com/2011/10/14/understanding-location-quotient-2/</a><br><a href='https://en.wikipedia.org/wiki/Boeing_Commercial_Airplanes'>https://en.wikipedia.org/wiki/Boeing_Commercial_Airplanes</a><br><a href='https://usatoday30.usatoday.com/money/industries/manufacturing/2009-03-25-boeing-recession_N.htm'>https://usatoday30.usatoday.com/money/industries/manufacturing/2009-03-25-boeing-recession_N.htm</a></font>"

# This text is for the sixth tab called Temporal
tempOverview <- "<p>This map displays the production value of the United States' top 16
states for Civilian Aircraft, Engines & Parts, reported in millions of dollars. It
shows the values for these 16 states across four years : 2014 - 2017, and shows the
change in export income for these states through these years. Comparison amongst the
states is also available, specifically using the %share columns, which show what percent
of the overall Civilian Aircraft, Engines & Parts market that city takes account of, and 
allows you to register the relative growth of a city to itself and then to others.</p>"

tempAnalysis <- "<p>From just the absolute monetary export value, it is no surprise that Boeing rules at the top. Even as we go to the %shares, we see that Boeing plays a huge role as a domestic influence within WA,  as on average 52% of their overall state's total exports pertains to the industry that they dominate. If we continue down the line of aero-centric states, we look to the complete opposite side of the country, to Connecticut, where ~41% of their total state exports are derived. Upon further examination, this is not surprising considering, Boeing's peers Barnes Aerospace($750m) & Kaman Aerosystems($620m), are both headquartered there along with, an U.S Air Force base held in East Granby, CT.<br><br>
  It is no surprise that these aero-product developers hold the government and the military as some of their biggest customers, especially,when defense magnate Lockheed Martin bought out Sikorsky for $9 billion in 2015. 2015 is an interesting year, because we see the largest jump in export value for a number of states. WA, as a standout,jumped close to 7%, not to mention South Carolina who jumped from ~4% to ~12%, tripling their output value in the span of 1 year, and continuing to grab 5% then 2% dividend increments the years following,Places such as Kansas, Kentucky & Arkansas all jumped ~4% with the rest of the top states all rising at least 1-2%. The potential causes of higher aircraft production & output is hard to locate, as anything from aging jet-engines, to a global rising middle class, to a healthy world economic growth spurt, all potentially contribute to the effect.<br><br>
  One thing that is more certain is that if we look at cities excluding WA, for high aircraft-related export, we see a pattern of large defense/military cities. This is seen with Fort Huachuca,AZ | Eglin,Macdill,Patrick,& Tyndall Air Force Base, FL (Yes 4 bases), Fort Benning, Gordan & Stewart, all in Georgia. Furthermore, just last year, Congress allotted an extra $510m to give the Air Force 3 fresh KC-46, $2.9b for 20 join strike fighters for the Navy & Marine Corps, 9 extra MQ-1 Gray Eagle's for the Army, and many many more. So when you look at it that way, it makes a bit more sense why we're seeing so many new aircrafts flying out in the sky.</p>"

footer_temp <- "<br>Sources:<br><font size ='1'>Aircraft Market Influences: <a href ='https://www.sherpareport.com/aircraft/factors-aircraft-demand.html'>https://www.sherpareport.com/aircraft/factors-aircraft-demand.html</a><br>Military Aircraft Manufacturing: <a href='https://www.statista.com/topics/1546/military-aircraft-manufacturing/'>https://www.statista.com/topics/1546/military-aircraft-manufacturing/</a><br>Growing Aircraft Market: <a href='https://www.radical-departures.net/articles/aircraft-market-forecast/'>https://www.radical-departures.net/articles/aircraft-market-forecast/</a><br>
Military Purchases:<a href='https://www.defensenews.com/air/2018/03/22/the-omnibus-spending-bill-would-add-an-extra-143-aircraft-for-the-military/'>https://www.defensenews.com/air/2018/03/22/the-omnibus-spending-bill-would-add-an-extra-143-aircraft-for-the-military/</a></font>"


# This text is for the seventh tab called Bibliography
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
