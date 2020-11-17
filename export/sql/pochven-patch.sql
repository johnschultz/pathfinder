# Add the new Pochven region
INSERT INTO `region` VALUES
(10000070,'2020-10-23 00:00:00','2020-10-23 00:00:00','Pochven','');

# Add the new Pochven constellations
INSERT INTO `constellation` VALUES
(20000787, '2019-01-01 07:10:54', '2019-01-01 07:10:54', 'Perun', 10000070, -1.62832101952226e17, 5.06566811280612e16, 1.03886924951039e17),
(20000789, '2019-01-01 07:10:54', '2019-01-01 07:10:54', 'Veles', 10000070, -1.6393375393592e17, 5.63776884101948e16, 7.13269711209869e16),
(20000788, '2019-01-01 07:10:54', '2019-01-01 07:10:54', 'Krai Svarog', 10000070, -1.09497929445299e17, 4.56773536796065e16, 2.0441554643762e16);

# Add the new faction defintions
INSERT INTO `faction` VALUES
(500024, '2019-01-01 07:58:30', '2019-01-01 07:58:30', 'Drifters', 'Emerging from the ruins of the Sleeper civilization spread throughout Anoikis – otherwise known as \'W-space\' – the Drifters represent a tremendous challenge and perhaps a dire threat to the empires and capsuleers alike. Seemingly the inheritors of a legacy left behind by some of the most ancient Jove, the Drifters are unafraid to wield tremendous power in response to any who get in their way. In this regard, the Drifters are a very different conundrum than the relatively benign presence that was the Jove Empire.', 0, 0, 0),
(500025, '2019-01-01 07:58:30', '2019-01-01 07:58:30', 'Rogue Drones', 'While rogues drones come in all shapes, sizes and even personalities, the signs are that they do not exist in a unified collective. Much like their accidental creators, the rogue drones can be found co-operating locally, and even in relatively large and widespread \'hive minds\', but they will readily attack and recycle drones from competing hives.', 0, 0, 0),
(500027, '2019-01-01 07:58:30', '2019-01-01 07:58:30', 'EDENCOM', 'EDENCOM is the New Eden Common Defense Initiative, a semi-autonomous military command set up by CONCORD and the \"Big 4\" core empires to aggressively prosecute the war against the Triglavian Collective\'s invasion forces in YC122. With access to massive financial resources from the New Eden Defense Fund, EDENCOM organizes the fortification of threatened systems and the defense of New Eden by fleets and troops drawn from CONCORD and the empires.', 5, 0, 0);

