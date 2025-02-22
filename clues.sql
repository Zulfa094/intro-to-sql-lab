-- Clue #1: We recently got word that someone fitting Carmen Sandiego's description has been traveling through Southern Europe. She's most likely traveling someplace where she won't be noticed, so find the least populated country in Southern Europe, and we'll start looking for her there.
 
-- Write SQL query here

 SELECT name FROM countries WHERE region = 'Southern Europe' ORDER BY population DESC;


          name                                                                                                                                                                                                     ------------------------                                                                                                                                                                                            Portugal                                                                                                                                                                                                           Bosnia and Herzegovina                                                                                                                                                                                             Albania                                                                                                                                                                                                            Macedonia                                                                                                                                                                                                          Slovenia                                                                                                                                                                                                           Malta                                                                                                                                                                                                              Andorra                                                                                                                                                                                                            San Marino                                                                                                                                                                                                        (8 rows)   


-- Clue #2: Now that we're here, we have insight that Carmen was seen attending language classes in this country's officially recognized language. Check our databases and find out what language is spoken in this country, so we can call in a translator to work with you.

-- Write SQL query here


SELECT * FROM countrylanguages WHERE countrycode  = 'VAT';


-- Clue #3: We have new news on the classes Carmen attended – our gumshoes tell us she's moved on to a different country, a country where people speak only the language she was learning. Find out which nearby country speaks nothing but that language.

-- Write SQL query here

SELECT * FROM countrylanguages WHERE countrycode  = 'SMR';

-- Clue #4: We're booking the first flight out – maybe we've actually got a chance to catch her this time. There are only two cities she could be flying to in the country. One is named the same as the country – that would be too obvious. We're following our gut on this one; find out what other city in that country she might be flying to.

-- Write SQL query here

SELECT name FROM cities WHERE countrycode = 'SMR';


 id  |    name    | countrycode |     district      | population                                                                                                                                                  ------+------------+-------------+-------------------+------------                                                                                                                                                  3170 | Serravalle | SMR         | Serravalle/Dogano |       4802                                                                                                                                                   3171 | San Marino | SMR         | San Marino        |       2294  



-- Clue #5: Oh no, she pulled a switch – there are two cities with very similar names, but in totally different parts of the globe! She's headed to South America as we speak; go find a city whose name is like the one we were headed to, but doesn't end the same. Find out the city, and do another search for what country it's in. Hurry!

-- Write SQL query here

SELECT * FROM cities WHERE name LIKE 'Serra%';

  id  |    name    | countrycode |     district      | population                                                                                                                                                  ------+------------+-------------+-------------------+------------                                                                                                                                                   265 | Serra      | BRA         | Esp?rito Santo    |     302666                                                                                                                                                   3170 | Serravalle | SMR         | Serravalle/Dogano |       4802   


SELECT * FROM countries WHERE code = 'BRA';


 code |  name  |   continent   |    region     | surfacearea  | indepyear | population | lifeexpectancy |    gnp    |  gnpold   | localname |  governmentform  |        headofstate        | capital | code2       ------+--------+---------------+---------------+--------------+-----------+------------+----------------+-----------+-----------+-----------+------------------+---------------------------+---------+-------       BRA  | Brazil | South America | South America | 8.547403e+06 |      1822 |  170115000 |           62.9 | 776739.00 | 804108.00 | Brasil    | Federal Republic | Fernando Henrique Cardoso |     211 | BR          



-- Clue #6: We're close! Our South American agent says she just got a taxi at the airport, and is headed towards
-- the capital! Look up the country's capital, and get there pronto! Send us the name of where you're headed and we'll
-- follow right behind you!

-- Write SQL query here

SELECT capital FROM countries WHERE name = 'Brazil';


 capital
---------
     211


-- Clue #7: She knows we're on to her – her taxi dropped her off at the international airport, and she beat us to the boarding gates. We have one chance to catch her, we just have to know where she's heading and beat her to the landing dock. Lucky for us, she's getting cocky. She left us a note (below), and I'm sure she thinks she's very clever, but if we can crack it, we can finally put her where she belongs – behind bars.


--               Our playdate of late has been unusually fun –
--               As an agent, I'll say, you've been a joy to outrun.
--               And while the food here is great, and the people – so nice!
--               I need a little more sunshine with my slice of life.
--               So I'm off to add one to the population I find
--               In a city of ninety-one thousand and now, eighty five.


SELECT name FROM cities  WHERE population = 91085;

     name
--------------
 (0 rows)


 SELECT name, population FROM cities WHERE population BETWEEN 91000 AND 92000;



          name          | population                                                                                                                                                                                -----------------------+------------                                                                                                                                                                                Tandil                |      91101                                                                                                                                                                                 S?o Lourenço da Mata  |      91999                                                                                                                                                                                 Santana do Livramento |      91779                                                                                                                                                                                 Votorantim            |      91777                                                                                                                                                                                 Campo Largo           |      91203                                                                                                                                                                                 Gillingham            |      92000                                                                                                                                                                                 Hartlepool            |      92000                                                                                                                                                                                 Halifax               |      91069                                                                                                                                                                                 Woking/Byfleet        |      92000                                                                                                                                                                                 San Pedro de la Paz   |      91684                                                                                                                                                                                 Melipilla             |      91056                                                                                                                                                                                 al-Hawamidiya         |      91700                                                                                                                                                                                 Disuq                 |      91300                                                                                                                                                                                 Batam                 |      91871                                                                                                                                                                                 Padang Sidempuan      |      91200                                                                                                                                                                                 Sawangan              |      91100                                                                                                                                                                                 Semnan                |      91045                                                                                                                                                                                 Barletta              |      91904                                                                                                                                                                                 Arezzo                |      91729                                                                                                                                                                                 Klagenfurt            |      91141                                                                                                                                                                                 Mobara                |      91664                                                                                                                                                                                 Narita                |      91470                                                                                                                                                                                 Kashiwazaki           |      91229                                                                                                                                                                                 Tsuyama               |      91170                                                                                                                                                                                 Nyeri                 |      91258                                                                                                                                                                                 Kaiyuan               |      91999                                                                                                                                                                                 Tumen                 |      91471                                                                                                                                                                                 Putian                |      91030                                                                                                                                                                                 Matamoros             |      91858                                                                                                                                                                                 D?ren                 |      91092                                                                                                                                                                                 Unayza                |      91100                                                                                                                                                                                 Najran                |      91000                                                                                                                                                                                 Idlib                 |      91081                                                                                                                                                                                 Ilan                  |      92000                                                                                                                                                                                 Pardubice             |      91309                                                                                                                                                                                 Kirovo-T?epetsk       |      91600                                                                                                                                                                                 Krasnogorsk           |      91000                                                                                                                                                                                 San Mateo             |      91799                                                                                                                                                                                 Visalia               |      91762                                                                                                                                                                                 Boulder               |      91238                                                                                                                                                                                 Cary                  |      91213                                                                                                                                                                                 Santa Monica          |      91084   

-- We're counting on you, gumshoe. Find out where she's headed, send us the info, and we'll be sure to meet her at the gates with bells on.