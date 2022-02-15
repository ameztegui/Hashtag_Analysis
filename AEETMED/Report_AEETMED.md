---
title: 'Congresos cient?ficos y Twitter (I): un an?lisis de #AEETMED'
output:
  html_document: default
---







La semana pasada se celebraron a la vez dos congresos a los que no me hubiera importado para nada asistir. Por un lado, se celebr? en Sevilla, del 31 de enero al 4 de febrero, el [Congreso de la Asociaci?n Espa?ola de Ecolog?a Terrestre (AEET)](http://www.medecos-aeet-meeting2017.es/), que este a?o iba en conjunto con MEDECOS, el congreso que organiza la International Society of Mediterranean Ecology. Por otro lado, la Fundaci?n Pau Costa organizaba en Barcelona ICOPFIRES, el [Congreso Internacional sobre Quemas Prescritas](http://www.paucostafoundation.org/ICoPFires/), que este a?o se hizo coincidir adem?s con la [Wildland Fire Safety Summit](http://www.paucostafoundation.org/ICoPFires/wildland-fire-safety-summit/).

Como os dec?a, hubiera encontrado cualquiera de los dos muy interesante, porque adem?s en cualquiera de ellos ten?a numerosos colegas - aunque m?s en Sevilla, donde adem?s el lab estuvo representado por [este p?ster](https://twitter.com/ctforestal/status/826833160134606850). Por suerte, los que nos tuvimos que quedar en casa contamos hoy en d?a con herramientas para ir siguiendo los momentos m?s interesantes de los congresos, y una de las m?s ?giles en este sentido es sin duda twitter. Los dos congresos tuvieron la buena iniciativa de definir con antelaci?n un hashtag claro, [#AEETMED](https://twitter.com/search?q=%23AEETMED&src=tyah) para el de Sevilla, [#iCOPFires](https://twitter.com/search?q=%23icopfires&src=typd) para el de Barcelona, y as? muchos pudimos seguir desde nuestro ordenador o m?vil los momentos m?s destacados.

Pero ?cu?l fue la repercusi?n de estos eventos en twitter? ?Cu?ndo y qui?n tuite? desde los congresos? ?Qui?nes fueron los tuiteros m?s activos? Es lo que me pretendo analizar hoy, aprovechando que se puede extraer f?cilmente la informaci?n a partir de la API de Twitter. Antes de meternos en harina, quiero dejar claro que el c?digo que he utilizado para descargar los tuits y analizar las tendencias no es originalmente m?o, sino una adaptaci?n de diversas fuentes, en concreto [?sta](https://github.com/fmichonneau/evol2015-tweets), [?sta](https://github.com/jlehtoma/iccb2015-tweets/blob/gh-pages/index.Rmd), [?sta](http://rollinsonecology.com) y [?sta](https://github.com/khturner/HashtagISME16) Los tweets que incluian el hashtag #AEETMED o #ICOPFires se recopilaron de la API de RTwitter mediante el paquete [twitteR](https://cran.r-project.org/web/packages/twitteR/index.html) y la entrada la he escrito utilizando RMarkdown, y el codigo fuente y los datos 
est?n [disponibles en mi GitHub](https://github.com/ameztegui/Hashtag_Analysis). Dicho esto, al l?o.

Seg?n los organizadores, el iCOPFires acogi? en total a unos 500 asistentes, mientras que AEETMED reuni? a unos 600.  En cuanto a n?mero de tuits generados la cosa anduvo bastante pareja, como se ve en esta tabla.




|Descripcion | AEETMED | iCOPFires
|------------|---|---|
|Numero total de tweets generados | 1282|1229|
|Numero total de tweets originales (sin contar retweets): | 486| 263|
|Numeros de usuarios que han tuiteado: | 254|288|


A partir de aqu?, como no quiero que esto se convierta en una competicion entre ambos congresos, los analizar? por separado, en dos entradas distintas. Hoy nos centraremos en el congreso de la AEET, y ma?ana o pasado publicar? el an?lisis de ICOPFires.


#### Actividad durante la semana

Como la API permite importar la fecha y hora del tuit, podemos ver en qu? momentos se produjo m?s actividad.

![plot of chunk unnamed-chunk-3](images/unnamed-chunk-3-1.png)

Vemos que en el grueso de actividad se produjo el jueves y el viernes, y adem?s parece que la proporci?n de retuits fue m?s alta por la tarde, veamos si es as?:


![plot of chunk unnamed-chunk-4](images/unnamed-chunk-4-1.png)

Efectivamente, el ratio retweets/tweets originales es m?s alto por la tarde, y es que no ?ramos pocos los que consult?bamos los **highlights** de la jornada al llegar a casa por la tarde, retuiteando lo que nos parecia mas interesante. De entre los 1282 tuits con la etiqueta #AEETMED que se generaron durante la semana pasada, estos fueron los 3 m?s retuiteados:

<blockquote class="twitter-tweet" lang="en"> 
<p lang="en" dir="ltr">Heres: Widespread tree declines across #Spain linkes to #climatechange #AEETMED #forests https://t.co/SBToLZrxCO</p>&mdash; <a href="https://twitter.com/JCSvenning">JCSvenning</a>&nbsp;|&nbsp;<a href="https://twitter.com/JCSvenning/status/827075338693914624"> 2017-02-02</a> &nbsp;|&nbsp;16 retweets, 12 favorites. </blockquote>
 
<blockquote class="twitter-tweet" lang="en"> 
<p lang="en" dir="ltr">Genial encontrar gente con ideas interesantes e ilusionantes en la Asamblea del grupo de Ecoinformática<U+0085> https://t.co/q0Goys6fy0</p>&mdash; <a href="https://twitter.com/ajpelu">ajpelu</a>&nbsp;|&nbsp;<a href="https://twitter.com/ajpelu/status/827153749382721536"> 2017-02-02</a> &nbsp;|&nbsp;14 retweets, 5 favorites. </blockquote>
 
<blockquote class="twitter-tweet" lang="en"> 
<p lang="en" dir="ltr">En unas horas arranca el XIV #Congreso Internacional de Ecosistemas Mediterráneos #MEDECOS #AEETMED<U+0085> https://t.co/GmfsNQImpj</p>&mdash; <a href="https://twitter.com/InvestigaUS">InvestigaUS</a>&nbsp;|&nbsp;<a href="https://twitter.com/InvestigaUS/status/826338744500420608"> 2017-01-31</a> &nbsp;|&nbsp;12 retweets, 17 favorites. </blockquote>
 

Y estos los 3 m?s marcados como favoritos:

<blockquote class="twitter-tweet" lang="en"> 
<p lang="en" dir="ltr">What a great #AEETMED A pleasure presenting our work funded by @ERC_Research &amp; pleased to see so much interest on<U+0085> https://t.co/Cn0M1PrO68</p>&mdash; <a href="https://twitter.com/ftmaestre">ftmaestre</a>&nbsp;|&nbsp;<a href="https://twitter.com/ftmaestre/status/827524714411212800"> 2017-02-03</a> &nbsp;|&nbsp;6 retweets, 19 favorites. </blockquote>
 
<blockquote class="twitter-tweet" lang="en"> 
<p lang="en" dir="ltr">.@AnnaTraveset talks on seed dispersal disruptions in Mediterranean ecosystems #AEETMED https://t.co/PCBgw6E8vI</p>&mdash; <a href="https://twitter.com/JCSvenning">JCSvenning</a>&nbsp;|&nbsp;<a href="https://twitter.com/JCSvenning/status/827148699721691136"> 2017-02-02</a> &nbsp;|&nbsp;6 retweets, 18 favorites. </blockquote>
 
<blockquote class="twitter-tweet" lang="en"> 
<p lang="en" dir="ltr">Biodiversity, interaction networks, phylogenetics. Tomorrow, session 4 #medecos #AEETMED 9:00-13:00, with  invited talk by Miguel Verdú <ed><U+00A0><U+00BD><ed><U+00B1><U+008D><ed><U+00A0><U+00BC><ed><U+00BF><U+00BC><ed><U+00A0><U+00BE><ed><U+00B4><U+0097><ed><U+00A0><U+00BE><ed><U+00B4><U+0097></p>&mdash; <a href="https://twitter.com/pedro_jordano">pedro_jordano</a>&nbsp;|&nbsp;<a href="https://twitter.com/pedro_jordano/status/826835680554807296"> 2017-02-01</a> &nbsp;|&nbsp;8 retweets, 18 favorites. </blockquote>
 

#### Tuiteros m?s activos

Veamos quienes fueron los m?s activos de entre los 288 usuarios que tuitearon sobre el congreso utilizando la etiqueta oficial. 

![plot of chunk unnamed-chunk-5](images/unnamed-chunk-5-1.png)![plot of chunk unnamed-chunk-5](images/unnamed-chunk-5-2.png)

Si consideramos todos los tuits, las m?s prol?ficas fueron la cuenta de la [AEET](http://twitter.com/_AEET_) y la de la paleont?loga [AR G?mez-Cano](http://twitter.com/argcPALEO). En cambio, si s?lo consideramos los tuits originales, gana por goleada la paleoec?loga [Graciela Gil Romera](http://twitter.com/gilromera), con m?s de 40 tuits durante el congreso. Parece que lo *paleo* estuvo muy activo.


### Usuarios m?s populares

Podemos ver qu? usuarios tuvieron m?s repercusi?n analizando la media de RT y FAVs que recibi? cada usuario. (Nota: las figuras de abajo solo incluyen usuarios que han tuiteado mas de 3 veces, y no incluyen retuits).







![plot of chunk unnamed-chunk-8](images/unnamed-chunk-8-1.png)

![plot of chunk unnamed-chunk-9](images/unnamed-chunk-9-1.png)
Parece que no hay grandes "superestrellas" que concentren la mayor parte de los RT y FAVs, sino que hay un gradiente bastante suave, aunque destacan perfiles de ec?logos muy reconocidos como [JC Svenning](http://twitter.com/JCSvenning), [Fernando Maestre](http://twitter.com/Maestrelab) o [Pedro Jordano](http://twitter.com/pedro_jordano), entre otros.

De hecho podr?amos juntar RT + Favs como un indicador del impacto, y ver si los que m?s impacto tuvieron son tambi?n los que m?s tuitearon
![plot of chunk unnamed-chunk-10](images/unnamed-chunk-10-1.png)

En l?neas generales vemos que no es as?, y que no parece haber relaci?n entre el n?mero de tuits y el impacto medio de cada tuit.


### Word cloud

Estas fueron las 50 palabras m?s frecuentes en los tweets etiquetados con #AEETMED

![plot of chunk word-cloud](images/word-cloud-1.png)
 Parece que efectivamente, en Sevilla hubo "grandes charlas" ;-), pero se voislumbra por aqu? algunos de los temas estrella que ya ha definido Ignasi Bartomeus en el [blog de Journal of Ecology](https://jecologyblog.wordpress.com/2017/02/07/aaet-medecos/): sequ?a, fuego, e interacciones entre especies.

### Menciones: twitter como plataforma de conversaci?n

Una de las cosas buenas de twitter es cuando se montan debates entre varios usuarios sobre un tema concreto, a veces muy interesantes a pesar de lo limitado de los 140 caracteres, y de hecho no ser?a la primera vez que una de esas conversaciones deriva en un post de Forestalia. Usando las capacidades de las expresiones regulares (regexp) podemos identificar los usuarios que fueron mencionados m?s a menudo durante el congreso. 

![plot of chunk unnamed-chunk-11](images/unnamed-chunk-11-1.png)

Pues aparte de los organizadores, y la Universidad de Sevilla, instituci?n donde se celebr?, parece que los usuarios m?s mencionados fueron F.Maestre y el grupo de paleocolog?a y vertebrados de UCM y CSIC. ??Otra vez la *paleo*!


### Twitter como red social

Lo que hace ?nicas a las menciones de twitter respecto a otras redes sociales como facebook, es que se pueden rastrear las menciones de ida y vuelta. Por lo tanto, una vez extra?das las menciones podemos explorar las din?micas de las conversaciones mediante un grafo, representando cada usuario como un v?rtice y las menciones como las aristas entre los v?rtices. Aqu? quiero mencionar expresamente que esta parte del c?digo est? tomada del an?lisis que hizo [Keith H.Turner](http://twitter.com/kay_aych) para el [ISME2016](https://github.com/khturner/HashtagISME16). La pena es que blogger no me permite insertar un gr?fico interactivo como el que generan estas funciones, as? que los que quer?is verlo tendr?is que ir a GitHub.

![plot of chunk unnamed-chunk-12](images/unnamed-chunk-12-1.png)

La verdad es que hay mucha informaci?n en este gr?fico. Destaca que una buena parte de las conversaciones pas? por la cuenta oficial de la AEET, y tambi?n llaman la atenci?n unas pocas cuentas que parecen tener una importante red de contactos en twitter (F.Maestre, JC. Svenning, P. Jordano, G. Gil-Romera) frente a las cuentas de los exteriores, que difundieron informaci?n sobre el congreso (por eso aparecen en azul) a numerosas personas que s?lo recibieron menciones, pero no tuitearon (en amarillo).

Incluso podr?amos aplicar an?lisis de cluster de grafos para ver en cuantos grupos se puede clasificar la tuitesfera del AEETMED.

![plot of chunk unnamed-chunk-13](images/unnamed-chunk-13-1.png)

Usando los par?metros por defecto de la funci?n random walk, el grafo de menciones se divide en 23 grupos distintos, algunos muy numerosos, otros formados s?lo por dos usuarios. Es un gr?fico superchulo, donde se puede ver como los colegas de la misma instituci?n tienden a agruparse juntos, mientras que hay individuos que aparecen como puentes entre dos grupos m?s amplios. Os animo a que os busqu?is y valoreis si el algortimos os ha clasificado bien u os habeis llevado una sorpresa. La verdad es que ver los datos asi hace valorar el paper de tuiter como difusor de la actividad en una conferencia!.



NOTA FINAL:
El codigo para generar el documento fue desarrollado originalmente por [Francois Michonneau](https://github.com/fmichonneau) ([fmic_](https://twitter.com/fmic_) en Twitter) para el congreso de Evoluci?n de 2015, y se puede encontrar [aqu?](https://github.com/fmichonneau/evol2015-tweets). El codigo ha sido posteriormente  [modificado](https://github.com/jlehtoma/iccb2015-tweets/blob/gh-pages/index.Rmd) para el congreso ICCB-ECCB 2015 por Joona Lehtomaki ([jlehtoma](https://twitter.com/jlehtoma) en Twitter), y por [Emily J. Rollinson](http://rollinsonecology.com) ([ejrollinson](https://twitter.com/ejrollinson) en Twitter), para los congresos de la Ecological Society of America de 2015 (Baltimore, #ESA100), y de 2016 (Fort Lauderdale, Florida, #ESA2016). Tambi?n he incorporado algunos elementos del an?lisis de redes que hizo [Keith H.Turner](http://twitter.com/kay_aych) para el [ISME2016](https://github.com/khturner/HashtagISME16).

Los tweets que incluian el hashtag #AEETMED se recopilaron mediante el paquete [twitteR](https://cran.r-project.org/web/packages/twitteR/index.html) a partir de la API de Twitter. El documento se gener? mediante RMarkdown, y el c?digo fuente y los datos est?n
 [disponibles en mi GitHub](https://github.com/ameztegui/Hashtag_Analysis). El documento, as? como el c?digo asociado, tienen una [licencia CC0](https://creativecommons.org/choose/zero/?lang=es_ES).