# Delete and re-add the Pochven systems with the appropriate security and marked as 'T' class
DELETE FROM `system` WHERE id in (30000157,30000192,30001372,30001445,30002079,30002737,30005005,30010141,30031392,30000021,30001413,30002225,30002411,30002770,30003495,30003504,30040141,30045328,30000206,30001381,30002652,30002702,30002797,30003046,30005029,30020141,30045329);
INSERT INTO `system` VALUES
(30000021, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Kuharah', 20000788, 40001414, 'T', -1.0, -1.000000, 'B3', NULL, -7.43798108537478e16, 3.25389695310869e16, -1.00531188490154e17),
(30000157, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Otela', 20000787, 40009947, 'T', -1.0, -1.000000, 'C', NULL, -8.96204009939061e16, 7.50489043121383e16, 9.35019741389732e16),
(30000192, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Otanuomi', 20000787, 40012114, 'T', -1.0, -1.000000, 'C1', NULL, -8.73732576844063e16, 7.5689721980109e16, 1.42703848208881e17),
(30000206, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Wirashoda', 20000789, 40013086, 'T', -1.0, -1.000000, 'C', NULL, -1.06151172886939e17, 7.83563820339954e16, 1.41377176585695e17),
(30001372, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Kino', 20000787, 40087443, 'T', -1.0, -1.000000, 'C', NULL, -1.60915471526408e17, 6.7043767919059e16, 1.25107505898049e17),
(30001381, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Arvasaras', 20000789, 40088050, 'T', -1.0, -1.000000, 'C', NULL, -1.48590517644254e17, 6.94615716936862e16, 1.52406151534013e17),
(30001413, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Nani', 20000788, 40089958, 'T', -1.0, -1.000000, 'B', NULL, -1.48065696202304e17, 7.77917922204687e16, 1.29656645031242e17),
(30001445, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Nalvula', 20000787, 40091964, 'T', -1.0, -1.000000, 'C1', NULL, -1.46377524733192e17, 9.13379356036351e16, 1.64368663896425e17),
(30002079, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Krirald', 20000787, 40132732, 'T', -1.0, -1.000000, 'E1', NULL, -1.43041070520313e17, 2.01540335132781e15, 4.34051860056528e16),
(30002225, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Harva', 20000788, 40141854, 'T', -1.0, -1.000000, 'B', NULL, -1.64523098443557e17, 7.11904961706963e16, -9.87386236225013e16),
(30002411, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Skarkon', 20000788, 40153348, 'T', -1.0, -1.000000, 'E1', NULL, -6.53278245121052e15, -4.52259854437016e15, 8.86713130833136e15),
(30002652, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Ala', 20000789, 40168849, 'T', -1.0, -1.000000, 'D1', NULL, -1.74797042068211e17, 3.57240817881842e16, -9.7522092920391e15),
(30002702, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Archee', 20000789, 40171916, 'T', -1.0, -1.000000, 'D2', NULL, -1.76317610266812e17, 5.66557757073429e16, -1.00117920020392e15),
(30002737, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Konola', 20000787, 40173750, 'T', -1.0, -1.000000, 'C', NULL, -1.31635661363785e17, 9.92979589047945e16, 1.4699167278862e17),
(30002770, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Tunudan', 20000788, 40175854, 'T', -1.0, -1.000000, 'C1', NULL, -1.74269057189913e17, 7.78799008426401e16, 9.08094631370572e16),
(30002797, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Kaunokka', 20000789, 40177483, 'T', -1.0, -1.000000, 'C', NULL, -1.75536874183723e17, 8.08258734880394e16, 1.05495547031891e17),
(30003046, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Angymonne', 20000789, 40193536, 'T', -1.0, -1.000000, 'D1', NULL, -2.13411461260432e17, 1.47965253096225e16, 2.4458159382976e16),
(30003495, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Raravoss', 20000788, 40221765, 'T', -1.0, -1.000000, 'B1', NULL, -1.70692078821188e17, 4.83773767209905e16, -7.42121487288746e16),
(30003504, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Niarja', 20000788, 40222373, 'T', -1.0, -1.000000, 'B1', NULL, -1.84441638429595e17, 4.93524100744771e16, -2.47548529253837e16),
(30005005, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Ignebaener', 20000787, 40317021, 'T', -1.0, -1.000000, 'D1', NULL, -2.38290946220046e17, 5.55893507074342e16, 4.38587565621402e16),
(30005029, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Vale', 20000789, 40318635, 'T', -1.0, -1.000000, 'D1', NULL, -2.21716334984902e17, 3.93332802399994e16, 4.93277604430606e16),
(30010141, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Sakenta', 20000787, 40342201, 'T', -1.0, -1.000000, 'A', NULL, -1.40996816819161e17, 6.3157462493689e16, 1.13295800169879e17),
(30020141, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Senda', 20000789, 40342401, 'T', -1.0, -1.000000, 'A', NULL, -1.25231920215349e17, 7.19353118887792e16, 9.25731715345483e16),
(30031392, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Komo', 20000787, 40341801, 'T', -1.0, -1.000000, 'A', NULL, -1.32977161365216e17, 9.87062324799372e16, 1.30925577274748e17),
(30040141, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Urhinichi', 20000788, 40342801, 'T', -1.0, -1.000000, 'A', NULL, -1.38550934148756e17, 7.80775920633859e16, 8.31939874802183e16),
(30045328, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Ahtila', 20000788, 40348813, 'T', -1.0, -1.000000, NULL, NULL, -2.12463076439387e17, 9.58773059035831e16, 1.41414297777678e17),
(30045329, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 'Ichoriya', 20000789, 40348840, 'T', -1.0, -1.000000, NULL, NULL, -2.19761023509134e17, 9.7958851510767e16, 1.41316657360649e17);

# Delete the stargates that go to/from Pochven systems
DELETE FROM `stargate` WHERE id in (50000299,50000323,50000425,50001061,50001093,50001094,50001724,50001725,50001982,50002223,50002428,50002435,50002679,50002715,50002743,50002744,50002768,50002775,50003007,50003008,50003355,50003738,50004068,50004069,50004148,50004326,50004353,50004604,50004605,50004606,50004787,50005024,50005218,50005383,50005688,50006005,50006006,50006082,50006242,50006780,50006781,50006782,50006783,50006784,50006785,50006997,50007219,50007720,50007831,50007832,50007835,50008033,50008034,50008597,50008733,50008734,50008735,50008736,50009271,50009281,50009282,50009283,50009284,50009285,50009381,50009417,50009447,50009648,50009666,50009690,50009691,50009692,50009735,50009746,50009747,50009748,50009749,50009895,50010118,50010471,50010576,50010655,50010691,50010719,50010721,50010757,50010822,50010823,50010850,50011096,50011326,50011907,50012045,50012690,50012785,50013091,50013401,50013472,50013693,50013694,50013695,50013696,50013709,50013710,50014055,50014056,50014065,50014066,50014107,50014108,50014109,50014110,50014113,50014114,50014213,50014214,50014287,50014288,50016295,50016296,50016299,50016300,50016301,50016302,50016307,50016308,50016317,50016318,50016480,50016481);

# Add the new conduit stargate type
INSERT INTO `type` VALUES
(56317,'2020-10-23 00:00:00','2020-10-23 00:00:00','Pochven Conduit Gate (Interstellar)','This Triglavian structure is designed to function as a permanent transfer conduit between star systems in the constructed Triglavian region of Pochven. Triglavian Space is made up of systems \"woven\" together by the Triglavians into an artificial arrangement defined by the Pochven Conduit Loop.\r\n\r\nAccess to Pochven Conduit Gates is determined by the level of standing a capsuleer has with the Triglavian Collective and requirements may vary depending on the type of system into which the Conduit Gate leads.\r\n\r\nAs with most Triglavian technology, the power for this device is drawn from harnessed space-time singularities. As the conduit clearly uses an array of three such singularities, the energy requirements must be considerable.',0,30000000,30000000,0,300000000000,10,0,30000000,1,24656);

# Add the new inter-Pochven conduit gates
INSERT INTO `stargate` VALUES
(50016504,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Tunudan)',30000021,56317,30002770,-120679911185.506,-8208806312.39407,-25334939508.729),
(50016506,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Ahtila)',30000021,56317,30045328,25691798724.6383,1743913858.25688,80759612685.887),
(50016518,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Nalvula)',30000157,56317,30001445,-182160561690.696,2147946726.54473,-345063156566.141),
(50016520,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Kino)',30000157,56317,30001372,-116619685499.206,1375696452.77168,-143656149644.895),
(50016522,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Ignebaener)',30000157,56317,30005005,27653905828.6961,-329241484.091217,66844787079.4121),
(50016508,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Urhinichi)',30000192,56317,30040141,6820391198620.59,-389751258291.819,5884231218155.93),
(50016510,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Krirald)',30000192,56317,30002079,-3044484958639.29,173981469885.497,4202630042781.55),
(50016544,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Ala)',30000206,56317,30002652,-33672589988.1116,-1533718190.00042,-26608090792.4362),
(50016546,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Senda)',30000206,56317,30020141,-16854838872.1837,-766560179.830146,59946195185.977),
(50016516,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Nalvula)',30001372,56317,30001445,-1575690690.04211,-277788063.164062,369657.859375),
(50016521,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Otela)',30001372,56317,30000157,-1575476341.75,-277788063.164062,-196.234375),
(50016528,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Sakenta)',30001381,56317,30010141,4516286796131.96,670047115198.452,3899990178457.06),
(50016530,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Kaunokka)',30001381,56317,30002797,9346525957127.52,1386674550944.06,1280158440751.28),
(50016490,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Urhinichi)',30001413,56317,30040141,-33466588035.1279,-2784570816.51998,139994192231.402),
(50016492,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Skarkon)',30001413,56317,30002411,-43321874545.7229,-3604957524.82498,-52558691494.6837),
(50016514,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Konola)',30001445,56317,30002737,-94919231848.2139,16864276672.5781,57287761803.3464),
(50016517,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Kino)',30001445,56317,30001372,-53136924928.9125,9439744704.01592,-39638187061.8547),
(50016519,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Otela)',30001445,56317,30000157,-76565414316.8666,13605709698.2886,-24541501945.2162),
(50016511,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Otanuomi)',30002079,56317,30000192,-176704360415.732,24551587486.3602,-93492840620.5753),
(50016512,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Konola)',30002079,56317,30002737,-60749125000.0958,8441650939.51877,120745184262.197),
(50016498,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Raravoss)',30002225,56317,30003495,-26260383006.7908,401617524.202589,180927621370.995),
(50016500,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Niarja)',30002225,56317,30003504,16339293779.3904,-240713683.824381,63250691291.8122),
(50016502,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Tunudan)',30002225,56317,30002770,-141062946871.881,2105242658.61574,-11487878149.8396),
(50016493,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Nani)',30002411,56317,30001413,-203618631474.854,20731842127.1706,38153612375.4572),
(50016494,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Raravoss)',30002411,56317,30003495,-36550452379.0828,3720159891.6616,61460227034.4734),
(50016542,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Vale)',30002652,56317,30005029,-59872672486.0203,-6635868803.04173,101426736288.875),
(50016545,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Wirashoda)',30002652,56317,30000206,-76931482832.0417,-8525380113.65115,-30306320212.8666),
(50016536,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Angymonne)',30002702,56317,30003046,-1575903855.20312,-277788063.164062,-450.1796875),
(50016540,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Vale)',30002702,56317,30005029,-1575690690.04211,-277788063.164062,369657.859375),
(50016513,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Krirald)',30002737,56317,30002079,-40637382361.732,-5895504123.72433,-41339032547.7954),
(50016515,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Nalvula)',30002737,56317,30001445,4136345323.5571,598953591.751613,85039497674.8882),
(50016503,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Harva)',30002770,56317,30002225,30508537221.09,-1040888257.29128,55237019840.1697),
(50016505,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Kuharah)',30002770,56317,30000021,-9953063416.41721,339330066.877542,-39595238037.1909),
(50016531,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Arvasaras)',30002797,56317,30001381,-165045107009.291,-870434399.819752,-30766386245.8283),
(50016532,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Ichoriya)',30002797,56317,30045329,-33965837457.8698,-178637573.967913,82285826902.6569),
(50016534,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Ichoriya)',30003046,56317,30045329,8485061619.66521,-1340421400.70196,60172399920.7024),
(50016537,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Archee)',30003046,56317,30002702,63308148984.533,-10003541036.8147,65054798224.9222),
(50016538,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Vale)',30003046,56317,30005029,850964740.730912,-135547025.655579,32863998550.9116),
(50016495,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Skarkon)',30003495,56317,30002411,-154357198385.636,7606890531.77306,22636705969.4563),
(50016496,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Niarja)',30003495,56317,30003504,-39159002545.8854,1931847425.34929,69529232122.5561),
(50016499,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Harva)',30003495,56317,30002225,49946546740.3573,-2461793786.54069,-920024320.559785),
(50016497,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Raravoss)',30003504,56317,30003495,-1575903855.20312,-277788063.164062,-450.1796875),
(50016501,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Harva)',30003504,56317,30002225,-1575476341.75,-277788063.164062,-196.234375),
(50016523,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Otela)',30005005,56317,30000157,-10582657098.0218,29408221.421557,-57478693598.1193),
(50016524,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Komo)',30005005,56317,30031392,-41482312205.2112,116441200.041782,116794666999.713),
(50016539,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Angymonne)',30005029,56317,30003046,-251379635258.458,-31958549873.3524,-79769601581.9263),
(50016541,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Archee)',30005029,56317,30002702,40135016792.7012,5100682427.29824,129654503327.149),
(50016543,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Ala)',30005029,56317,30002652,135732469216.596,17255378524.4497,-389481313437.952),
(50016526,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Komo)',30010141,56317,30031392,-1791111429143.24,217129059367.688,-1206737798800.76),
(50016529,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Arvasaras)',30010141,56317,30001381,983466364916.661,-119220382336.407,-1157787444111.98),
(50016547,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Wirashoda)',30020141,56317,30000206,954300615427.337,-115686275102.227,-1542132946740.14),
(50016548,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Ahtila)',30020141,56317,30045328,-1791101683012.5,217132705106.103,-1206729169168.83),
(50016525,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Ignebaener)',30031392,56317,30005005,-10455519101.9513,494992264.48873,-47120162779.0055),
(50016527,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Sakenta)',30031392,56317,30010141,6431537944.45046,-304856605.879895,-93474655353.6784),
(50016491,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Nani)',30040141,56317,30001413,983454916073.212,-119220941073.23,-1157780287413.32),
(50016549,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Otanuomi)',30040141,56317,30000192,-1791117914427.68,217129609388.474,-1206736097484.83),
(50016507,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Kuharah)',30045328,56317,30000021,179528068824.763,2459763672.65493,2163149020835.11),
(50016509,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Senda)',30045328,56317,30020141,821698610932.84,52547391041.2756,1283241368884.19),
(50016533,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Kaunokka)',30045329,56317,30002797,-57257126211.4551,-4334403.81694235,61549071910.7095),
(50016535,'2020-10-23 00:00:00','2020-10-23 00:00:00','Conduit (Angymonne)',30045329,56317,30003046,-172607772036.825,-11038838930.515,-19179922446.8049);

# Delete the neighbor rows for Pochven systems
DELETE FROM `system_neighbour` WHERE systemId in (30000157,30000192,30001372,30001445,30002079,30002737,30005005,30010141,30031392,30000021,30001413,30002225,30002411,30002770,30003495,30003504,30040141,30045328,30000206,30001381,30002652,30002702,30002797,30003046,30005029,30020141,30045329);

# Fixup the neighbor rows for systems that used to connect to Pochven systems
UPDATE `system_neighbour` set jumpNodes='30000018:30000020:30000022' where systemId=30000017;
UPDATE `system_neighbour` set jumpNodes='30000015:30000017' where systemId=30000018;
UPDATE `system_neighbour` set jumpNodes='30000128:30000129' where systemId=30000130;
UPDATE `system_neighbour` set jumpNodes='30000132:30000133:30000142:30001379' where systemId=30000138;
UPDATE `system_neighbour` set jumpNodes='30000131:30000154:30000155:30000156' where systemId=30000153;
UPDATE `system_neighbour` set jumpNodes='30000145:30000153:30000154' where systemId=30000156;
UPDATE `system_neighbour` set jumpNodes='30000189:30000191:30000193:30000194' where systemId=30000190;
UPDATE `system_neighbour` set jumpNodes='30000189:30000190:30000194' where systemId=30000191;
UPDATE `system_neighbour` set jumpNodes='30000190:30000201' where systemId=30000193;
UPDATE `system_neighbour` set jumpNodes='30000169:30000188:30000189:30000190:30000191' where systemId=30000194;
UPDATE `system_neighbour` set jumpNodes='30000193:30000202' where systemId=30000201;
UPDATE `system_neighbour` set jumpNodes='30000202:30000203' where systemId=30000207;
UPDATE `system_neighbour` set jumpNodes='30001368:30001415' where systemId=30001371;
UPDATE `system_neighbour` set jumpNodes='30001382:30001384:30002754' where systemId=30001380;
UPDATE `system_neighbour` set jumpNodes='30001383:30001384' where systemId=30001385;
UPDATE `system_neighbour` set jumpNodes='30001374:30001411' where systemId=30001410;
UPDATE `system_neighbour` set jumpNodes='30001367:30001444' where systemId=30001443;
UPDATE `system_neighbour` set jumpNodes='30001443:30001446' where systemId=30001444;
UPDATE `system_neighbour` set jumpNodes='30001444:30001447:30001448' where systemId=30001446;
UPDATE `system_neighbour` set jumpNodes='30000848:30001446:30001448' where systemId=30001447;
UPDATE `system_neighbour` set jumpNodes='30000205:30001446:30001447' where systemId=30001448;
UPDATE `system_neighbour` set jumpNodes='30002371:30002372' where systemId=30002376;
UPDATE `system_neighbour` set jumpNodes='30002408:30002409' where systemId=30002410;
UPDATE `system_neighbour` set jumpNodes='30002401:30003465' where systemId=30002412;
UPDATE `system_neighbour` set jumpNodes='30002648:30002649:30002651' where systemId=30002650;
UPDATE `system_neighbour` set jumpNodes='30002650:30002696' where systemId=30002651;
UPDATE `system_neighbour` set jumpNodes='30002654:30003090' where systemId=30002653;
UPDATE `system_neighbour` set jumpNodes='30002699:30002701' where systemId=30002700;
UPDATE `system_neighbour` set jumpNodes='30002648:30002699' where systemId=30002704;
UPDATE `system_neighbour` set jumpNodes='30002738:30002750' where systemId=30002739;
UPDATE `system_neighbour` set jumpNodes='30002741:30002742' where systemId=30002740;
UPDATE `system_neighbour` set jumpNodes='30001379:30002749:30002750:30002775' where systemId=30002752;
UPDATE `system_neighbour` set jumpNodes='30002767:30002772' where systemId=30002769;
UPDATE `system_neighbour` set jumpNodes='30002773:30002794' where systemId=30002771;
UPDATE `system_neighbour` set jumpNodes='30002782:30002788' where systemId=30002789;
UPDATE `system_neighbour` set jumpNodes='30000139:30002788:30002805' where systemId=30002791;
UPDATE `system_neighbour` set jumpNodes='30002771:30002795:30002799' where systemId=30002794;
UPDATE `system_neighbour` set jumpNodes='30002773' where systemId=30002798;
UPDATE `system_neighbour` set jumpNodes='30002815:30002819:30041392' where systemId=30002818;
UPDATE `system_neighbour` set jumpNodes='30003015:30003047:30003049:30003051:30003054' where systemId=30003045;
UPDATE `system_neighbour` set jumpNodes='30003045:30003048:30003050:30003054' where systemId=30003047;
UPDATE `system_neighbour` set jumpNodes='30003047:30003048:30003054:30003056' where systemId=30003050;
UPDATE `system_neighbour` set jumpNodes='30003045:30003049:30003053' where systemId=30003051;
UPDATE `system_neighbour` set jumpNodes='30003045:30003047:30003048:30003050:30003056' where systemId=30003054;
UPDATE `system_neighbour` set jumpNodes='30003050:30003054' where systemId=30003056;
UPDATE `system_neighbour` set jumpNodes='30003070:30003073:30003075' where systemId=30003074;
UPDATE `system_neighbour` set jumpNodes='30002050:30002077:30002080' where systemId=30002076;
UPDATE `system_neighbour` set jumpNodes='30002077:30002080:30002081' where systemId=30002078;
UPDATE `system_neighbour` set jumpNodes='30002076:30002078:30002081' where systemId=30002080;
UPDATE `system_neighbour` set jumpNodes='30002078:30002080' where systemId=30002081;
UPDATE `system_neighbour` set jumpNodes='30002220:30002223' where systemId=30002224;
UPDATE `system_neighbour` set jumpNodes='30002231:30003493:30003496' where systemId=30003494;
UPDATE `system_neighbour` set jumpNodes='30003498:30003499' where systemId=30003497;
UPDATE `system_neighbour` set jumpNodes='30003493:30003497' where systemId=30003498;
UPDATE `system_neighbour` set jumpNodes='30003501:30003503:30003506' where systemId=30003502;
UPDATE `system_neighbour` set jumpNodes='30003491:30003502:30003506:30004080' where systemId=30003503;
UPDATE `system_neighbour` set jumpNodes='30005006:30005008' where systemId=30005007;
UPDATE `system_neighbour` set jumpNodes='30004993:30005025:30005027' where systemId=30005026;
UPDATE `system_neighbour` set jumpNodes='30045322:30045325' where systemId=30045321;
UPDATE `system_neighbour` set jumpNodes='30045321:30045326:30045337' where systemId=30045322;
UPDATE `system_neighbour` set jumpNodes='30001403:30045314:30045325:30045326:30045327' where systemId=30045324;
UPDATE `system_neighbour` set jumpNodes='30045339:30045340:30045344' where systemId=30045342;

# Re-add the Pochven systems with their new neighbors
INSERT INTO `system_neighbour`(regionId, constellationId, systemId, systemName, jumpNodes, trueSec) VALUES
(10000070, 20000788, 30045328, 'Ahtila', '30000021:30020141', -1.000000),
(10000070, 20000789, 30002652, 'Ala', '30000206:30005029', -1.000000),
(10000070, 20000789, 30003046, 'Angymonne', '30002702:30005029:30045329', -1.000000),
(10000070, 20000789, 30002702, 'Archee', '30003046:30005029', -1.000000),
(10000070, 20000789, 30001381, 'Arvasaras', '30002797:30010141', -1.000000),
(10000070, 20000788, 30002225, 'Harva', '30002770:30003495:30003504', -1.000000),
(10000070, 20000789, 30045329, 'Ichoriya', '30002797:30003046', -1.000000),
(10000070, 20000787, 30005005, 'Ignebaener', '30000157:30031392', -1.000000),
(10000070, 20000789, 30002797, 'Kaunokka', '30001381:30045329', -1.000000),
(10000070, 20000787, 30001372, 'Kino', '30000157:30001445', -1.000000),
(10000070, 20000787, 30031392, 'Komo', '30005005:30010141', -1.000000),
(10000070, 20000787, 30002737, 'Konola', '30001445:30002079', -1.000000),
(10000070, 20000787, 30002079, 'Krirald', '30000192:30002737', -1.000000),
(10000070, 20000788, 30000021, 'Kuharah', '30002770:30045328', -1.000000),
(10000070, 20000787, 30001445, 'Nalvula', '30000157:30001372:30002737', -1.000000),
(10000070, 20000788, 30001413, 'Nani', '30002411:30040141', -1.000000),
(10000070, 20000788, 30003504, 'Niarja', '30002225:30003495', -1.000000),
(10000070, 20000787, 30000192, 'Otanuomi', '30002079:30040141', -1.000000),
(10000070, 20000787, 30000157, 'Otela', '30001372:30001445:30005005', -1.000000),
(10000070, 20000788, 30003495, 'Raravoss', '30002225:30002411:30003504', -1.000000),
(10000070, 20000787, 30010141, 'Sakenta', '30001381:30031392', -1.000000),
(10000070, 20000789, 30020141, 'Senda', '30000206:30045328', -1.000000),
(10000070, 20000788, 30002411, 'Skarkon', '30001413:30003495', -1.000000),
(10000070, 20000788, 30002770, 'Tunudan', '30000021:30002225', -1.000000),
(10000070, 20000788, 30040141, 'Urhinichi', '30000192:30001413', -1.000000),
(10000070, 20000789, 30005029, 'Vale', '30002652:30002702:30003046', -1.000000),
(10000070, 20000789, 30000206, 'Wirashoda', '30002652:30020141', -1.000000);