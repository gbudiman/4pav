
module datapath_ctrl ( op, sel, wen, add );
  input [1:0] op;
  output sel, wen, add;
  wire   n1;

  INVX1 U1 ( .A(op[1]), .Y(n1) );
  AND2X2 U2 ( .A(op[0]), .B(op[1]), .Y(add) );
  OR2X2 U3 ( .A(op[1]), .B(op[0]), .Y(wen) );
  NOR2X1 U4 ( .A(op[0]), .B(n1), .Y(sel) );
endmodule


module regfile ( clk, nReset, wsel, rsel1, rsel2, wdata, wen, rdata1, rdata2, 
        reg0 );
  input [3:0] wsel;
  input [3:0] rsel1;
  input [3:0] rsel2;
  input [15:0] wdata;
  output [15:0] rdata1;
  output [15:0] rdata2;
  output [15:0] reg0;
  input clk, nReset, wen;
  wire   \reg[15][15] , \reg[15][14] , \reg[15][13] , \reg[15][12] ,
         \reg[15][11] , \reg[15][10] , \reg[15][9] , \reg[15][8] ,
         \reg[15][7] , \reg[15][6] , \reg[15][5] , \reg[15][4] , \reg[15][3] ,
         \reg[15][2] , \reg[15][1] , \reg[15][0] , \reg[14][15] ,
         \reg[14][14] , \reg[14][13] , \reg[14][12] , \reg[14][11] ,
         \reg[14][10] , \reg[14][9] , \reg[14][8] , \reg[14][7] , \reg[14][6] ,
         \reg[14][5] , \reg[14][4] , \reg[14][3] , \reg[14][2] , \reg[14][1] ,
         \reg[14][0] , \reg[13][15] , \reg[13][14] , \reg[13][13] ,
         \reg[13][12] , \reg[13][11] , \reg[13][10] , \reg[13][9] ,
         \reg[13][8] , \reg[13][7] , \reg[13][6] , \reg[13][5] , \reg[13][4] ,
         \reg[13][3] , \reg[13][2] , \reg[13][1] , \reg[13][0] , \reg[12][15] ,
         \reg[12][14] , \reg[12][13] , \reg[12][12] , \reg[12][11] ,
         \reg[12][10] , \reg[12][9] , \reg[12][8] , \reg[12][7] , \reg[12][6] ,
         \reg[12][5] , \reg[12][4] , \reg[12][3] , \reg[12][2] , \reg[12][1] ,
         \reg[12][0] , \reg[11][15] , \reg[11][14] , \reg[11][13] ,
         \reg[11][12] , \reg[11][11] , \reg[11][10] , \reg[11][9] ,
         \reg[11][8] , \reg[11][7] , \reg[11][6] , \reg[11][5] , \reg[11][4] ,
         \reg[11][3] , \reg[11][2] , \reg[11][1] , \reg[11][0] , \reg[10][15] ,
         \reg[10][14] , \reg[10][13] , \reg[10][12] , \reg[10][11] ,
         \reg[10][10] , \reg[10][9] , \reg[10][8] , \reg[10][7] , \reg[10][6] ,
         \reg[10][5] , \reg[10][4] , \reg[10][3] , \reg[10][2] , \reg[10][1] ,
         \reg[10][0] , \reg[9][15] , \reg[9][14] , \reg[9][13] , \reg[9][12] ,
         \reg[9][11] , \reg[9][10] , \reg[9][9] , \reg[9][8] , \reg[9][7] ,
         \reg[9][6] , \reg[9][5] , \reg[9][4] , \reg[9][3] , \reg[9][2] ,
         \reg[9][1] , \reg[9][0] , \reg[8][15] , \reg[8][14] , \reg[8][13] ,
         \reg[8][12] , \reg[8][11] , \reg[8][10] , \reg[8][9] , \reg[8][8] ,
         \reg[8][7] , \reg[8][6] , \reg[8][5] , \reg[8][4] , \reg[8][3] ,
         \reg[8][2] , \reg[8][1] , \reg[8][0] , \reg[7][15] , \reg[7][14] ,
         \reg[7][13] , \reg[7][12] , \reg[7][11] , \reg[7][10] , \reg[7][9] ,
         \reg[7][8] , \reg[7][7] , \reg[7][6] , \reg[7][5] , \reg[7][4] ,
         \reg[7][3] , \reg[7][2] , \reg[7][1] , \reg[7][0] , \reg[6][15] ,
         \reg[6][14] , \reg[6][13] , \reg[6][12] , \reg[6][11] , \reg[6][10] ,
         \reg[6][9] , \reg[6][8] , \reg[6][7] , \reg[6][6] , \reg[6][5] ,
         \reg[6][4] , \reg[6][3] , \reg[6][2] , \reg[6][1] , \reg[6][0] ,
         \reg[5][15] , \reg[5][14] , \reg[5][13] , \reg[5][12] , \reg[5][11] ,
         \reg[5][10] , \reg[5][9] , \reg[5][8] , \reg[5][7] , \reg[5][6] ,
         \reg[5][5] , \reg[5][4] , \reg[5][3] , \reg[5][2] , \reg[5][1] ,
         \reg[5][0] , \reg[4][15] , \reg[4][14] , \reg[4][13] , \reg[4][12] ,
         \reg[4][11] , \reg[4][10] , \reg[4][9] , \reg[4][8] , \reg[4][7] ,
         \reg[4][6] , \reg[4][5] , \reg[4][4] , \reg[4][3] , \reg[4][2] ,
         \reg[4][1] , \reg[4][0] , \reg[3][15] , \reg[3][14] , \reg[3][13] ,
         \reg[3][12] , \reg[3][11] , \reg[3][10] , \reg[3][9] , \reg[3][8] ,
         \reg[3][7] , \reg[3][6] , \reg[3][5] , \reg[3][4] , \reg[3][3] ,
         \reg[3][2] , \reg[3][1] , \reg[3][0] , \reg[2][15] , \reg[2][14] ,
         \reg[2][13] , \reg[2][12] , \reg[2][11] , \reg[2][10] , \reg[2][9] ,
         \reg[2][8] , \reg[2][7] , \reg[2][6] , \reg[2][5] , \reg[2][4] ,
         \reg[2][3] , \reg[2][2] , \reg[2][1] , \reg[2][0] , \reg[1][15] ,
         \reg[1][14] , \reg[1][13] , \reg[1][12] , \reg[1][11] , \reg[1][10] ,
         \reg[1][9] , \reg[1][8] , \reg[1][7] , \reg[1][6] , \reg[1][5] ,
         \reg[1][4] , \reg[1][3] , \reg[1][2] , \reg[1][1] , \reg[1][0] , n678,
         n679, n690, n691, n894, n895, n906, n907, n994, n995, n996, n997,
         n1012, n1013, n1014, n1015, n1029, n1030, n1031, n1032, n1047, n1048,
         n1049, n1050, n1051, n1065, n1066, n1067, n1068, n1083, n1084, n1085,
         n1086, n1101, n1102, n1103, n1104, n1118, n1119, n1120, n1121, n1138,
         n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149,
         n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158, n1159,
         n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168, n1169,
         n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178, n1179,
         n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189,
         n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198, n1199,
         n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209,
         n1210, n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218, n1219,
         n1220, n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229,
         n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239,
         n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249,
         n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258, n1259,
         n1260, n1261, n1262, n1263, n1264, n1265, n1266, n1267, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n702,
         n703, n704, n705, n706, n707, n708, n709, n710, n711, n712, n713,
         n714, n715, n716, n717, n718, n719, n720, n721, n722, n723, n724,
         n725, n726, n727, n728, n729, n730, n731, n732, n733, n734, n735,
         n736, n737, n738, n739, n740, n741, n742, n743, n744, n745, n746,
         n747, n748, n749, n750, n751, n752, n753, n754, n755, n756, n757,
         n758, n759, n760, n761, n762, n763, n764, n765, n766, n767, n768,
         n769, n770, n771, n772, n773, n774, n775, n776, n777, n778, n779,
         n780, n781, n782, n783, n784, n785, n786, n787, n788, n789, n790,
         n791, n792, n793, n794, n795, n796, n797, n798, n799, n800, n801,
         n802, n803, n804, n805, n806, n807, n808, n809, n810, n811, n812,
         n813, n814, n815, n816, n817, n818, n819, n820, n821, n822, n823,
         n824, n825, n826, n827, n828, n829, n830, n831, n832, n833, n834,
         n835, n836, n837, n838, n839, n840, n841, n842, n843, n844, n845,
         n846, n847, n848, n849, n850, n851, n852, n853, n854, n855, n856,
         n857, n858, n859, n860, n861, n862, n863, n864, n865, n866, n867,
         n868, n869, n870, n871, n872, n873, n874, n875, n876, n877, n878,
         n879, n880, n881, n882, n883, n884, n885, n886, n887, n888, n889,
         n890, n891, n892, n893, n896, n897, n898, n899, n900, n901, n902,
         n903, n904, n905, n908, n909, n910, n911, n912, n913, n914, n915,
         n916, n917, n918, n919, n920, n921, n922, n923, n924, n925, n926,
         n927, n928, n929, n930, n931, n932, n933, n934, n935, n936, n937,
         n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, n948,
         n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959,
         n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970,
         n971, n972, n973, n974, n975, n976, n977, n978, n979, n980, n981,
         n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, n992,
         n993, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006,
         n1007, n1008, n1009, n1010, n1011, n1016, n1017, n1018, n1019, n1020,
         n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1033, n1034,
         n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
         n1045, n1046, n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059,
         n1060, n1061, n1062, n1063, n1064, n1069, n1070, n1071, n1072, n1073,
         n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1087,
         n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097,
         n1098, n1099, n1100, n1105, n1106, n1107, n1108, n1109, n1110, n1111,
         n1112, n1113, n1114, n1115, n1116, n1117, n1122, n1123, n1124, n1125,
         n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135,
         n1136, n1137, n1139, n1268, n1269, n1270, n1271, n1272, n1273, n1274,
         n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284,
         n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294,
         n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304,
         n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314,
         n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324,
         n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334,
         n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344,
         n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354,
         n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364,
         n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374,
         n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384,
         n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394,
         n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404,
         n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414,
         n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424,
         n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434,
         n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443, n1444,
         n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453, n1454,
         n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463, n1464,
         n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473, n1474,
         n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483, n1484,
         n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493, n1494,
         n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503, n1504,
         n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512, n1513, n1514,
         n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522, n1523, n1524,
         n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532, n1533, n1534,
         n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542, n1543, n1544,
         n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552, n1553, n1554,
         n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562, n1563, n1564,
         n1565, n1566, n1567, n1568, n1569, n1570, n1571, n1572, n1573, n1574,
         n1575, n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583, n1584,
         n1585, n1586, n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594,
         n1595, n1596, n1597, n1598, n1599, n1600, n1601, n1602, n1603, n1604,
         n1605, n1606, n1607, n1608, n1609, n1610, n1611, n1612, n1613;

  DFFSR \reg_reg[15][15]  ( .D(n1267), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \reg[15][15] ) );
  DFFSR \reg_reg[15][14]  ( .D(n1266), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \reg[15][14] ) );
  DFFSR \reg_reg[15][13]  ( .D(n1265), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \reg[15][13] ) );
  DFFSR \reg_reg[15][12]  ( .D(n1264), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \reg[15][12] ) );
  DFFSR \reg_reg[15][11]  ( .D(n1263), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \reg[15][11] ) );
  DFFSR \reg_reg[15][10]  ( .D(n1262), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \reg[15][10] ) );
  DFFSR \reg_reg[15][9]  ( .D(n1261), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \reg[15][9] ) );
  DFFSR \reg_reg[15][8]  ( .D(n1260), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \reg[15][8] ) );
  DFFSR \reg_reg[15][7]  ( .D(n1259), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \reg[15][7] ) );
  DFFSR \reg_reg[15][6]  ( .D(n1258), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \reg[15][6] ) );
  DFFSR \reg_reg[15][5]  ( .D(n1257), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \reg[15][5] ) );
  DFFSR \reg_reg[15][4]  ( .D(n1256), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \reg[15][4] ) );
  DFFSR \reg_reg[15][3]  ( .D(n1255), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \reg[15][3] ) );
  DFFSR \reg_reg[15][2]  ( .D(n1254), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \reg[15][2] ) );
  DFFSR \reg_reg[15][1]  ( .D(n1253), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \reg[15][1] ) );
  DFFSR \reg_reg[15][0]  ( .D(n1252), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \reg[15][0] ) );
  DFFSR \reg_reg[14][15]  ( .D(n1251), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \reg[14][15] ) );
  DFFSR \reg_reg[14][14]  ( .D(n1250), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \reg[14][14] ) );
  DFFSR \reg_reg[14][13]  ( .D(n1249), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \reg[14][13] ) );
  DFFSR \reg_reg[14][12]  ( .D(n1248), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \reg[14][12] ) );
  DFFSR \reg_reg[14][11]  ( .D(n1247), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \reg[14][11] ) );
  DFFSR \reg_reg[14][10]  ( .D(n1246), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \reg[14][10] ) );
  DFFSR \reg_reg[14][9]  ( .D(n1245), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \reg[14][9] ) );
  DFFSR \reg_reg[14][8]  ( .D(n1244), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \reg[14][8] ) );
  DFFSR \reg_reg[14][7]  ( .D(n1243), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \reg[14][7] ) );
  DFFSR \reg_reg[14][6]  ( .D(n1242), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \reg[14][6] ) );
  DFFSR \reg_reg[14][5]  ( .D(n1241), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \reg[14][5] ) );
  DFFSR \reg_reg[14][4]  ( .D(n1240), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \reg[14][4] ) );
  DFFSR \reg_reg[14][3]  ( .D(n1239), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \reg[14][3] ) );
  DFFSR \reg_reg[14][2]  ( .D(n1238), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \reg[14][2] ) );
  DFFSR \reg_reg[14][1]  ( .D(n1237), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \reg[14][1] ) );
  DFFSR \reg_reg[14][0]  ( .D(n1236), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \reg[14][0] ) );
  DFFSR \reg_reg[13][15]  ( .D(n1235), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \reg[13][15] ) );
  DFFSR \reg_reg[13][14]  ( .D(n1234), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \reg[13][14] ) );
  DFFSR \reg_reg[13][13]  ( .D(n1233), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \reg[13][13] ) );
  DFFSR \reg_reg[13][12]  ( .D(n1232), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \reg[13][12] ) );
  DFFSR \reg_reg[13][11]  ( .D(n1231), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \reg[13][11] ) );
  DFFSR \reg_reg[13][10]  ( .D(n1230), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \reg[13][10] ) );
  DFFSR \reg_reg[13][9]  ( .D(n1229), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \reg[13][9] ) );
  DFFSR \reg_reg[13][8]  ( .D(n1228), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \reg[13][8] ) );
  DFFSR \reg_reg[13][7]  ( .D(n1227), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \reg[13][7] ) );
  DFFSR \reg_reg[13][6]  ( .D(n1226), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \reg[13][6] ) );
  DFFSR \reg_reg[13][5]  ( .D(n1225), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \reg[13][5] ) );
  DFFSR \reg_reg[13][4]  ( .D(n1224), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \reg[13][4] ) );
  DFFSR \reg_reg[13][3]  ( .D(n1223), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \reg[13][3] ) );
  DFFSR \reg_reg[13][2]  ( .D(n1222), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \reg[13][2] ) );
  DFFSR \reg_reg[13][1]  ( .D(n1221), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \reg[13][1] ) );
  DFFSR \reg_reg[13][0]  ( .D(n1220), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \reg[13][0] ) );
  DFFSR \reg_reg[12][15]  ( .D(n1219), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \reg[12][15] ) );
  DFFSR \reg_reg[12][14]  ( .D(n1218), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \reg[12][14] ) );
  DFFSR \reg_reg[12][13]  ( .D(n1217), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \reg[12][13] ) );
  DFFSR \reg_reg[12][12]  ( .D(n1216), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \reg[12][12] ) );
  DFFSR \reg_reg[12][11]  ( .D(n1215), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \reg[12][11] ) );
  DFFSR \reg_reg[12][10]  ( .D(n1214), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \reg[12][10] ) );
  DFFSR \reg_reg[12][9]  ( .D(n1213), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \reg[12][9] ) );
  DFFSR \reg_reg[12][8]  ( .D(n1212), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \reg[12][8] ) );
  DFFSR \reg_reg[12][7]  ( .D(n1211), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \reg[12][7] ) );
  DFFSR \reg_reg[12][6]  ( .D(n1210), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \reg[12][6] ) );
  DFFSR \reg_reg[12][5]  ( .D(n1209), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \reg[12][5] ) );
  DFFSR \reg_reg[12][4]  ( .D(n1208), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \reg[12][4] ) );
  DFFSR \reg_reg[12][3]  ( .D(n1207), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \reg[12][3] ) );
  DFFSR \reg_reg[12][2]  ( .D(n1206), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \reg[12][2] ) );
  DFFSR \reg_reg[12][1]  ( .D(n1205), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \reg[12][1] ) );
  DFFSR \reg_reg[12][0]  ( .D(n1204), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \reg[12][0] ) );
  DFFSR \reg_reg[11][15]  ( .D(n1490), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \reg[11][15] ) );
  DFFSR \reg_reg[11][14]  ( .D(n1498), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \reg[11][14] ) );
  DFFSR \reg_reg[11][13]  ( .D(n1506), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \reg[11][13] ) );
  DFFSR \reg_reg[11][12]  ( .D(n1514), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \reg[11][12] ) );
  DFFSR \reg_reg[11][11]  ( .D(n1522), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \reg[11][11] ) );
  DFFSR \reg_reg[11][10]  ( .D(n1530), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \reg[11][10] ) );
  DFFSR \reg_reg[11][9]  ( .D(n1538), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \reg[11][9] ) );
  DFFSR \reg_reg[11][8]  ( .D(n1546), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \reg[11][8] ) );
  DFFSR \reg_reg[11][7]  ( .D(n1554), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \reg[11][7] ) );
  DFFSR \reg_reg[11][6]  ( .D(n1562), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \reg[11][6] ) );
  DFFSR \reg_reg[11][5]  ( .D(n1570), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \reg[11][5] ) );
  DFFSR \reg_reg[11][4]  ( .D(n1578), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \reg[11][4] ) );
  DFFSR \reg_reg[11][3]  ( .D(n1586), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \reg[11][3] ) );
  DFFSR \reg_reg[11][2]  ( .D(n1594), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \reg[11][2] ) );
  DFFSR \reg_reg[11][1]  ( .D(n1603), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \reg[11][1] ) );
  DFFSR \reg_reg[11][0]  ( .D(n1612), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \reg[11][0] ) );
  DFFSR \reg_reg[10][15]  ( .D(n1489), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \reg[10][15] ) );
  DFFSR \reg_reg[10][14]  ( .D(n1497), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \reg[10][14] ) );
  DFFSR \reg_reg[10][13]  ( .D(n1505), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \reg[10][13] ) );
  DFFSR \reg_reg[10][12]  ( .D(n1513), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \reg[10][12] ) );
  DFFSR \reg_reg[10][11]  ( .D(n1521), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \reg[10][11] ) );
  DFFSR \reg_reg[10][10]  ( .D(n1529), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \reg[10][10] ) );
  DFFSR \reg_reg[10][9]  ( .D(n1537), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \reg[10][9] ) );
  DFFSR \reg_reg[10][8]  ( .D(n1545), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \reg[10][8] ) );
  DFFSR \reg_reg[10][7]  ( .D(n1553), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \reg[10][7] ) );
  DFFSR \reg_reg[10][6]  ( .D(n1561), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \reg[10][6] ) );
  DFFSR \reg_reg[10][5]  ( .D(n1569), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \reg[10][5] ) );
  DFFSR \reg_reg[10][4]  ( .D(n1577), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \reg[10][4] ) );
  DFFSR \reg_reg[10][3]  ( .D(n1585), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \reg[10][3] ) );
  DFFSR \reg_reg[10][2]  ( .D(n1593), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \reg[10][2] ) );
  DFFSR \reg_reg[10][1]  ( .D(n1602), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \reg[10][1] ) );
  DFFSR \reg_reg[10][0]  ( .D(n1611), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \reg[10][0] ) );
  DFFSR \reg_reg[9][15]  ( .D(n1488), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \reg[9][15] ) );
  DFFSR \reg_reg[9][14]  ( .D(n1496), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \reg[9][14] ) );
  DFFSR \reg_reg[9][13]  ( .D(n1504), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \reg[9][13] ) );
  DFFSR \reg_reg[9][12]  ( .D(n1512), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \reg[9][12] ) );
  DFFSR \reg_reg[9][11]  ( .D(n1520), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \reg[9][11] ) );
  DFFSR \reg_reg[9][10]  ( .D(n1528), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \reg[9][10] ) );
  DFFSR \reg_reg[9][9]  ( .D(n1536), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \reg[9][9] ) );
  DFFSR \reg_reg[9][8]  ( .D(n1544), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \reg[9][8] ) );
  DFFSR \reg_reg[9][7]  ( .D(n1552), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \reg[9][7] ) );
  DFFSR \reg_reg[9][6]  ( .D(n1560), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \reg[9][6] ) );
  DFFSR \reg_reg[9][5]  ( .D(n1568), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \reg[9][5] ) );
  DFFSR \reg_reg[9][4]  ( .D(n1576), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \reg[9][4] ) );
  DFFSR \reg_reg[9][3]  ( .D(n1584), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \reg[9][3] ) );
  DFFSR \reg_reg[9][2]  ( .D(n1592), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \reg[9][2] ) );
  DFFSR \reg_reg[9][1]  ( .D(n1601), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \reg[9][1] ) );
  DFFSR \reg_reg[9][0]  ( .D(n1610), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \reg[9][0] ) );
  DFFSR \reg_reg[8][15]  ( .D(n1487), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \reg[8][15] ) );
  DFFSR \reg_reg[8][14]  ( .D(n1495), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \reg[8][14] ) );
  DFFSR \reg_reg[8][13]  ( .D(n1503), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \reg[8][13] ) );
  DFFSR \reg_reg[8][12]  ( .D(n1511), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \reg[8][12] ) );
  DFFSR \reg_reg[8][11]  ( .D(n1519), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \reg[8][11] ) );
  DFFSR \reg_reg[8][10]  ( .D(n1527), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \reg[8][10] ) );
  DFFSR \reg_reg[8][9]  ( .D(n1535), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \reg[8][9] ) );
  DFFSR \reg_reg[8][8]  ( .D(n1543), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \reg[8][8] ) );
  DFFSR \reg_reg[8][7]  ( .D(n1551), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \reg[8][7] ) );
  DFFSR \reg_reg[8][6]  ( .D(n1559), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \reg[8][6] ) );
  DFFSR \reg_reg[8][5]  ( .D(n1567), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \reg[8][5] ) );
  DFFSR \reg_reg[8][4]  ( .D(n1575), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \reg[8][4] ) );
  DFFSR \reg_reg[8][3]  ( .D(n1583), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \reg[8][3] ) );
  DFFSR \reg_reg[8][2]  ( .D(n1591), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \reg[8][2] ) );
  DFFSR \reg_reg[8][1]  ( .D(n1600), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \reg[8][1] ) );
  DFFSR \reg_reg[8][0]  ( .D(n1609), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \reg[8][0] ) );
  DFFSR \reg_reg[7][15]  ( .D(n1486), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \reg[7][15] ) );
  DFFSR \reg_reg[7][14]  ( .D(n1494), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \reg[7][14] ) );
  DFFSR \reg_reg[7][13]  ( .D(n1502), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \reg[7][13] ) );
  DFFSR \reg_reg[7][12]  ( .D(n1510), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \reg[7][12] ) );
  DFFSR \reg_reg[7][11]  ( .D(n1518), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \reg[7][11] ) );
  DFFSR \reg_reg[7][10]  ( .D(n1526), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \reg[7][10] ) );
  DFFSR \reg_reg[7][9]  ( .D(n1534), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \reg[7][9] ) );
  DFFSR \reg_reg[7][8]  ( .D(n1542), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \reg[7][8] ) );
  DFFSR \reg_reg[7][7]  ( .D(n1550), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \reg[7][7] ) );
  DFFSR \reg_reg[7][6]  ( .D(n1558), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \reg[7][6] ) );
  DFFSR \reg_reg[7][5]  ( .D(n1566), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \reg[7][5] ) );
  DFFSR \reg_reg[7][4]  ( .D(n1574), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \reg[7][4] ) );
  DFFSR \reg_reg[7][3]  ( .D(n1582), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \reg[7][3] ) );
  DFFSR \reg_reg[7][2]  ( .D(n1590), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \reg[7][2] ) );
  DFFSR \reg_reg[7][1]  ( .D(n1599), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \reg[7][1] ) );
  DFFSR \reg_reg[7][0]  ( .D(n1608), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \reg[7][0] ) );
  DFFSR \reg_reg[6][15]  ( .D(n1485), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \reg[6][15] ) );
  DFFSR \reg_reg[6][14]  ( .D(n1493), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \reg[6][14] ) );
  DFFSR \reg_reg[6][13]  ( .D(n1501), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \reg[6][13] ) );
  DFFSR \reg_reg[6][12]  ( .D(n1509), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \reg[6][12] ) );
  DFFSR \reg_reg[6][11]  ( .D(n1517), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \reg[6][11] ) );
  DFFSR \reg_reg[6][10]  ( .D(n1525), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \reg[6][10] ) );
  DFFSR \reg_reg[6][9]  ( .D(n1533), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \reg[6][9] ) );
  DFFSR \reg_reg[6][8]  ( .D(n1541), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \reg[6][8] ) );
  DFFSR \reg_reg[6][7]  ( .D(n1549), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \reg[6][7] ) );
  DFFSR \reg_reg[6][6]  ( .D(n1557), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \reg[6][6] ) );
  DFFSR \reg_reg[6][5]  ( .D(n1565), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \reg[6][5] ) );
  DFFSR \reg_reg[6][4]  ( .D(n1573), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \reg[6][4] ) );
  DFFSR \reg_reg[6][3]  ( .D(n1581), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \reg[6][3] ) );
  DFFSR \reg_reg[6][2]  ( .D(n1589), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \reg[6][2] ) );
  DFFSR \reg_reg[6][1]  ( .D(n1598), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \reg[6][1] ) );
  DFFSR \reg_reg[6][0]  ( .D(n1607), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \reg[6][0] ) );
  DFFSR \reg_reg[5][15]  ( .D(n1484), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \reg[5][15] ) );
  DFFSR \reg_reg[5][14]  ( .D(n1492), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \reg[5][14] ) );
  DFFSR \reg_reg[5][13]  ( .D(n1500), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \reg[5][13] ) );
  DFFSR \reg_reg[5][12]  ( .D(n1508), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \reg[5][12] ) );
  DFFSR \reg_reg[5][11]  ( .D(n1516), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \reg[5][11] ) );
  DFFSR \reg_reg[5][10]  ( .D(n1524), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \reg[5][10] ) );
  DFFSR \reg_reg[5][9]  ( .D(n1532), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \reg[5][9] ) );
  DFFSR \reg_reg[5][8]  ( .D(n1540), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \reg[5][8] ) );
  DFFSR \reg_reg[5][7]  ( .D(n1548), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \reg[5][7] ) );
  DFFSR \reg_reg[5][6]  ( .D(n1556), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \reg[5][6] ) );
  DFFSR \reg_reg[5][5]  ( .D(n1564), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \reg[5][5] ) );
  DFFSR \reg_reg[5][4]  ( .D(n1572), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \reg[5][4] ) );
  DFFSR \reg_reg[5][3]  ( .D(n1580), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \reg[5][3] ) );
  DFFSR \reg_reg[5][2]  ( .D(n1588), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \reg[5][2] ) );
  DFFSR \reg_reg[5][1]  ( .D(n1597), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \reg[5][1] ) );
  DFFSR \reg_reg[5][0]  ( .D(n1606), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \reg[5][0] ) );
  DFFSR \reg_reg[4][15]  ( .D(n1483), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \reg[4][15] ) );
  DFFSR \reg_reg[4][14]  ( .D(n1491), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \reg[4][14] ) );
  DFFSR \reg_reg[4][13]  ( .D(n1499), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \reg[4][13] ) );
  DFFSR \reg_reg[4][12]  ( .D(n1507), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \reg[4][12] ) );
  DFFSR \reg_reg[4][11]  ( .D(n1515), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \reg[4][11] ) );
  DFFSR \reg_reg[4][10]  ( .D(n1523), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \reg[4][10] ) );
  DFFSR \reg_reg[4][9]  ( .D(n1531), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \reg[4][9] ) );
  DFFSR \reg_reg[4][8]  ( .D(n1539), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \reg[4][8] ) );
  DFFSR \reg_reg[4][7]  ( .D(n1547), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \reg[4][7] ) );
  DFFSR \reg_reg[4][6]  ( .D(n1555), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \reg[4][6] ) );
  DFFSR \reg_reg[4][5]  ( .D(n1563), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \reg[4][5] ) );
  DFFSR \reg_reg[4][4]  ( .D(n1571), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \reg[4][4] ) );
  DFFSR \reg_reg[4][3]  ( .D(n1579), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \reg[4][3] ) );
  DFFSR \reg_reg[4][2]  ( .D(n1587), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \reg[4][2] ) );
  DFFSR \reg_reg[4][1]  ( .D(n1596), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \reg[4][1] ) );
  DFFSR \reg_reg[4][0]  ( .D(n1605), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \reg[4][0] ) );
  DFFSR \reg_reg[3][15]  ( .D(n1203), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \reg[3][15] ) );
  DFFSR \reg_reg[3][14]  ( .D(n1202), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \reg[3][14] ) );
  DFFSR \reg_reg[3][13]  ( .D(n1201), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \reg[3][13] ) );
  DFFSR \reg_reg[3][12]  ( .D(n1200), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \reg[3][12] ) );
  DFFSR \reg_reg[3][11]  ( .D(n1199), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \reg[3][11] ) );
  DFFSR \reg_reg[3][10]  ( .D(n1198), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \reg[3][10] ) );
  DFFSR \reg_reg[3][9]  ( .D(n1197), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \reg[3][9] ) );
  DFFSR \reg_reg[3][8]  ( .D(n1196), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \reg[3][8] ) );
  DFFSR \reg_reg[3][7]  ( .D(n1195), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \reg[3][7] ) );
  DFFSR \reg_reg[3][6]  ( .D(n1194), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \reg[3][6] ) );
  DFFSR \reg_reg[3][5]  ( .D(n1193), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \reg[3][5] ) );
  DFFSR \reg_reg[3][4]  ( .D(n1192), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \reg[3][4] ) );
  DFFSR \reg_reg[3][3]  ( .D(n1191), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \reg[3][3] ) );
  DFFSR \reg_reg[3][2]  ( .D(n1190), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \reg[3][2] ) );
  DFFSR \reg_reg[3][1]  ( .D(n1189), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \reg[3][1] ) );
  DFFSR \reg_reg[3][0]  ( .D(n1188), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \reg[3][0] ) );
  DFFSR \reg_reg[2][15]  ( .D(n1187), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \reg[2][15] ) );
  DFFSR \reg_reg[2][14]  ( .D(n1186), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \reg[2][14] ) );
  DFFSR \reg_reg[2][13]  ( .D(n1185), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \reg[2][13] ) );
  DFFSR \reg_reg[2][12]  ( .D(n1184), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \reg[2][12] ) );
  DFFSR \reg_reg[2][11]  ( .D(n1183), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \reg[2][11] ) );
  DFFSR \reg_reg[2][10]  ( .D(n1182), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \reg[2][10] ) );
  DFFSR \reg_reg[2][9]  ( .D(n1181), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \reg[2][9] ) );
  DFFSR \reg_reg[2][8]  ( .D(n1180), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \reg[2][8] ) );
  DFFSR \reg_reg[2][7]  ( .D(n1179), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \reg[2][7] ) );
  DFFSR \reg_reg[2][6]  ( .D(n1178), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \reg[2][6] ) );
  DFFSR \reg_reg[2][5]  ( .D(n1177), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \reg[2][5] ) );
  DFFSR \reg_reg[2][4]  ( .D(n1176), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \reg[2][4] ) );
  DFFSR \reg_reg[2][3]  ( .D(n1175), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \reg[2][3] ) );
  DFFSR \reg_reg[2][2]  ( .D(n1174), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \reg[2][2] ) );
  DFFSR \reg_reg[2][1]  ( .D(n1173), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \reg[2][1] ) );
  DFFSR \reg_reg[2][0]  ( .D(n1172), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \reg[2][0] ) );
  DFFSR \reg_reg[1][15]  ( .D(n1171), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \reg[1][15] ) );
  DFFSR \reg_reg[1][14]  ( .D(n1170), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \reg[1][14] ) );
  DFFSR \reg_reg[1][13]  ( .D(n1169), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \reg[1][13] ) );
  DFFSR \reg_reg[1][12]  ( .D(n1168), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \reg[1][12] ) );
  DFFSR \reg_reg[1][11]  ( .D(n1167), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \reg[1][11] ) );
  DFFSR \reg_reg[1][10]  ( .D(n1166), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \reg[1][10] ) );
  DFFSR \reg_reg[1][9]  ( .D(n1165), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \reg[1][9] ) );
  DFFSR \reg_reg[1][8]  ( .D(n1164), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \reg[1][8] ) );
  DFFSR \reg_reg[1][7]  ( .D(n1163), .CLK(clk), .R(n437), .S(1'b1), .Q(
        \reg[1][7] ) );
  DFFSR \reg_reg[1][6]  ( .D(n1162), .CLK(clk), .R(n437), .S(1'b1), .Q(
        \reg[1][6] ) );
  DFFSR \reg_reg[1][5]  ( .D(n1161), .CLK(clk), .R(n437), .S(1'b1), .Q(
        \reg[1][5] ) );
  DFFSR \reg_reg[1][4]  ( .D(n1160), .CLK(clk), .R(n437), .S(1'b1), .Q(
        \reg[1][4] ) );
  DFFSR \reg_reg[1][3]  ( .D(n1159), .CLK(clk), .R(n437), .S(1'b1), .Q(
        \reg[1][3] ) );
  DFFSR \reg_reg[1][2]  ( .D(n1158), .CLK(clk), .R(n437), .S(1'b1), .Q(
        \reg[1][2] ) );
  DFFSR \reg_reg[1][1]  ( .D(n1157), .CLK(clk), .R(n437), .S(1'b1), .Q(
        \reg[1][1] ) );
  DFFSR \reg_reg[1][0]  ( .D(n1156), .CLK(clk), .R(n437), .S(1'b1), .Q(
        \reg[1][0] ) );
  DFFSR \reg_reg[0][15]  ( .D(n1155), .CLK(clk), .R(n437), .S(1'b1), .Q(
        reg0[15]) );
  DFFSR \reg_reg[0][14]  ( .D(n1154), .CLK(clk), .R(n437), .S(1'b1), .Q(
        reg0[14]) );
  DFFSR \reg_reg[0][13]  ( .D(n1153), .CLK(clk), .R(n437), .S(1'b1), .Q(
        reg0[13]) );
  DFFSR \reg_reg[0][12]  ( .D(n1152), .CLK(clk), .R(n437), .S(1'b1), .Q(
        reg0[12]) );
  DFFSR \reg_reg[0][11]  ( .D(n1151), .CLK(clk), .R(n436), .S(1'b1), .Q(
        reg0[11]) );
  DFFSR \reg_reg[0][10]  ( .D(n1150), .CLK(clk), .R(n436), .S(1'b1), .Q(
        reg0[10]) );
  DFFSR \reg_reg[0][9]  ( .D(n1149), .CLK(clk), .R(n436), .S(1'b1), .Q(reg0[9]) );
  DFFSR \reg_reg[0][8]  ( .D(n1148), .CLK(clk), .R(n436), .S(1'b1), .Q(reg0[8]) );
  DFFSR \reg_reg[0][7]  ( .D(n1147), .CLK(clk), .R(n436), .S(1'b1), .Q(reg0[7]) );
  DFFSR \reg_reg[0][6]  ( .D(n1146), .CLK(clk), .R(n436), .S(1'b1), .Q(reg0[6]) );
  DFFSR \reg_reg[0][5]  ( .D(n1145), .CLK(clk), .R(n436), .S(1'b1), .Q(reg0[5]) );
  DFFSR \reg_reg[0][4]  ( .D(n1144), .CLK(clk), .R(n436), .S(1'b1), .Q(reg0[4]) );
  DFFSR \reg_reg[0][3]  ( .D(n1143), .CLK(clk), .R(n436), .S(1'b1), .Q(reg0[3]) );
  DFFSR \reg_reg[0][2]  ( .D(n1142), .CLK(clk), .R(n436), .S(1'b1), .Q(reg0[2]) );
  DFFSR \reg_reg[0][1]  ( .D(n1141), .CLK(clk), .R(n436), .S(1'b1), .Q(reg0[1]) );
  DFFSR \reg_reg[0][0]  ( .D(n1140), .CLK(clk), .R(n436), .S(1'b1), .Q(reg0[0]) );
  OR2X2 U267 ( .A(n678), .B(n679), .Y(rdata2[15]) );
  OR2X2 U268 ( .A(n690), .B(n691), .Y(rdata2[14]) );
  OR2X2 U293 ( .A(n894), .B(n895), .Y(rdata1[15]) );
  OR2X2 U294 ( .A(n906), .B(n907), .Y(rdata1[14]) );
  AND2X2 U316 ( .A(wsel[3]), .B(wen), .Y(n1138) );
  AOI22X1 U1094 ( .A(wdata[0]), .B(n1475), .C(n995), .D(\reg[4][0] ), .Y(n994)
         );
  AOI22X1 U1095 ( .A(wdata[1]), .B(n1475), .C(n995), .D(\reg[4][1] ), .Y(n996)
         );
  AOI22X1 U1096 ( .A(n396), .B(n1475), .C(n995), .D(\reg[4][2] ), .Y(n997) );
  AOI22X1 U1111 ( .A(wdata[0]), .B(n1476), .C(n1013), .D(\reg[5][0] ), .Y(
        n1012) );
  AOI22X1 U1112 ( .A(wdata[1]), .B(n1476), .C(n1013), .D(\reg[5][1] ), .Y(
        n1014) );
  AOI22X1 U1113 ( .A(n397), .B(n1476), .C(n1013), .D(\reg[5][2] ), .Y(n1015)
         );
  AOI22X1 U1128 ( .A(wdata[0]), .B(n1477), .C(n1030), .D(\reg[6][0] ), .Y(
        n1029) );
  AOI22X1 U1129 ( .A(wdata[1]), .B(n1477), .C(n1030), .D(\reg[6][1] ), .Y(
        n1031) );
  AOI22X1 U1130 ( .A(n396), .B(n1477), .C(n1030), .D(\reg[6][2] ), .Y(n1032)
         );
  AOI22X1 U1145 ( .A(wdata[0]), .B(n1478), .C(n1049), .D(\reg[7][0] ), .Y(
        n1048) );
  AOI22X1 U1146 ( .A(wdata[1]), .B(n1478), .C(n1049), .D(\reg[7][1] ), .Y(
        n1050) );
  AOI22X1 U1147 ( .A(n397), .B(n1478), .C(n1049), .D(\reg[7][2] ), .Y(n1051)
         );
  NOR2X1 U1162 ( .A(n1613), .B(wsel[3]), .Y(n1047) );
  AOI22X1 U1163 ( .A(wdata[0]), .B(n1479), .C(n1066), .D(\reg[8][0] ), .Y(
        n1065) );
  AOI22X1 U1164 ( .A(wdata[1]), .B(n1479), .C(n1066), .D(\reg[8][1] ), .Y(
        n1067) );
  AOI22X1 U1165 ( .A(n396), .B(n1479), .C(n1066), .D(\reg[8][2] ), .Y(n1068)
         );
  AOI22X1 U1180 ( .A(wdata[0]), .B(n1480), .C(n1084), .D(\reg[9][0] ), .Y(
        n1083) );
  AOI22X1 U1181 ( .A(wdata[1]), .B(n1480), .C(n1084), .D(\reg[9][1] ), .Y(
        n1085) );
  AOI22X1 U1182 ( .A(n397), .B(n1480), .C(n1084), .D(\reg[9][2] ), .Y(n1086)
         );
  AOI22X1 U1198 ( .A(wdata[0]), .B(n1481), .C(n1102), .D(\reg[10][0] ), .Y(
        n1101) );
  AOI22X1 U1199 ( .A(wdata[1]), .B(n1481), .C(n1102), .D(\reg[10][1] ), .Y(
        n1103) );
  AOI22X1 U1200 ( .A(n396), .B(n1481), .C(n1102), .D(\reg[10][2] ), .Y(n1104)
         );
  AOI22X1 U1215 ( .A(wdata[0]), .B(n1482), .C(n1119), .D(\reg[11][0] ), .Y(
        n1118) );
  AOI22X1 U1216 ( .A(wdata[1]), .B(n1482), .C(n1119), .D(\reg[11][1] ), .Y(
        n1120) );
  AOI22X1 U1217 ( .A(n397), .B(n1482), .C(n1119), .D(\reg[11][2] ), .Y(n1121)
         );
  INVX2 U258 ( .A(n289), .Y(n588) );
  INVX4 U259 ( .A(n336), .Y(n301) );
  INVX4 U260 ( .A(n354), .Y(n311) );
  INVX4 U261 ( .A(n354), .Y(n391) );
  INVX4 U262 ( .A(n1020), .Y(n388) );
  INVX4 U263 ( .A(wdata[11]), .Y(n419) );
  INVX2 U264 ( .A(n1070), .Y(n385) );
  INVX2 U265 ( .A(n1005), .Y(n392) );
  INVX2 U266 ( .A(wdata[7]), .Y(n409) );
  INVX2 U269 ( .A(n323), .Y(n644) );
  AND2X1 U270 ( .A(n385), .B(\reg[14][9] ), .Y(n628) );
  BUFX4 U271 ( .A(n290), .Y(n257) );
  BUFX4 U272 ( .A(n290), .Y(n258) );
  AND2X2 U273 ( .A(n1047), .B(n427), .Y(n259) );
  AND2X2 U274 ( .A(n1047), .B(wsel[2]), .Y(n260) );
  AND2X2 U275 ( .A(n1138), .B(wsel[2]), .Y(n261) );
  AND2X2 U276 ( .A(n1138), .B(n427), .Y(n262) );
  AND2X2 U277 ( .A(n611), .B(n612), .Y(n263) );
  INVX2 U278 ( .A(rsel1[1]), .Y(n731) );
  AND2X2 U279 ( .A(wsel[0]), .B(wsel[1]), .Y(n264) );
  AND2X2 U280 ( .A(wsel[0]), .B(n988), .Y(n265) );
  NOR2X1 U281 ( .A(wsel[0]), .B(n988), .Y(n266) );
  NOR2X1 U282 ( .A(wsel[0]), .B(wsel[1]), .Y(n267) );
  BUFX4 U283 ( .A(rsel2[2]), .Y(n303) );
  NAND2X1 U284 ( .A(n286), .B(\reg[2][9] ), .Y(n623) );
  INVX1 U285 ( .A(n1286), .Y(n1183) );
  INVX2 U286 ( .A(n1078), .Y(n697) );
  INVX1 U287 ( .A(n1354), .Y(n1518) );
  INVX1 U288 ( .A(n1406), .Y(n1522) );
  INVX1 U289 ( .A(n1393), .Y(n1521) );
  INVX1 U290 ( .A(n1341), .Y(n1517) );
  INVX1 U291 ( .A(n1422), .Y(n1215) );
  INVX1 U292 ( .A(n1380), .Y(n1520) );
  INVX1 U295 ( .A(n1367), .Y(n1519) );
  INVX1 U296 ( .A(n1315), .Y(n1515) );
  INVX1 U297 ( .A(n1438), .Y(n1231) );
  INVX1 U298 ( .A(n1270), .Y(n1167) );
  AND2X2 U299 ( .A(\reg[14][3] ), .B(n385), .Y(n528) );
  INVX1 U300 ( .A(n1328), .Y(n1516) );
  INVX1 U301 ( .A(n1472), .Y(n1265) );
  INVX1 U302 ( .A(n1456), .Y(n1249) );
  INVX1 U303 ( .A(n1440), .Y(n1233) );
  INVX1 U304 ( .A(n1424), .Y(n1217) );
  INVX1 U305 ( .A(n1408), .Y(n1506) );
  INVX1 U306 ( .A(n1395), .Y(n1505) );
  INVX1 U307 ( .A(n1382), .Y(n1504) );
  INVX1 U308 ( .A(n1369), .Y(n1503) );
  INVX1 U309 ( .A(n1356), .Y(n1502) );
  INVX1 U310 ( .A(n1343), .Y(n1501) );
  INVX1 U311 ( .A(n1330), .Y(n1500) );
  INVX1 U312 ( .A(n1317), .Y(n1499) );
  INVX1 U313 ( .A(n1304), .Y(n1201) );
  INVX1 U314 ( .A(n1288), .Y(n1185) );
  INVX1 U315 ( .A(n1272), .Y(n1169) );
  INVX1 U317 ( .A(n1127), .Y(n1153) );
  INVX4 U318 ( .A(n401), .Y(n402) );
  INVX4 U319 ( .A(n401), .Y(n403) );
  INVX4 U320 ( .A(n409), .Y(n410) );
  INVX4 U321 ( .A(n409), .Y(n411) );
  INVX2 U322 ( .A(n379), .Y(n687) );
  INVX1 U323 ( .A(n1466), .Y(n1259) );
  INVX1 U324 ( .A(n1450), .Y(n1243) );
  INVX1 U325 ( .A(n1434), .Y(n1227) );
  INVX1 U326 ( .A(n1418), .Y(n1211) );
  INVX1 U327 ( .A(n1402), .Y(n1554) );
  INVX1 U328 ( .A(n1389), .Y(n1553) );
  INVX1 U329 ( .A(n1376), .Y(n1552) );
  INVX1 U330 ( .A(n1363), .Y(n1551) );
  INVX1 U331 ( .A(n1350), .Y(n1550) );
  INVX1 U332 ( .A(n1337), .Y(n1549) );
  INVX1 U333 ( .A(n1324), .Y(n1548) );
  INVX1 U334 ( .A(n1311), .Y(n1547) );
  INVX1 U335 ( .A(n1298), .Y(n1195) );
  INVX1 U336 ( .A(n1282), .Y(n1179) );
  INVX1 U337 ( .A(n1137), .Y(n1163) );
  INVX1 U338 ( .A(n1117), .Y(n1147) );
  INVX2 U339 ( .A(n323), .Y(n613) );
  NAND3X1 U340 ( .A(n263), .B(n268), .C(n618), .Y(rdata2[8]) );
  INVX1 U341 ( .A(n617), .Y(n268) );
  AOI22X1 U342 ( .A(n701), .B(\reg[15][1] ), .C(n613), .D(\reg[14][1] ), .Y(
        n494) );
  INVX2 U343 ( .A(n1069), .Y(n1072) );
  AOI22X1 U344 ( .A(n277), .B(reg0[10]), .C(n1090), .D(\reg[1][10] ), .Y(n639)
         );
  NAND3X1 U345 ( .A(n537), .B(n538), .C(n539), .Y(n540) );
  NOR2X1 U346 ( .A(n548), .B(n547), .Y(n549) );
  NAND3X1 U347 ( .A(n553), .B(n554), .C(n555), .Y(n556) );
  BUFX2 U348 ( .A(n311), .Y(n269) );
  INVX2 U349 ( .A(n419), .Y(n270) );
  INVX2 U350 ( .A(n419), .Y(n271) );
  BUFX4 U351 ( .A(n353), .Y(n272) );
  INVX2 U352 ( .A(n353), .Y(n377) );
  INVX2 U353 ( .A(n1096), .Y(n273) );
  INVX1 U354 ( .A(n1063), .Y(n274) );
  AND2X2 U355 ( .A(n730), .B(n325), .Y(n275) );
  BUFX2 U356 ( .A(n352), .Y(n375) );
  BUFX4 U357 ( .A(n352), .Y(n373) );
  INVX2 U358 ( .A(n377), .Y(n276) );
  INVX1 U359 ( .A(n464), .Y(n277) );
  INVX1 U360 ( .A(n464), .Y(n316) );
  BUFX4 U361 ( .A(n344), .Y(n278) );
  BUFX2 U362 ( .A(n697), .Y(n370) );
  INVX1 U363 ( .A(n1021), .Y(n279) );
  INVX2 U364 ( .A(n279), .Y(n280) );
  INVX1 U365 ( .A(n367), .Y(n281) );
  INVX2 U366 ( .A(n281), .Y(n282) );
  INVX4 U367 ( .A(n1064), .Y(n283) );
  INVX4 U368 ( .A(n1064), .Y(n284) );
  INVX2 U369 ( .A(n1064), .Y(n702) );
  INVX1 U370 ( .A(n464), .Y(n315) );
  INVX2 U371 ( .A(n464), .Y(n294) );
  AND2X2 U372 ( .A(n730), .B(n325), .Y(n285) );
  INVX1 U373 ( .A(n1092), .Y(n286) );
  OR2X2 U374 ( .A(rsel1[1]), .B(n720), .Y(n287) );
  INVX1 U375 ( .A(n348), .Y(n288) );
  INVX1 U376 ( .A(n309), .Y(n348) );
  INVX4 U377 ( .A(n384), .Y(n289) );
  INVX2 U378 ( .A(n1092), .Y(n384) );
  INVX2 U379 ( .A(n1076), .Y(n290) );
  INVX2 U380 ( .A(n1076), .Y(n334) );
  INVX4 U381 ( .A(n392), .Y(n393) );
  INVX4 U382 ( .A(n392), .Y(n394) );
  INVX4 U383 ( .A(n1063), .Y(n1036) );
  INVX2 U384 ( .A(n1080), .Y(n291) );
  INVX2 U385 ( .A(n1080), .Y(n292) );
  INVX2 U386 ( .A(n1080), .Y(n381) );
  BUFX2 U387 ( .A(n1036), .Y(n293) );
  AND2X2 U388 ( .A(n730), .B(n325), .Y(n295) );
  INVX1 U389 ( .A(n588), .Y(n296) );
  INVX4 U390 ( .A(n388), .Y(n389) );
  INVX4 U391 ( .A(n388), .Y(n390) );
  BUFX2 U392 ( .A(n355), .Y(n297) );
  INVX1 U393 ( .A(n301), .Y(n298) );
  INVX2 U394 ( .A(n967), .Y(n299) );
  INVX2 U395 ( .A(n977), .Y(n300) );
  NAND2X1 U396 ( .A(n470), .B(n303), .Y(n302) );
  BUFX2 U397 ( .A(rsel2[2]), .Y(n376) );
  INVX4 U398 ( .A(n377), .Y(n327) );
  INVX4 U399 ( .A(n1007), .Y(n977) );
  INVX2 U400 ( .A(n1069), .Y(n701) );
  BUFX4 U401 ( .A(rsel1[0]), .Y(n308) );
  INVX1 U402 ( .A(n276), .Y(n328) );
  AND2X2 U403 ( .A(n470), .B(n303), .Y(n304) );
  INVX8 U404 ( .A(rsel2[0]), .Y(n331) );
  INVX4 U405 ( .A(n342), .Y(n367) );
  INVX2 U406 ( .A(rsel1[1]), .Y(n305) );
  INVX4 U407 ( .A(n305), .Y(n306) );
  INVX2 U408 ( .A(n382), .Y(n307) );
  INVX2 U409 ( .A(n1098), .Y(n309) );
  INVX2 U410 ( .A(n1098), .Y(n686) );
  INVX1 U411 ( .A(n463), .Y(n310) );
  INVX1 U412 ( .A(n1463), .Y(n1256) );
  INVX1 U413 ( .A(n1447), .Y(n1240) );
  INVX1 U414 ( .A(n1431), .Y(n1224) );
  INVX1 U415 ( .A(n1415), .Y(n1208) );
  INVX1 U416 ( .A(n1399), .Y(n1578) );
  INVX4 U417 ( .A(n314), .Y(n317) );
  INVX4 U418 ( .A(n379), .Y(n312) );
  INVX4 U419 ( .A(n379), .Y(n313) );
  AND2X2 U420 ( .A(n383), .B(n719), .Y(n314) );
  BUFX4 U421 ( .A(rsel2[1]), .Y(n380) );
  INVX1 U422 ( .A(n1386), .Y(n1577) );
  INVX1 U423 ( .A(n1373), .Y(n1576) );
  INVX1 U424 ( .A(n1360), .Y(n1575) );
  INVX1 U425 ( .A(n1347), .Y(n1574) );
  INVX1 U426 ( .A(n1334), .Y(n1573) );
  INVX1 U427 ( .A(n1321), .Y(n1572) );
  INVX1 U428 ( .A(n1308), .Y(n1571) );
  INVX1 U429 ( .A(n1295), .Y(n1192) );
  INVX1 U430 ( .A(n1279), .Y(n1176) );
  INVX1 U431 ( .A(n1134), .Y(n1160) );
  INVX1 U432 ( .A(n1114), .Y(n1144) );
  INVX4 U433 ( .A(n317), .Y(n318) );
  INVX8 U434 ( .A(n317), .Y(n319) );
  INVX4 U435 ( .A(n337), .Y(n340) );
  INVX1 U436 ( .A(n343), .Y(n320) );
  INVX1 U437 ( .A(n315), .Y(n321) );
  INVX2 U438 ( .A(n321), .Y(n322) );
  INVX4 U439 ( .A(n385), .Y(n323) );
  INVX4 U440 ( .A(n356), .Y(n386) );
  INVX4 U441 ( .A(n287), .Y(n387) );
  BUFX2 U442 ( .A(n1090), .Y(n324) );
  INVX4 U443 ( .A(n463), .Y(n1090) );
  INVX1 U444 ( .A(n292), .Y(n382) );
  INVX4 U445 ( .A(n308), .Y(n325) );
  INVX1 U446 ( .A(n1098), .Y(n326) );
  INVX1 U447 ( .A(n258), .Y(n335) );
  INVX2 U448 ( .A(n1074), .Y(n698) );
  BUFX2 U449 ( .A(n276), .Y(n329) );
  INVX4 U450 ( .A(n341), .Y(n346) );
  INVX1 U451 ( .A(n313), .Y(n330) );
  INVX1 U452 ( .A(n1125), .Y(n1151) );
  INVX2 U453 ( .A(n331), .Y(n332) );
  INVX1 U454 ( .A(n295), .Y(n333) );
  INVX1 U455 ( .A(n289), .Y(n570) );
  INVX1 U456 ( .A(n289), .Y(n605) );
  NAND2X1 U457 ( .A(n712), .B(n325), .Y(n336) );
  NAND2X1 U458 ( .A(n713), .B(n383), .Y(n337) );
  INVX1 U459 ( .A(n644), .Y(n338) );
  NAND2X1 U460 ( .A(rsel2[3]), .B(n303), .Y(n339) );
  INVX8 U461 ( .A(n407), .Y(n408) );
  INVX1 U462 ( .A(n340), .Y(n1026) );
  NAND2X1 U463 ( .A(n732), .B(n383), .Y(n341) );
  NAND2X1 U464 ( .A(n358), .B(n369), .Y(n342) );
  INVX2 U465 ( .A(n1074), .Y(n343) );
  INVX1 U466 ( .A(n1078), .Y(n344) );
  INVX1 U467 ( .A(n371), .Y(n345) );
  INVX1 U468 ( .A(n346), .Y(n1010) );
  NOR2X1 U469 ( .A(n303), .B(n470), .Y(n347) );
  AND2X2 U470 ( .A(n475), .B(n331), .Y(n349) );
  INVX4 U471 ( .A(n349), .Y(n1064) );
  BUFX2 U472 ( .A(n355), .Y(n350) );
  BUFX4 U473 ( .A(n355), .Y(n351) );
  AND2X2 U474 ( .A(n460), .B(n473), .Y(n352) );
  INVX1 U475 ( .A(n375), .Y(n1096) );
  INVX2 U476 ( .A(wdata[5]), .Y(n404) );
  INVX2 U477 ( .A(wdata[8]), .Y(n412) );
  INVX2 U478 ( .A(wdata[4]), .Y(n401) );
  INVX2 U479 ( .A(wdata[3]), .Y(n398) );
  INVX2 U480 ( .A(wdata[2]), .Y(n395) );
  INVX2 U481 ( .A(wdata[13]), .Y(n424) );
  AND2X2 U482 ( .A(n358), .B(n304), .Y(n353) );
  INVX2 U483 ( .A(n995), .Y(n1475) );
  INVX2 U484 ( .A(n1013), .Y(n1476) );
  INVX2 U485 ( .A(n1030), .Y(n1477) );
  INVX2 U486 ( .A(n1049), .Y(n1478) );
  INVX2 U487 ( .A(n1066), .Y(n1479) );
  INVX2 U488 ( .A(n1084), .Y(n1480) );
  INVX2 U489 ( .A(n1102), .Y(n1481) );
  INVX2 U490 ( .A(n1119), .Y(n1482) );
  INVX2 U491 ( .A(wsel[2]), .Y(n427) );
  OR2X2 U492 ( .A(n738), .B(rsel1[1]), .Y(n354) );
  AND2X2 U493 ( .A(n383), .B(n737), .Y(n355) );
  OR2X2 U494 ( .A(rsel1[1]), .B(n720), .Y(n356) );
  AND2X2 U495 ( .A(n458), .B(n331), .Y(n357) );
  AND2X2 U496 ( .A(rsel2[0]), .B(rsel2[1]), .Y(n358) );
  AND2X2 U497 ( .A(n259), .B(n267), .Y(n359) );
  AND2X2 U498 ( .A(n259), .B(n265), .Y(n360) );
  AND2X2 U499 ( .A(n259), .B(n266), .Y(n361) );
  AND2X2 U500 ( .A(n259), .B(n264), .Y(n362) );
  AND2X2 U501 ( .A(n261), .B(n264), .Y(n363) );
  AND2X2 U502 ( .A(n265), .B(n261), .Y(n364) );
  AND2X2 U503 ( .A(n266), .B(n261), .Y(n365) );
  AND2X2 U504 ( .A(n267), .B(n261), .Y(n366) );
  NOR2X1 U505 ( .A(n303), .B(n470), .Y(n368) );
  INVX2 U506 ( .A(n395), .Y(n396) );
  INVX2 U507 ( .A(n395), .Y(n397) );
  INVX2 U508 ( .A(n419), .Y(n420) );
  INVX2 U509 ( .A(n419), .Y(n421) );
  INVX2 U510 ( .A(n404), .Y(n405) );
  INVX2 U511 ( .A(n404), .Y(n406) );
  INVX2 U512 ( .A(n424), .Y(n425) );
  INVX2 U513 ( .A(n424), .Y(n426) );
  INVX2 U514 ( .A(n412), .Y(n413) );
  INVX2 U515 ( .A(n412), .Y(n414) );
  INVX2 U516 ( .A(n398), .Y(n399) );
  INVX2 U517 ( .A(n398), .Y(n400) );
  BUFX2 U518 ( .A(n428), .Y(n436) );
  BUFX2 U519 ( .A(n428), .Y(n437) );
  BUFX2 U520 ( .A(n428), .Y(n438) );
  BUFX2 U521 ( .A(n429), .Y(n439) );
  BUFX2 U522 ( .A(n429), .Y(n440) );
  BUFX2 U523 ( .A(n429), .Y(n441) );
  BUFX2 U524 ( .A(n430), .Y(n442) );
  BUFX2 U525 ( .A(n430), .Y(n443) );
  BUFX2 U526 ( .A(n430), .Y(n444) );
  BUFX2 U527 ( .A(n431), .Y(n445) );
  BUFX2 U528 ( .A(n431), .Y(n446) );
  BUFX2 U529 ( .A(n431), .Y(n447) );
  BUFX2 U530 ( .A(n432), .Y(n448) );
  BUFX2 U531 ( .A(n432), .Y(n449) );
  BUFX2 U532 ( .A(n432), .Y(n450) );
  BUFX2 U533 ( .A(n433), .Y(n451) );
  BUFX2 U534 ( .A(n433), .Y(n452) );
  BUFX2 U535 ( .A(n433), .Y(n453) );
  BUFX2 U536 ( .A(n434), .Y(n454) );
  BUFX2 U537 ( .A(n434), .Y(n455) );
  BUFX2 U538 ( .A(n434), .Y(n456) );
  NOR2X1 U539 ( .A(rsel2[3]), .B(n376), .Y(n369) );
  BUFX2 U540 ( .A(n435), .Y(n457) );
  BUFX2 U541 ( .A(nReset), .Y(n435) );
  BUFX2 U542 ( .A(nReset), .Y(n428) );
  BUFX2 U543 ( .A(nReset), .Y(n429) );
  BUFX2 U544 ( .A(nReset), .Y(n430) );
  BUFX2 U545 ( .A(nReset), .Y(n431) );
  BUFX2 U546 ( .A(nReset), .Y(n432) );
  BUFX2 U547 ( .A(nReset), .Y(n433) );
  BUFX2 U548 ( .A(nReset), .Y(n434) );
  INVX1 U549 ( .A(\reg[2][15] ), .Y(n1091) );
  BUFX4 U550 ( .A(n697), .Y(n371) );
  BUFX4 U551 ( .A(n697), .Y(n372) );
  BUFX4 U552 ( .A(n352), .Y(n374) );
  BUFX4 U553 ( .A(rsel1[0]), .Y(n378) );
  INVX4 U554 ( .A(n357), .Y(n379) );
  INVX1 U555 ( .A(n1300), .Y(n1197) );
  INVX1 U556 ( .A(n1469), .Y(n1262) );
  INVX1 U557 ( .A(n1453), .Y(n1246) );
  INVX1 U558 ( .A(n1301), .Y(n1198) );
  INVX1 U559 ( .A(n1471), .Y(n1264) );
  INVX1 U560 ( .A(n1455), .Y(n1248) );
  INVX1 U561 ( .A(n1303), .Y(n1200) );
  INVX1 U562 ( .A(n1285), .Y(n1182) );
  INVX1 U563 ( .A(n1287), .Y(n1184) );
  INVX1 U564 ( .A(n1391), .Y(n1537) );
  INVX1 U565 ( .A(n1339), .Y(n1533) );
  INVX1 U566 ( .A(n1468), .Y(n1261) );
  INVX1 U567 ( .A(n1405), .Y(n1530) );
  INVX1 U568 ( .A(n1353), .Y(n1526) );
  INVX1 U569 ( .A(n1407), .Y(n1514) );
  INVX1 U570 ( .A(n1355), .Y(n1510) );
  INVX1 U571 ( .A(n1404), .Y(n1538) );
  INVX1 U572 ( .A(n1352), .Y(n1534) );
  INVX1 U573 ( .A(n1392), .Y(n1529) );
  INVX1 U574 ( .A(n1340), .Y(n1525) );
  INVX1 U575 ( .A(n1394), .Y(n1513) );
  INVX1 U576 ( .A(n1342), .Y(n1509) );
  INVX1 U577 ( .A(n1452), .Y(n1245) );
  INVX1 U578 ( .A(n1284), .Y(n1181) );
  INVX1 U579 ( .A(n1436), .Y(n1229) );
  INVX1 U580 ( .A(n1365), .Y(n1535) );
  INVX1 U581 ( .A(n1313), .Y(n1531) );
  INVX1 U582 ( .A(n1268), .Y(n1165) );
  INVX1 U583 ( .A(n1437), .Y(n1230) );
  INVX1 U584 ( .A(n1421), .Y(n1214) );
  INVX1 U585 ( .A(n1379), .Y(n1528) );
  INVX1 U586 ( .A(n1366), .Y(n1527) );
  INVX1 U587 ( .A(n1327), .Y(n1524) );
  INVX1 U588 ( .A(n1314), .Y(n1523) );
  INVX1 U589 ( .A(n1269), .Y(n1166) );
  INVX1 U590 ( .A(n1439), .Y(n1232) );
  INVX1 U591 ( .A(n1423), .Y(n1216) );
  INVX1 U592 ( .A(n1381), .Y(n1512) );
  INVX1 U593 ( .A(n1368), .Y(n1511) );
  INVX1 U594 ( .A(n1329), .Y(n1508) );
  INVX1 U595 ( .A(n1316), .Y(n1507) );
  INVX1 U596 ( .A(n1420), .Y(n1213) );
  INVX1 U597 ( .A(n1378), .Y(n1536) );
  INVX1 U598 ( .A(n338), .Y(n1071) );
  INVX1 U599 ( .A(n323), .Y(n578) );
  INVX1 U600 ( .A(n323), .Y(n560) );
  INVX4 U601 ( .A(wdata[10]), .Y(n417) );
  INVX1 U602 ( .A(n1124), .Y(n1150) );
  INVX1 U603 ( .A(n1271), .Y(n1168) );
  INVX4 U604 ( .A(wdata[12]), .Y(n422) );
  INVX1 U605 ( .A(n1126), .Y(n1152) );
  INVX1 U606 ( .A(n1326), .Y(n1532) );
  INVX4 U607 ( .A(wdata[9]), .Y(n415) );
  INVX1 U608 ( .A(n1123), .Y(n1149) );
  INVX1 U609 ( .A(n1465), .Y(n1258) );
  INVX1 U610 ( .A(n1449), .Y(n1242) );
  INVX1 U611 ( .A(n1297), .Y(n1194) );
  INVX1 U612 ( .A(n1281), .Y(n1178) );
  INVX1 U613 ( .A(n1401), .Y(n1562) );
  INVX1 U614 ( .A(n1349), .Y(n1558) );
  INVX1 U615 ( .A(n1388), .Y(n1561) );
  INVX1 U616 ( .A(n1336), .Y(n1557) );
  INVX1 U617 ( .A(n1433), .Y(n1226) );
  INVX1 U618 ( .A(n1417), .Y(n1210) );
  INVX1 U619 ( .A(n1375), .Y(n1560) );
  INVX1 U620 ( .A(n1362), .Y(n1559) );
  INVX1 U621 ( .A(n1323), .Y(n1556) );
  INVX1 U622 ( .A(n1409), .Y(n1498) );
  INVX1 U623 ( .A(n1383), .Y(n1496) );
  INVX1 U624 ( .A(n1370), .Y(n1495) );
  INVX1 U625 ( .A(n1357), .Y(n1494) );
  INVX1 U626 ( .A(n1331), .Y(n1492) );
  INVX1 U627 ( .A(n1318), .Y(n1491) );
  INVX1 U628 ( .A(n1410), .Y(n1490) );
  INVX1 U629 ( .A(n1384), .Y(n1488) );
  INVX1 U630 ( .A(n1371), .Y(n1487) );
  INVX1 U631 ( .A(n1358), .Y(n1486) );
  INVX1 U632 ( .A(n1332), .Y(n1484) );
  INVX1 U633 ( .A(n1319), .Y(n1483) );
  INVX1 U634 ( .A(n1396), .Y(n1497) );
  INVX1 U635 ( .A(n1344), .Y(n1493) );
  INVX1 U636 ( .A(n1397), .Y(n1489) );
  INVX1 U637 ( .A(n1345), .Y(n1485) );
  INVX1 U638 ( .A(n1473), .Y(n1266) );
  INVX1 U639 ( .A(n1441), .Y(n1234) );
  INVX1 U640 ( .A(n1273), .Y(n1170) );
  INVX1 U641 ( .A(n1305), .Y(n1202) );
  INVX1 U642 ( .A(n1425), .Y(n1218) );
  INVX1 U643 ( .A(n1128), .Y(n1154) );
  INVX1 U644 ( .A(n1457), .Y(n1250) );
  AND2X2 U645 ( .A(rsel1[1]), .B(n308), .Y(n383) );
  INVX1 U646 ( .A(n1474), .Y(n1267) );
  INVX1 U647 ( .A(n1442), .Y(n1235) );
  INVX1 U648 ( .A(n1274), .Y(n1171) );
  INVX1 U649 ( .A(n1306), .Y(n1203) );
  INVX1 U650 ( .A(n1426), .Y(n1219) );
  INVX1 U651 ( .A(n1129), .Y(n1155) );
  INVX1 U652 ( .A(n1458), .Y(n1251) );
  INVX1 U653 ( .A(n1310), .Y(n1555) );
  INVX1 U654 ( .A(n1136), .Y(n1162) );
  INVX4 U655 ( .A(wdata[6]), .Y(n407) );
  INVX1 U656 ( .A(n1289), .Y(n1186) );
  INVX1 U657 ( .A(n1116), .Y(n1146) );
  INVX1 U658 ( .A(n1290), .Y(n1187) );
  INVX4 U659 ( .A(n710), .Y(n1024) );
  INVX4 U660 ( .A(n1022), .Y(n968) );
  INVX4 U661 ( .A(n1023), .Y(n967) );
  INVX4 U662 ( .A(n718), .Y(n1021) );
  INVX4 U663 ( .A(n728), .Y(n1008) );
  INVX4 U664 ( .A(n736), .Y(n1006) );
  INVX8 U665 ( .A(n415), .Y(n416) );
  INVX8 U666 ( .A(n417), .Y(n418) );
  INVX8 U667 ( .A(n422), .Y(n423) );
  INVX2 U668 ( .A(rsel2[3]), .Y(n470) );
  NAND2X1 U669 ( .A(n470), .B(n303), .Y(n459) );
  NAND3X1 U670 ( .A(n331), .B(n380), .C(n304), .Y(n1098) );
  AOI22X1 U671 ( .A(\reg[6][0] ), .B(n309), .C(\reg[7][0] ), .D(n276), .Y(n462) );
  NOR2X1 U672 ( .A(rsel2[1]), .B(n459), .Y(n458) );
  NOR2X1 U673 ( .A(n331), .B(n302), .Y(n460) );
  INVX2 U674 ( .A(rsel2[1]), .Y(n473) );
  AOI22X1 U675 ( .A(\reg[4][0] ), .B(n312), .C(\reg[5][0] ), .D(n374), .Y(n461) );
  NAND2X1 U676 ( .A(n462), .B(n461), .Y(n469) );
  NAND3X1 U677 ( .A(n331), .B(n369), .C(n380), .Y(n1092) );
  INVX2 U678 ( .A(\reg[2][0] ), .Y(n1275) );
  OR2X2 U679 ( .A(n289), .B(n1275), .Y(n467) );
  NAND2X1 U680 ( .A(\reg[3][0] ), .B(n367), .Y(n466) );
  NAND3X1 U681 ( .A(n473), .B(n369), .C(n332), .Y(n463) );
  NAND3X1 U682 ( .A(n473), .B(n369), .C(n331), .Y(n464) );
  AOI22X1 U683 ( .A(\reg[1][0] ), .B(n1090), .C(reg0[0]), .D(n316), .Y(n465)
         );
  NAND3X1 U684 ( .A(n467), .B(n466), .C(n465), .Y(n468) );
  NOR2X1 U685 ( .A(n469), .B(n468), .Y(n484) );
  NAND3X1 U686 ( .A(n368), .B(n380), .C(n331), .Y(n1078) );
  NAND2X1 U687 ( .A(n358), .B(n347), .Y(n1080) );
  AOI22X1 U688 ( .A(\reg[10][0] ), .B(n372), .C(\reg[11][0] ), .D(n292), .Y(
        n472) );
  NAND3X1 U689 ( .A(n368), .B(n473), .C(n331), .Y(n1074) );
  NAND3X1 U690 ( .A(n347), .B(n473), .C(n332), .Y(n1076) );
  AOI22X1 U691 ( .A(\reg[8][0] ), .B(n343), .C(\reg[9][0] ), .D(n258), .Y(n471) );
  NAND2X1 U692 ( .A(n472), .B(n471), .Y(n482) );
  NAND2X1 U693 ( .A(rsel2[3]), .B(n376), .Y(n476) );
  NOR2X1 U694 ( .A(n331), .B(n476), .Y(n474) );
  NAND2X1 U695 ( .A(n473), .B(n474), .Y(n1063) );
  NOR2X1 U696 ( .A(rsel2[1]), .B(n339), .Y(n475) );
  AOI22X1 U697 ( .A(\reg[13][0] ), .B(n1036), .C(\reg[12][0] ), .D(n284), .Y(
        n480) );
  INVX2 U698 ( .A(n476), .Y(n477) );
  NAND2X1 U699 ( .A(n477), .B(n358), .Y(n1069) );
  NAND3X1 U700 ( .A(n331), .B(n380), .C(n477), .Y(n1070) );
  INVX2 U701 ( .A(\reg[14][0] ), .Y(n1443) );
  NOR2X1 U702 ( .A(n323), .B(n1443), .Y(n478) );
  AOI21X1 U703 ( .A(\reg[15][0] ), .B(n1072), .C(n478), .Y(n479) );
  NAND2X1 U704 ( .A(n480), .B(n479), .Y(n481) );
  NOR2X1 U705 ( .A(n482), .B(n481), .Y(n483) );
  NAND2X1 U706 ( .A(n484), .B(n483), .Y(rdata2[0]) );
  AOI22X1 U707 ( .A(\reg[6][1] ), .B(n326), .C(\reg[7][1] ), .D(n327), .Y(n486) );
  AOI22X1 U708 ( .A(\reg[4][1] ), .B(n687), .C(\reg[5][1] ), .D(n374), .Y(n485) );
  NAND2X1 U709 ( .A(n486), .B(n485), .Y(n491) );
  INVX2 U710 ( .A(\reg[2][1] ), .Y(n1276) );
  OR2X2 U711 ( .A(n289), .B(n1276), .Y(n489) );
  NAND2X1 U712 ( .A(\reg[3][1] ), .B(n367), .Y(n488) );
  AOI22X1 U713 ( .A(\reg[1][1] ), .B(n1090), .C(reg0[1]), .D(n277), .Y(n487)
         );
  NAND3X1 U714 ( .A(n489), .B(n488), .C(n487), .Y(n490) );
  NOR2X1 U715 ( .A(n491), .B(n490), .Y(n499) );
  AOI22X1 U716 ( .A(\reg[10][1] ), .B(n278), .C(\reg[11][1] ), .D(n291), .Y(
        n493) );
  AOI22X1 U717 ( .A(n698), .B(\reg[8][1] ), .C(\reg[9][1] ), .D(n334), .Y(n492) );
  NAND2X1 U718 ( .A(n492), .B(n493), .Y(n497) );
  AOI22X1 U719 ( .A(n1036), .B(\reg[13][1] ), .C(\reg[12][1] ), .D(n284), .Y(
        n495) );
  INVX2 U720 ( .A(\reg[14][1] ), .Y(n1444) );
  NAND2X1 U721 ( .A(n495), .B(n494), .Y(n496) );
  NOR2X1 U722 ( .A(n497), .B(n496), .Y(n498) );
  NAND2X1 U723 ( .A(n499), .B(n498), .Y(rdata2[1]) );
  AOI22X1 U724 ( .A(\reg[6][2] ), .B(n686), .C(\reg[7][2] ), .D(n276), .Y(n501) );
  AOI22X1 U725 ( .A(\reg[4][2] ), .B(n312), .C(\reg[5][2] ), .D(n374), .Y(n500) );
  NAND2X1 U726 ( .A(n501), .B(n500), .Y(n507) );
  INVX2 U727 ( .A(\reg[2][2] ), .Y(n502) );
  OR2X2 U728 ( .A(n289), .B(n502), .Y(n505) );
  NAND2X1 U729 ( .A(\reg[3][2] ), .B(n367), .Y(n504) );
  AOI22X1 U730 ( .A(\reg[1][2] ), .B(n310), .C(reg0[2]), .D(n316), .Y(n503) );
  NAND3X1 U731 ( .A(n505), .B(n504), .C(n503), .Y(n506) );
  NOR2X1 U732 ( .A(n507), .B(n506), .Y(n517) );
  AOI22X1 U733 ( .A(\reg[10][2] ), .B(n278), .C(\reg[11][2] ), .D(n292), .Y(
        n509) );
  AOI22X1 U734 ( .A(\reg[8][2] ), .B(n343), .C(\reg[9][2] ), .D(n258), .Y(n508) );
  NAND2X1 U735 ( .A(n509), .B(n508), .Y(n515) );
  AOI22X1 U736 ( .A(\reg[13][2] ), .B(n1036), .C(\reg[12][2] ), .D(n283), .Y(
        n513) );
  INVX2 U737 ( .A(\reg[14][2] ), .Y(n510) );
  NOR2X1 U738 ( .A(n323), .B(n510), .Y(n511) );
  AOI21X1 U739 ( .A(\reg[15][2] ), .B(n1072), .C(n511), .Y(n512) );
  NAND2X1 U740 ( .A(n512), .B(n513), .Y(n514) );
  NOR2X1 U741 ( .A(n515), .B(n514), .Y(n516) );
  NAND2X1 U742 ( .A(n517), .B(n516), .Y(rdata2[2]) );
  AOI22X1 U743 ( .A(\reg[6][3] ), .B(n686), .C(\reg[7][3] ), .D(n276), .Y(n519) );
  AOI22X1 U744 ( .A(\reg[4][3] ), .B(n313), .C(\reg[5][3] ), .D(n375), .Y(n518) );
  NAND2X1 U745 ( .A(n519), .B(n518), .Y(n525) );
  INVX2 U746 ( .A(\reg[2][3] ), .Y(n520) );
  OR2X2 U747 ( .A(n289), .B(n520), .Y(n523) );
  NAND2X1 U748 ( .A(\reg[3][3] ), .B(n367), .Y(n522) );
  AOI22X1 U749 ( .A(\reg[1][3] ), .B(n1090), .C(reg0[3]), .D(n316), .Y(n521)
         );
  NAND3X1 U750 ( .A(n523), .B(n522), .C(n521), .Y(n524) );
  NOR2X1 U751 ( .A(n525), .B(n524), .Y(n534) );
  AOI22X1 U752 ( .A(\reg[10][3] ), .B(n278), .C(\reg[11][3] ), .D(n292), .Y(
        n527) );
  AOI22X1 U753 ( .A(n698), .B(\reg[8][3] ), .C(\reg[9][3] ), .D(n257), .Y(n526) );
  NAND2X1 U754 ( .A(n526), .B(n527), .Y(n532) );
  AOI22X1 U755 ( .A(n1036), .B(\reg[13][3] ), .C(\reg[12][3] ), .D(n284), .Y(
        n530) );
  AOI21X1 U756 ( .A(\reg[15][3] ), .B(n701), .C(n528), .Y(n529) );
  NAND2X1 U757 ( .A(n530), .B(n529), .Y(n531) );
  NOR2X1 U758 ( .A(n532), .B(n531), .Y(n533) );
  NAND2X1 U759 ( .A(n533), .B(n534), .Y(rdata2[3]) );
  AOI22X1 U760 ( .A(\reg[7][4] ), .B(n327), .C(\reg[6][4] ), .D(n309), .Y(n536) );
  AOI22X1 U761 ( .A(\reg[5][4] ), .B(n375), .C(\reg[4][4] ), .D(n312), .Y(n535) );
  NAND2X1 U762 ( .A(n536), .B(n535), .Y(n541) );
  AOI22X1 U763 ( .A(n277), .B(reg0[4]), .C(\reg[1][4] ), .D(n1090), .Y(n539)
         );
  NAND2X1 U764 ( .A(\reg[3][4] ), .B(n367), .Y(n538) );
  NAND2X1 U765 ( .A(n588), .B(\reg[2][4] ), .Y(n537) );
  NOR2X1 U766 ( .A(n541), .B(n540), .Y(n550) );
  AOI22X1 U767 ( .A(\reg[11][4] ), .B(n292), .C(\reg[10][4] ), .D(n372), .Y(
        n543) );
  AOI22X1 U768 ( .A(\reg[9][4] ), .B(n258), .C(\reg[8][4] ), .D(n343), .Y(n542) );
  NAND2X1 U769 ( .A(n543), .B(n542), .Y(n548) );
  NAND2X1 U770 ( .A(\reg[15][4] ), .B(n1072), .Y(n546) );
  NAND2X1 U771 ( .A(\reg[14][4] ), .B(n613), .Y(n545) );
  AOI22X1 U772 ( .A(\reg[12][4] ), .B(n283), .C(n1036), .D(\reg[13][4] ), .Y(
        n544) );
  NAND3X1 U773 ( .A(n544), .B(n545), .C(n546), .Y(n547) );
  NAND2X1 U774 ( .A(n550), .B(n549), .Y(rdata2[4]) );
  AOI22X1 U775 ( .A(\reg[7][5] ), .B(n327), .C(\reg[6][5] ), .D(n686), .Y(n552) );
  AOI22X1 U776 ( .A(\reg[5][5] ), .B(n374), .C(\reg[4][5] ), .D(n313), .Y(n551) );
  NAND2X1 U777 ( .A(n552), .B(n551), .Y(n557) );
  AOI22X1 U778 ( .A(n315), .B(reg0[5]), .C(\reg[1][5] ), .D(n1090), .Y(n555)
         );
  NAND2X1 U779 ( .A(\reg[3][5] ), .B(n367), .Y(n554) );
  NAND2X1 U780 ( .A(n588), .B(\reg[2][5] ), .Y(n553) );
  NOR2X1 U781 ( .A(n557), .B(n556), .Y(n567) );
  AOI22X1 U782 ( .A(\reg[11][5] ), .B(n292), .C(\reg[10][5] ), .D(n372), .Y(
        n559) );
  AOI22X1 U783 ( .A(\reg[9][5] ), .B(n257), .C(\reg[8][5] ), .D(n343), .Y(n558) );
  NAND2X1 U784 ( .A(n559), .B(n558), .Y(n565) );
  NAND2X1 U785 ( .A(\reg[15][5] ), .B(n1072), .Y(n563) );
  NAND2X1 U786 ( .A(\reg[14][5] ), .B(n560), .Y(n562) );
  AOI22X1 U787 ( .A(\reg[12][5] ), .B(n284), .C(\reg[13][5] ), .D(n1036), .Y(
        n561) );
  NAND3X1 U788 ( .A(n563), .B(n562), .C(n561), .Y(n564) );
  NOR2X1 U789 ( .A(n565), .B(n564), .Y(n566) );
  NAND2X1 U790 ( .A(n567), .B(n566), .Y(rdata2[5]) );
  AOI22X1 U791 ( .A(\reg[7][6] ), .B(n327), .C(\reg[6][6] ), .D(n686), .Y(n569) );
  AOI22X1 U792 ( .A(\reg[5][6] ), .B(n375), .C(\reg[4][6] ), .D(n313), .Y(n568) );
  NAND2X1 U793 ( .A(n569), .B(n568), .Y(n575) );
  AOI22X1 U794 ( .A(reg0[6]), .B(n294), .C(\reg[1][6] ), .D(n1090), .Y(n573)
         );
  NAND2X1 U795 ( .A(\reg[3][6] ), .B(n367), .Y(n572) );
  NAND2X1 U796 ( .A(n570), .B(\reg[2][6] ), .Y(n571) );
  NAND3X1 U797 ( .A(n573), .B(n572), .C(n571), .Y(n574) );
  NOR2X1 U798 ( .A(n575), .B(n574), .Y(n585) );
  AOI22X1 U799 ( .A(\reg[11][6] ), .B(n291), .C(\reg[10][6] ), .D(n372), .Y(
        n577) );
  AOI22X1 U800 ( .A(\reg[9][6] ), .B(n257), .C(\reg[8][6] ), .D(n698), .Y(n576) );
  NAND2X1 U801 ( .A(n577), .B(n576), .Y(n583) );
  NAND2X1 U802 ( .A(\reg[15][6] ), .B(n1072), .Y(n581) );
  NAND2X1 U803 ( .A(\reg[14][6] ), .B(n578), .Y(n580) );
  AOI22X1 U804 ( .A(\reg[12][6] ), .B(n283), .C(\reg[13][6] ), .D(n1036), .Y(
        n579) );
  NAND3X1 U805 ( .A(n581), .B(n580), .C(n579), .Y(n582) );
  NOR2X1 U806 ( .A(n583), .B(n582), .Y(n584) );
  NAND2X1 U807 ( .A(n585), .B(n584), .Y(rdata2[6]) );
  AOI22X1 U808 ( .A(\reg[7][7] ), .B(n327), .C(\reg[6][7] ), .D(n686), .Y(n587) );
  AOI22X1 U809 ( .A(\reg[5][7] ), .B(n374), .C(\reg[4][7] ), .D(n313), .Y(n586) );
  NAND2X1 U810 ( .A(n586), .B(n587), .Y(n593) );
  AOI22X1 U811 ( .A(reg0[7]), .B(n315), .C(\reg[1][7] ), .D(n1090), .Y(n591)
         );
  NAND2X1 U812 ( .A(\reg[3][7] ), .B(n367), .Y(n590) );
  NAND2X1 U813 ( .A(n588), .B(\reg[2][7] ), .Y(n589) );
  NAND3X1 U814 ( .A(n589), .B(n590), .C(n591), .Y(n592) );
  NOR2X1 U815 ( .A(n593), .B(n592), .Y(n602) );
  AOI22X1 U816 ( .A(\reg[11][7] ), .B(n291), .C(\reg[10][7] ), .D(n372), .Y(
        n595) );
  AOI22X1 U817 ( .A(\reg[9][7] ), .B(n334), .C(\reg[8][7] ), .D(n343), .Y(n594) );
  NAND2X1 U818 ( .A(n594), .B(n595), .Y(n600) );
  NAND2X1 U819 ( .A(\reg[15][7] ), .B(n1072), .Y(n598) );
  NAND2X1 U820 ( .A(\reg[14][7] ), .B(n560), .Y(n597) );
  AOI22X1 U821 ( .A(\reg[12][7] ), .B(n284), .C(\reg[13][7] ), .D(n1036), .Y(
        n596) );
  NAND3X1 U822 ( .A(n598), .B(n597), .C(n596), .Y(n599) );
  NOR2X1 U823 ( .A(n600), .B(n599), .Y(n601) );
  NAND2X1 U824 ( .A(n601), .B(n602), .Y(rdata2[7]) );
  AOI22X1 U825 ( .A(n272), .B(\reg[7][8] ), .C(\reg[6][8] ), .D(n309), .Y(n604) );
  AOI22X1 U826 ( .A(n373), .B(\reg[5][8] ), .C(\reg[4][8] ), .D(n313), .Y(n603) );
  NAND2X1 U827 ( .A(n604), .B(n603), .Y(n610) );
  AOI22X1 U828 ( .A(n294), .B(reg0[8]), .C(\reg[1][8] ), .D(n1090), .Y(n608)
         );
  NAND2X1 U829 ( .A(\reg[3][8] ), .B(n367), .Y(n607) );
  NAND2X1 U830 ( .A(n605), .B(\reg[2][8] ), .Y(n606) );
  NAND3X1 U831 ( .A(n607), .B(n606), .C(n608), .Y(n609) );
  NOR2X1 U832 ( .A(n610), .B(n609), .Y(n618) );
  AOI22X1 U833 ( .A(\reg[11][8] ), .B(n381), .C(\reg[10][8] ), .D(n371), .Y(
        n612) );
  AOI22X1 U834 ( .A(\reg[9][8] ), .B(n334), .C(\reg[8][8] ), .D(n698), .Y(n611) );
  NAND2X1 U835 ( .A(\reg[15][8] ), .B(n701), .Y(n616) );
  NAND2X1 U836 ( .A(\reg[14][8] ), .B(n613), .Y(n615) );
  AOI22X1 U837 ( .A(\reg[12][8] ), .B(n702), .C(n274), .D(\reg[13][8] ), .Y(
        n614) );
  NAND3X1 U838 ( .A(n614), .B(n615), .C(n616), .Y(n617) );
  AOI22X1 U839 ( .A(\reg[6][9] ), .B(n326), .C(\reg[7][9] ), .D(n272), .Y(n620) );
  AOI22X1 U840 ( .A(\reg[4][9] ), .B(n687), .C(n373), .D(\reg[5][9] ), .Y(n619) );
  NAND2X1 U841 ( .A(n619), .B(n620), .Y(n625) );
  NAND2X1 U842 ( .A(\reg[3][9] ), .B(n367), .Y(n622) );
  AOI22X1 U843 ( .A(\reg[1][9] ), .B(n310), .C(reg0[9]), .D(n294), .Y(n621) );
  NAND3X1 U844 ( .A(n623), .B(n622), .C(n621), .Y(n624) );
  NOR2X1 U845 ( .A(n625), .B(n624), .Y(n634) );
  AOI22X1 U846 ( .A(\reg[10][9] ), .B(n370), .C(\reg[11][9] ), .D(n381), .Y(
        n627) );
  AOI22X1 U847 ( .A(\reg[8][9] ), .B(n698), .C(\reg[9][9] ), .D(n334), .Y(n626) );
  NAND2X1 U848 ( .A(n626), .B(n627), .Y(n632) );
  AOI22X1 U849 ( .A(\reg[13][9] ), .B(n274), .C(\reg[12][9] ), .D(n702), .Y(
        n630) );
  AOI21X1 U850 ( .A(\reg[15][9] ), .B(n701), .C(n628), .Y(n629) );
  NAND2X1 U851 ( .A(n630), .B(n629), .Y(n631) );
  NOR2X1 U852 ( .A(n631), .B(n632), .Y(n633) );
  NAND2X1 U853 ( .A(n634), .B(n633), .Y(rdata2[9]) );
  AOI22X1 U854 ( .A(n272), .B(\reg[7][10] ), .C(\reg[6][10] ), .D(n686), .Y(
        n636) );
  AOI22X1 U855 ( .A(n373), .B(\reg[5][10] ), .C(\reg[4][10] ), .D(n312), .Y(
        n635) );
  NAND2X1 U856 ( .A(n636), .B(n635), .Y(n641) );
  NAND2X1 U857 ( .A(\reg[3][10] ), .B(n367), .Y(n638) );
  NAND2X1 U858 ( .A(n286), .B(\reg[2][10] ), .Y(n637) );
  NAND3X1 U859 ( .A(n637), .B(n638), .C(n639), .Y(n640) );
  NOR2X1 U860 ( .A(n641), .B(n640), .Y(n651) );
  AOI22X1 U861 ( .A(\reg[11][10] ), .B(n381), .C(\reg[10][10] ), .D(n278), .Y(
        n643) );
  AOI22X1 U862 ( .A(\reg[9][10] ), .B(n334), .C(\reg[8][10] ), .D(n698), .Y(
        n642) );
  NAND2X1 U863 ( .A(n643), .B(n642), .Y(n649) );
  NAND2X1 U864 ( .A(\reg[15][10] ), .B(n701), .Y(n647) );
  NAND2X1 U865 ( .A(\reg[14][10] ), .B(n644), .Y(n646) );
  AOI22X1 U866 ( .A(\reg[12][10] ), .B(n283), .C(n1036), .D(\reg[13][10] ), 
        .Y(n645) );
  NAND3X1 U867 ( .A(n647), .B(n646), .C(n645), .Y(n648) );
  NOR2X1 U868 ( .A(n649), .B(n648), .Y(n650) );
  NAND2X1 U869 ( .A(n651), .B(n650), .Y(rdata2[10]) );
  AOI22X1 U870 ( .A(\reg[7][11] ), .B(n327), .C(\reg[6][11] ), .D(n309), .Y(
        n653) );
  AOI22X1 U871 ( .A(n374), .B(\reg[5][11] ), .C(\reg[4][11] ), .D(n312), .Y(
        n652) );
  NAND2X1 U872 ( .A(n652), .B(n653), .Y(n658) );
  AOI22X1 U873 ( .A(n294), .B(reg0[11]), .C(n1090), .D(\reg[1][11] ), .Y(n656)
         );
  NAND2X1 U874 ( .A(\reg[3][11] ), .B(n367), .Y(n655) );
  NAND2X1 U875 ( .A(n570), .B(\reg[2][11] ), .Y(n654) );
  NAND3X1 U876 ( .A(n656), .B(n655), .C(n654), .Y(n657) );
  NOR2X1 U877 ( .A(n658), .B(n657), .Y(n667) );
  AOI22X1 U878 ( .A(n291), .B(\reg[11][11] ), .C(\reg[10][11] ), .D(n371), .Y(
        n660) );
  AOI22X1 U879 ( .A(\reg[9][11] ), .B(n257), .C(\reg[8][11] ), .D(n343), .Y(
        n659) );
  NAND2X1 U880 ( .A(n660), .B(n659), .Y(n665) );
  NAND2X1 U881 ( .A(\reg[15][11] ), .B(n1072), .Y(n663) );
  NAND2X1 U882 ( .A(\reg[14][11] ), .B(n578), .Y(n662) );
  AOI22X1 U883 ( .A(\reg[12][11] ), .B(n283), .C(n1036), .D(\reg[13][11] ), 
        .Y(n661) );
  NAND3X1 U884 ( .A(n663), .B(n662), .C(n661), .Y(n664) );
  NOR2X1 U885 ( .A(n665), .B(n664), .Y(n666) );
  NAND2X1 U886 ( .A(n667), .B(n666), .Y(rdata2[11]) );
  AOI22X1 U887 ( .A(n272), .B(\reg[7][12] ), .C(\reg[6][12] ), .D(n309), .Y(
        n669) );
  AOI22X1 U888 ( .A(n373), .B(\reg[5][12] ), .C(\reg[4][12] ), .D(n312), .Y(
        n668) );
  NAND2X1 U889 ( .A(n669), .B(n668), .Y(n674) );
  AOI22X1 U890 ( .A(reg0[12]), .B(n294), .C(\reg[1][12] ), .D(n1090), .Y(n672)
         );
  NAND2X1 U891 ( .A(\reg[3][12] ), .B(n367), .Y(n671) );
  NAND2X1 U892 ( .A(n286), .B(\reg[2][12] ), .Y(n670) );
  NAND3X1 U893 ( .A(n670), .B(n671), .C(n672), .Y(n673) );
  NOR2X1 U894 ( .A(n674), .B(n673), .Y(n685) );
  AOI22X1 U895 ( .A(\reg[11][12] ), .B(n291), .C(\reg[10][12] ), .D(n371), .Y(
        n676) );
  AOI22X1 U896 ( .A(\reg[9][12] ), .B(n334), .C(\reg[8][12] ), .D(n343), .Y(
        n675) );
  NAND2X1 U897 ( .A(n675), .B(n676), .Y(n683) );
  NAND2X1 U898 ( .A(\reg[15][12] ), .B(n701), .Y(n681) );
  NAND2X1 U899 ( .A(\reg[14][12] ), .B(n644), .Y(n680) );
  AOI22X1 U900 ( .A(\reg[12][12] ), .B(n284), .C(\reg[13][12] ), .D(n1036), 
        .Y(n677) );
  NAND3X1 U901 ( .A(n681), .B(n680), .C(n677), .Y(n682) );
  NOR2X1 U902 ( .A(n683), .B(n682), .Y(n684) );
  NAND2X1 U903 ( .A(n685), .B(n684), .Y(rdata2[12]) );
  AOI22X1 U904 ( .A(\reg[7][13] ), .B(n329), .C(\reg[6][13] ), .D(n288), .Y(
        n689) );
  AOI22X1 U905 ( .A(\reg[5][13] ), .B(n273), .C(\reg[4][13] ), .D(n312), .Y(
        n688) );
  NAND2X1 U906 ( .A(n689), .B(n688), .Y(n696) );
  AOI22X1 U907 ( .A(reg0[13]), .B(n322), .C(\reg[1][13] ), .D(n324), .Y(n694)
         );
  NAND2X1 U908 ( .A(\reg[3][13] ), .B(n282), .Y(n693) );
  NAND2X1 U909 ( .A(n286), .B(\reg[2][13] ), .Y(n692) );
  NAND3X1 U910 ( .A(n694), .B(n693), .C(n692), .Y(n695) );
  NOR2X1 U911 ( .A(n696), .B(n695), .Y(n709) );
  AOI22X1 U912 ( .A(\reg[11][13] ), .B(n307), .C(\reg[10][13] ), .D(n371), .Y(
        n700) );
  AOI22X1 U913 ( .A(\reg[9][13] ), .B(n258), .C(\reg[8][13] ), .D(n343), .Y(
        n699) );
  NAND2X1 U914 ( .A(n700), .B(n699), .Y(n707) );
  NAND2X1 U915 ( .A(\reg[15][13] ), .B(n1072), .Y(n705) );
  NAND2X1 U916 ( .A(\reg[14][13] ), .B(n1071), .Y(n704) );
  AOI22X1 U917 ( .A(\reg[12][13] ), .B(n284), .C(\reg[13][13] ), .D(n293), .Y(
        n703) );
  NAND3X1 U918 ( .A(n705), .B(n704), .C(n703), .Y(n706) );
  NOR2X1 U919 ( .A(n707), .B(n706), .Y(n708) );
  NAND2X1 U920 ( .A(n709), .B(n708), .Y(rdata2[13]) );
  INVX2 U921 ( .A(rsel1[3]), .Y(n717) );
  NAND2X1 U922 ( .A(rsel1[2]), .B(n717), .Y(n711) );
  INVX2 U923 ( .A(n711), .Y(n713) );
  NAND2X1 U924 ( .A(\reg[7][0] ), .B(n340), .Y(n716) );
  NAND3X1 U925 ( .A(n713), .B(n306), .C(n325), .Y(n710) );
  NAND2X1 U926 ( .A(\reg[6][0] ), .B(n1024), .Y(n715) );
  NOR2X1 U927 ( .A(rsel1[1]), .B(n711), .Y(n712) );
  NAND2X1 U928 ( .A(n712), .B(n325), .Y(n1022) );
  NAND3X1 U929 ( .A(n713), .B(n378), .C(n731), .Y(n1023) );
  AOI22X1 U930 ( .A(\reg[4][0] ), .B(n301), .C(\reg[5][0] ), .D(n967), .Y(n714) );
  NAND3X1 U931 ( .A(n716), .B(n715), .C(n714), .Y(n726) );
  INVX2 U932 ( .A(rsel1[2]), .Y(n727) );
  NAND2X1 U933 ( .A(n717), .B(n727), .Y(n721) );
  INVX2 U934 ( .A(n721), .Y(n719) );
  NAND3X1 U935 ( .A(n306), .B(n719), .C(n325), .Y(n718) );
  NAND2X1 U936 ( .A(\reg[2][0] ), .B(n1021), .Y(n724) );
  NAND2X1 U937 ( .A(\reg[3][0] ), .B(n319), .Y(n723) );
  NAND2X1 U938 ( .A(n378), .B(n719), .Y(n720) );
  NOR3X1 U939 ( .A(n378), .B(rsel1[1]), .C(n721), .Y(n1020) );
  AOI22X1 U940 ( .A(\reg[1][0] ), .B(n387), .C(reg0[0]), .D(n389), .Y(n722) );
  NAND3X1 U941 ( .A(n724), .B(n723), .C(n722), .Y(n725) );
  NOR2X1 U942 ( .A(n726), .B(n725), .Y(n746) );
  NAND2X1 U943 ( .A(rsel1[3]), .B(n727), .Y(n729) );
  INVX2 U944 ( .A(n729), .Y(n732) );
  NAND2X1 U945 ( .A(\reg[11][0] ), .B(n346), .Y(n735) );
  NAND3X1 U946 ( .A(n732), .B(n306), .C(n325), .Y(n728) );
  NAND2X1 U947 ( .A(\reg[10][0] ), .B(n1008), .Y(n734) );
  NOR2X1 U948 ( .A(rsel1[1]), .B(n729), .Y(n730) );
  NAND3X1 U949 ( .A(n732), .B(n378), .C(n731), .Y(n1007) );
  AOI22X1 U950 ( .A(\reg[8][0] ), .B(n285), .C(\reg[9][0] ), .D(n977), .Y(n733) );
  NAND3X1 U951 ( .A(n735), .B(n734), .C(n733), .Y(n744) );
  NAND2X1 U952 ( .A(rsel1[3]), .B(rsel1[2]), .Y(n739) );
  INVX2 U953 ( .A(n739), .Y(n737) );
  NAND3X1 U954 ( .A(n737), .B(n306), .C(n325), .Y(n736) );
  NAND2X1 U955 ( .A(\reg[14][0] ), .B(n1006), .Y(n742) );
  NAND2X1 U956 ( .A(\reg[15][0] ), .B(n297), .Y(n741) );
  NAND2X1 U957 ( .A(n737), .B(n308), .Y(n738) );
  NOR3X1 U958 ( .A(n378), .B(rsel1[1]), .C(n739), .Y(n1005) );
  AOI22X1 U959 ( .A(\reg[13][0] ), .B(n391), .C(\reg[12][0] ), .D(n393), .Y(
        n740) );
  NAND3X1 U960 ( .A(n742), .B(n741), .C(n740), .Y(n743) );
  NOR2X1 U961 ( .A(n744), .B(n743), .Y(n745) );
  NAND2X1 U962 ( .A(n746), .B(n745), .Y(rdata1[0]) );
  NAND2X1 U963 ( .A(\reg[7][1] ), .B(n340), .Y(n749) );
  NAND2X1 U964 ( .A(\reg[6][1] ), .B(n1024), .Y(n748) );
  AOI22X1 U965 ( .A(\reg[4][1] ), .B(n968), .C(\reg[5][1] ), .D(n967), .Y(n747) );
  NAND3X1 U966 ( .A(n749), .B(n748), .C(n747), .Y(n754) );
  NAND2X1 U967 ( .A(\reg[2][1] ), .B(n1021), .Y(n752) );
  NAND2X1 U968 ( .A(\reg[3][1] ), .B(n319), .Y(n751) );
  AOI22X1 U969 ( .A(\reg[1][1] ), .B(n386), .C(reg0[1]), .D(n390), .Y(n750) );
  NAND3X1 U970 ( .A(n752), .B(n751), .C(n750), .Y(n753) );
  NOR2X1 U971 ( .A(n754), .B(n753), .Y(n764) );
  NAND2X1 U972 ( .A(\reg[11][1] ), .B(n346), .Y(n757) );
  NAND2X1 U973 ( .A(\reg[10][1] ), .B(n1008), .Y(n756) );
  AOI22X1 U974 ( .A(\reg[8][1] ), .B(n275), .C(\reg[9][1] ), .D(n977), .Y(n755) );
  NAND3X1 U975 ( .A(n757), .B(n756), .C(n755), .Y(n762) );
  NAND2X1 U976 ( .A(\reg[14][1] ), .B(n1006), .Y(n760) );
  NAND2X1 U977 ( .A(\reg[15][1] ), .B(n297), .Y(n759) );
  AOI22X1 U978 ( .A(\reg[13][1] ), .B(n311), .C(\reg[12][1] ), .D(n394), .Y(
        n758) );
  NAND3X1 U979 ( .A(n760), .B(n759), .C(n758), .Y(n761) );
  NOR2X1 U980 ( .A(n762), .B(n761), .Y(n763) );
  NAND2X1 U981 ( .A(n764), .B(n763), .Y(rdata1[1]) );
  NAND2X1 U982 ( .A(\reg[7][2] ), .B(n340), .Y(n767) );
  NAND2X1 U983 ( .A(\reg[6][2] ), .B(n1024), .Y(n766) );
  AOI22X1 U984 ( .A(\reg[4][2] ), .B(n301), .C(\reg[5][2] ), .D(n967), .Y(n765) );
  NAND3X1 U985 ( .A(n767), .B(n766), .C(n765), .Y(n772) );
  NAND2X1 U986 ( .A(\reg[2][2] ), .B(n1021), .Y(n770) );
  NAND2X1 U987 ( .A(\reg[3][2] ), .B(n319), .Y(n769) );
  AOI22X1 U988 ( .A(\reg[1][2] ), .B(n387), .C(reg0[2]), .D(n389), .Y(n768) );
  NAND3X1 U989 ( .A(n770), .B(n769), .C(n768), .Y(n771) );
  NOR2X1 U990 ( .A(n772), .B(n771), .Y(n782) );
  NAND2X1 U991 ( .A(\reg[11][2] ), .B(n346), .Y(n775) );
  NAND2X1 U992 ( .A(\reg[10][2] ), .B(n1008), .Y(n774) );
  AOI22X1 U993 ( .A(\reg[8][2] ), .B(n275), .C(\reg[9][2] ), .D(n977), .Y(n773) );
  NAND3X1 U994 ( .A(n775), .B(n774), .C(n773), .Y(n780) );
  NAND2X1 U995 ( .A(\reg[14][2] ), .B(n1006), .Y(n778) );
  NAND2X1 U996 ( .A(\reg[15][2] ), .B(n350), .Y(n777) );
  AOI22X1 U997 ( .A(\reg[13][2] ), .B(n311), .C(\reg[12][2] ), .D(n393), .Y(
        n776) );
  NAND3X1 U998 ( .A(n778), .B(n777), .C(n776), .Y(n779) );
  NOR2X1 U999 ( .A(n780), .B(n779), .Y(n781) );
  NAND2X1 U1000 ( .A(n782), .B(n781), .Y(rdata1[2]) );
  NAND2X1 U1001 ( .A(\reg[7][3] ), .B(n340), .Y(n785) );
  NAND2X1 U1002 ( .A(\reg[6][3] ), .B(n1024), .Y(n784) );
  AOI22X1 U1003 ( .A(\reg[4][3] ), .B(n301), .C(\reg[5][3] ), .D(n967), .Y(
        n783) );
  NAND3X1 U1004 ( .A(n785), .B(n784), .C(n783), .Y(n790) );
  NAND2X1 U1005 ( .A(\reg[2][3] ), .B(n1021), .Y(n788) );
  NAND2X1 U1006 ( .A(\reg[3][3] ), .B(n318), .Y(n787) );
  AOI22X1 U1007 ( .A(\reg[1][3] ), .B(n386), .C(reg0[3]), .D(n390), .Y(n786)
         );
  NAND3X1 U1008 ( .A(n788), .B(n786), .C(n787), .Y(n789) );
  NOR2X1 U1009 ( .A(n790), .B(n789), .Y(n800) );
  NAND2X1 U1010 ( .A(\reg[11][3] ), .B(n346), .Y(n793) );
  NAND2X1 U1011 ( .A(\reg[10][3] ), .B(n1008), .Y(n792) );
  AOI22X1 U1012 ( .A(n275), .B(\reg[8][3] ), .C(\reg[9][3] ), .D(n977), .Y(
        n791) );
  NAND3X1 U1013 ( .A(n793), .B(n792), .C(n791), .Y(n798) );
  NAND2X1 U1014 ( .A(\reg[14][3] ), .B(n1006), .Y(n796) );
  NAND2X1 U1015 ( .A(\reg[15][3] ), .B(n350), .Y(n795) );
  AOI22X1 U1016 ( .A(\reg[13][3] ), .B(n391), .C(\reg[12][3] ), .D(n394), .Y(
        n794) );
  NAND3X1 U1017 ( .A(n796), .B(n795), .C(n794), .Y(n797) );
  NOR2X1 U1018 ( .A(n798), .B(n797), .Y(n799) );
  NAND2X1 U1019 ( .A(n800), .B(n799), .Y(rdata1[3]) );
  NAND2X1 U1020 ( .A(\reg[7][4] ), .B(n340), .Y(n803) );
  NAND2X1 U1021 ( .A(\reg[6][4] ), .B(n1024), .Y(n802) );
  AOI22X1 U1022 ( .A(\reg[4][4] ), .B(n968), .C(\reg[5][4] ), .D(n967), .Y(
        n801) );
  NAND3X1 U1023 ( .A(n803), .B(n802), .C(n801), .Y(n808) );
  NAND2X1 U1024 ( .A(\reg[2][4] ), .B(n1021), .Y(n806) );
  NAND2X1 U1025 ( .A(\reg[3][4] ), .B(n319), .Y(n805) );
  AOI22X1 U1026 ( .A(\reg[1][4] ), .B(n387), .C(reg0[4]), .D(n389), .Y(n804)
         );
  NAND3X1 U1027 ( .A(n806), .B(n805), .C(n804), .Y(n807) );
  NOR2X1 U1028 ( .A(n808), .B(n807), .Y(n818) );
  NAND2X1 U1029 ( .A(\reg[11][4] ), .B(n346), .Y(n811) );
  NAND2X1 U1030 ( .A(\reg[10][4] ), .B(n1008), .Y(n810) );
  AOI22X1 U1031 ( .A(n275), .B(\reg[8][4] ), .C(\reg[9][4] ), .D(n977), .Y(
        n809) );
  NAND3X1 U1032 ( .A(n811), .B(n810), .C(n809), .Y(n816) );
  NAND2X1 U1033 ( .A(\reg[14][4] ), .B(n1006), .Y(n814) );
  NAND2X1 U1034 ( .A(\reg[15][4] ), .B(n351), .Y(n813) );
  AOI22X1 U1035 ( .A(\reg[13][4] ), .B(n391), .C(\reg[12][4] ), .D(n393), .Y(
        n812) );
  NAND3X1 U1036 ( .A(n814), .B(n813), .C(n812), .Y(n815) );
  NOR2X1 U1037 ( .A(n816), .B(n815), .Y(n817) );
  NAND2X1 U1038 ( .A(n818), .B(n817), .Y(rdata1[4]) );
  NAND2X1 U1039 ( .A(\reg[7][5] ), .B(n340), .Y(n821) );
  NAND2X1 U1040 ( .A(\reg[6][5] ), .B(n1024), .Y(n820) );
  AOI22X1 U1041 ( .A(\reg[4][5] ), .B(n968), .C(\reg[5][5] ), .D(n967), .Y(
        n819) );
  NAND3X1 U1042 ( .A(n821), .B(n820), .C(n819), .Y(n826) );
  NAND2X1 U1043 ( .A(\reg[2][5] ), .B(n1021), .Y(n824) );
  NAND2X1 U1044 ( .A(\reg[3][5] ), .B(n319), .Y(n823) );
  AOI22X1 U1045 ( .A(\reg[1][5] ), .B(n386), .C(reg0[5]), .D(n390), .Y(n822)
         );
  NAND3X1 U1046 ( .A(n824), .B(n823), .C(n822), .Y(n825) );
  NOR2X1 U1047 ( .A(n826), .B(n825), .Y(n836) );
  NAND2X1 U1048 ( .A(\reg[11][5] ), .B(n346), .Y(n829) );
  NAND2X1 U1049 ( .A(\reg[10][5] ), .B(n1008), .Y(n828) );
  AOI22X1 U1050 ( .A(\reg[8][5] ), .B(n295), .C(\reg[9][5] ), .D(n977), .Y(
        n827) );
  NAND3X1 U1051 ( .A(n829), .B(n828), .C(n827), .Y(n834) );
  NAND2X1 U1052 ( .A(\reg[14][5] ), .B(n1006), .Y(n832) );
  NAND2X1 U1053 ( .A(\reg[15][5] ), .B(n297), .Y(n831) );
  AOI22X1 U1054 ( .A(\reg[13][5] ), .B(n311), .C(\reg[12][5] ), .D(n394), .Y(
        n830) );
  NAND3X1 U1055 ( .A(n832), .B(n831), .C(n830), .Y(n833) );
  NOR2X1 U1056 ( .A(n834), .B(n833), .Y(n835) );
  NAND2X1 U1057 ( .A(n836), .B(n835), .Y(rdata1[5]) );
  NAND2X1 U1058 ( .A(\reg[7][6] ), .B(n340), .Y(n839) );
  NAND2X1 U1059 ( .A(\reg[6][6] ), .B(n1024), .Y(n838) );
  AOI22X1 U1060 ( .A(\reg[4][6] ), .B(n968), .C(\reg[5][6] ), .D(n967), .Y(
        n837) );
  NAND3X1 U1061 ( .A(n839), .B(n838), .C(n837), .Y(n844) );
  NAND2X1 U1062 ( .A(\reg[2][6] ), .B(n1021), .Y(n842) );
  NAND2X1 U1063 ( .A(\reg[3][6] ), .B(n319), .Y(n841) );
  AOI22X1 U1064 ( .A(\reg[1][6] ), .B(n386), .C(reg0[6]), .D(n389), .Y(n840)
         );
  NAND3X1 U1065 ( .A(n842), .B(n841), .C(n840), .Y(n843) );
  NOR2X1 U1066 ( .A(n844), .B(n843), .Y(n854) );
  NAND2X1 U1067 ( .A(\reg[11][6] ), .B(n346), .Y(n847) );
  NAND2X1 U1068 ( .A(\reg[10][6] ), .B(n1008), .Y(n846) );
  AOI22X1 U1069 ( .A(\reg[8][6] ), .B(n295), .C(\reg[9][6] ), .D(n977), .Y(
        n845) );
  NAND3X1 U1070 ( .A(n847), .B(n846), .C(n845), .Y(n852) );
  NAND2X1 U1071 ( .A(\reg[14][6] ), .B(n1006), .Y(n850) );
  NAND2X1 U1072 ( .A(\reg[15][6] ), .B(n351), .Y(n849) );
  AOI22X1 U1073 ( .A(\reg[13][6] ), .B(n311), .C(\reg[12][6] ), .D(n393), .Y(
        n848) );
  NAND3X1 U1074 ( .A(n850), .B(n849), .C(n848), .Y(n851) );
  NOR2X1 U1075 ( .A(n852), .B(n851), .Y(n853) );
  NAND2X1 U1076 ( .A(n854), .B(n853), .Y(rdata1[6]) );
  NAND2X1 U1077 ( .A(\reg[7][7] ), .B(n340), .Y(n857) );
  NAND2X1 U1078 ( .A(\reg[6][7] ), .B(n1024), .Y(n856) );
  AOI22X1 U1079 ( .A(\reg[4][7] ), .B(n301), .C(\reg[5][7] ), .D(n967), .Y(
        n855) );
  NAND3X1 U1080 ( .A(n857), .B(n856), .C(n855), .Y(n862) );
  NAND2X1 U1081 ( .A(\reg[2][7] ), .B(n1021), .Y(n860) );
  NAND2X1 U1082 ( .A(\reg[3][7] ), .B(n319), .Y(n859) );
  AOI22X1 U1083 ( .A(\reg[1][7] ), .B(n387), .C(reg0[7]), .D(n390), .Y(n858)
         );
  NAND3X1 U1084 ( .A(n860), .B(n859), .C(n858), .Y(n861) );
  NOR2X1 U1085 ( .A(n862), .B(n861), .Y(n872) );
  NAND2X1 U1086 ( .A(\reg[11][7] ), .B(n346), .Y(n865) );
  NAND2X1 U1087 ( .A(\reg[10][7] ), .B(n1008), .Y(n864) );
  AOI22X1 U1088 ( .A(\reg[8][7] ), .B(n285), .C(\reg[9][7] ), .D(n977), .Y(
        n863) );
  NAND3X1 U1089 ( .A(n865), .B(n864), .C(n863), .Y(n870) );
  NAND2X1 U1090 ( .A(\reg[14][7] ), .B(n1006), .Y(n868) );
  NAND2X1 U1091 ( .A(\reg[15][7] ), .B(n351), .Y(n867) );
  AOI22X1 U1092 ( .A(\reg[13][7] ), .B(n311), .C(\reg[12][7] ), .D(n394), .Y(
        n866) );
  NAND3X1 U1093 ( .A(n868), .B(n867), .C(n866), .Y(n869) );
  NOR2X1 U1097 ( .A(n870), .B(n869), .Y(n871) );
  NAND2X1 U1098 ( .A(n872), .B(n871), .Y(rdata1[7]) );
  NAND2X1 U1099 ( .A(\reg[7][8] ), .B(n340), .Y(n875) );
  NAND2X1 U1100 ( .A(\reg[6][8] ), .B(n1024), .Y(n874) );
  AOI22X1 U1101 ( .A(\reg[4][8] ), .B(n968), .C(\reg[5][8] ), .D(n967), .Y(
        n873) );
  NAND3X1 U1102 ( .A(n875), .B(n874), .C(n873), .Y(n880) );
  NAND2X1 U1103 ( .A(\reg[2][8] ), .B(n1021), .Y(n878) );
  NAND2X1 U1104 ( .A(\reg[3][8] ), .B(n318), .Y(n877) );
  AOI22X1 U1105 ( .A(\reg[1][8] ), .B(n386), .C(reg0[8]), .D(n389), .Y(n876)
         );
  NAND3X1 U1106 ( .A(n878), .B(n877), .C(n876), .Y(n879) );
  NOR2X1 U1107 ( .A(n880), .B(n879), .Y(n890) );
  NAND2X1 U1108 ( .A(\reg[11][8] ), .B(n346), .Y(n883) );
  NAND2X1 U1109 ( .A(\reg[10][8] ), .B(n1008), .Y(n882) );
  AOI22X1 U1110 ( .A(\reg[8][8] ), .B(n295), .C(\reg[9][8] ), .D(n977), .Y(
        n881) );
  NAND3X1 U1114 ( .A(n883), .B(n882), .C(n881), .Y(n888) );
  NAND2X1 U1115 ( .A(\reg[14][8] ), .B(n1006), .Y(n886) );
  NAND2X1 U1116 ( .A(\reg[15][8] ), .B(n351), .Y(n885) );
  AOI22X1 U1117 ( .A(\reg[13][8] ), .B(n311), .C(\reg[12][8] ), .D(n393), .Y(
        n884) );
  NAND3X1 U1118 ( .A(n886), .B(n885), .C(n884), .Y(n887) );
  NOR2X1 U1119 ( .A(n888), .B(n887), .Y(n889) );
  NAND2X1 U1120 ( .A(n889), .B(n890), .Y(rdata1[8]) );
  NAND2X1 U1121 ( .A(\reg[7][9] ), .B(n340), .Y(n893) );
  NAND2X1 U1122 ( .A(\reg[6][9] ), .B(n1024), .Y(n892) );
  AOI22X1 U1123 ( .A(\reg[4][9] ), .B(n968), .C(\reg[5][9] ), .D(n967), .Y(
        n891) );
  NAND3X1 U1124 ( .A(n893), .B(n892), .C(n891), .Y(n900) );
  NAND2X1 U1125 ( .A(\reg[2][9] ), .B(n1021), .Y(n898) );
  NAND2X1 U1126 ( .A(\reg[3][9] ), .B(n318), .Y(n897) );
  AOI22X1 U1127 ( .A(\reg[1][9] ), .B(n386), .C(reg0[9]), .D(n390), .Y(n896)
         );
  NAND3X1 U1131 ( .A(n898), .B(n896), .C(n897), .Y(n899) );
  NOR2X1 U1132 ( .A(n900), .B(n899), .Y(n912) );
  NAND2X1 U1133 ( .A(\reg[11][9] ), .B(n346), .Y(n903) );
  NAND2X1 U1134 ( .A(\reg[10][9] ), .B(n1008), .Y(n902) );
  AOI22X1 U1135 ( .A(\reg[8][9] ), .B(n285), .C(\reg[9][9] ), .D(n977), .Y(
        n901) );
  NAND3X1 U1136 ( .A(n903), .B(n902), .C(n901), .Y(n910) );
  NAND2X1 U1137 ( .A(\reg[14][9] ), .B(n1006), .Y(n908) );
  NAND2X1 U1138 ( .A(\reg[15][9] ), .B(n350), .Y(n905) );
  AOI22X1 U1139 ( .A(n311), .B(\reg[13][9] ), .C(\reg[12][9] ), .D(n394), .Y(
        n904) );
  NAND3X1 U1140 ( .A(n905), .B(n908), .C(n904), .Y(n909) );
  NOR2X1 U1141 ( .A(n910), .B(n909), .Y(n911) );
  NAND2X1 U1142 ( .A(n911), .B(n912), .Y(rdata1[9]) );
  NAND2X1 U1143 ( .A(\reg[7][10] ), .B(n340), .Y(n915) );
  NAND2X1 U1144 ( .A(\reg[6][10] ), .B(n1024), .Y(n914) );
  AOI22X1 U1148 ( .A(\reg[4][10] ), .B(n968), .C(\reg[5][10] ), .D(n967), .Y(
        n913) );
  NAND3X1 U1149 ( .A(n915), .B(n914), .C(n913), .Y(n920) );
  NAND2X1 U1150 ( .A(\reg[2][10] ), .B(n1021), .Y(n918) );
  NAND2X1 U1151 ( .A(\reg[3][10] ), .B(n319), .Y(n917) );
  AOI22X1 U1152 ( .A(\reg[1][10] ), .B(n386), .C(reg0[10]), .D(n389), .Y(n916)
         );
  NAND3X1 U1153 ( .A(n918), .B(n916), .C(n917), .Y(n919) );
  NOR2X1 U1154 ( .A(n920), .B(n919), .Y(n930) );
  NAND2X1 U1155 ( .A(\reg[11][10] ), .B(n346), .Y(n923) );
  NAND2X1 U1156 ( .A(\reg[10][10] ), .B(n1008), .Y(n922) );
  AOI22X1 U1157 ( .A(\reg[8][10] ), .B(n285), .C(\reg[9][10] ), .D(n977), .Y(
        n921) );
  NAND3X1 U1158 ( .A(n923), .B(n922), .C(n921), .Y(n928) );
  NAND2X1 U1159 ( .A(\reg[14][10] ), .B(n1006), .Y(n926) );
  NAND2X1 U1160 ( .A(n351), .B(\reg[15][10] ), .Y(n925) );
  AOI22X1 U1161 ( .A(\reg[13][10] ), .B(n391), .C(\reg[12][10] ), .D(n393), 
        .Y(n924) );
  NAND3X1 U1166 ( .A(n926), .B(n925), .C(n924), .Y(n927) );
  NOR2X1 U1167 ( .A(n928), .B(n927), .Y(n929) );
  NAND2X1 U1168 ( .A(n929), .B(n930), .Y(rdata1[10]) );
  NAND2X1 U1169 ( .A(\reg[7][11] ), .B(n340), .Y(n933) );
  NAND2X1 U1170 ( .A(\reg[6][11] ), .B(n1024), .Y(n932) );
  AOI22X1 U1171 ( .A(\reg[4][11] ), .B(n968), .C(\reg[5][11] ), .D(n967), .Y(
        n931) );
  NAND3X1 U1172 ( .A(n933), .B(n932), .C(n931), .Y(n938) );
  NAND2X1 U1173 ( .A(\reg[2][11] ), .B(n1021), .Y(n936) );
  NAND2X1 U1174 ( .A(\reg[3][11] ), .B(n319), .Y(n935) );
  AOI22X1 U1175 ( .A(\reg[1][11] ), .B(n387), .C(reg0[11]), .D(n390), .Y(n934)
         );
  NAND3X1 U1176 ( .A(n936), .B(n935), .C(n934), .Y(n937) );
  NOR2X1 U1177 ( .A(n938), .B(n937), .Y(n948) );
  NAND2X1 U1178 ( .A(\reg[11][11] ), .B(n346), .Y(n941) );
  NAND2X1 U1179 ( .A(\reg[10][11] ), .B(n1008), .Y(n940) );
  AOI22X1 U1183 ( .A(\reg[8][11] ), .B(n285), .C(\reg[9][11] ), .D(n977), .Y(
        n939) );
  NAND3X1 U1184 ( .A(n941), .B(n940), .C(n939), .Y(n946) );
  NAND2X1 U1185 ( .A(\reg[14][11] ), .B(n1006), .Y(n944) );
  NAND2X1 U1186 ( .A(\reg[15][11] ), .B(n351), .Y(n943) );
  AOI22X1 U1187 ( .A(\reg[13][11] ), .B(n391), .C(\reg[12][11] ), .D(n394), 
        .Y(n942) );
  NAND3X1 U1188 ( .A(n944), .B(n943), .C(n942), .Y(n945) );
  NOR2X1 U1189 ( .A(n946), .B(n945), .Y(n947) );
  NAND2X1 U1190 ( .A(n948), .B(n947), .Y(rdata1[11]) );
  NAND2X1 U1191 ( .A(\reg[7][12] ), .B(n340), .Y(n951) );
  NAND2X1 U1192 ( .A(\reg[6][12] ), .B(n1024), .Y(n950) );
  AOI22X1 U1193 ( .A(\reg[4][12] ), .B(n301), .C(\reg[5][12] ), .D(n967), .Y(
        n949) );
  NAND3X1 U1194 ( .A(n951), .B(n950), .C(n949), .Y(n956) );
  NAND2X1 U1195 ( .A(\reg[2][12] ), .B(n1021), .Y(n954) );
  NAND2X1 U1196 ( .A(\reg[3][12] ), .B(n319), .Y(n953) );
  AOI22X1 U1197 ( .A(\reg[1][12] ), .B(n387), .C(reg0[12]), .D(n389), .Y(n952)
         );
  NAND3X1 U1201 ( .A(n954), .B(n953), .C(n952), .Y(n955) );
  NOR2X1 U1202 ( .A(n956), .B(n955), .Y(n966) );
  NAND2X1 U1203 ( .A(\reg[11][12] ), .B(n346), .Y(n959) );
  NAND2X1 U1204 ( .A(\reg[10][12] ), .B(n1008), .Y(n958) );
  AOI22X1 U1205 ( .A(\reg[8][12] ), .B(n295), .C(\reg[9][12] ), .D(n977), .Y(
        n957) );
  NAND3X1 U1206 ( .A(n959), .B(n958), .C(n957), .Y(n964) );
  NAND2X1 U1207 ( .A(\reg[14][12] ), .B(n1006), .Y(n962) );
  NAND2X1 U1208 ( .A(\reg[15][12] ), .B(n297), .Y(n961) );
  AOI22X1 U1209 ( .A(\reg[13][12] ), .B(n391), .C(\reg[12][12] ), .D(n393), 
        .Y(n960) );
  NAND3X1 U1210 ( .A(n962), .B(n961), .C(n960), .Y(n963) );
  NOR2X1 U1211 ( .A(n963), .B(n964), .Y(n965) );
  NAND2X1 U1212 ( .A(n966), .B(n965), .Y(rdata1[12]) );
  NAND2X1 U1213 ( .A(\reg[7][13] ), .B(n340), .Y(n971) );
  NAND2X1 U1214 ( .A(\reg[6][13] ), .B(n1024), .Y(n970) );
  AOI22X1 U1218 ( .A(\reg[4][13] ), .B(n301), .C(\reg[5][13] ), .D(n967), .Y(
        n969) );
  NAND3X1 U1219 ( .A(n971), .B(n970), .C(n969), .Y(n976) );
  NAND2X1 U1220 ( .A(\reg[2][13] ), .B(n280), .Y(n974) );
  NAND2X1 U1221 ( .A(\reg[3][13] ), .B(n319), .Y(n973) );
  AOI22X1 U1222 ( .A(\reg[1][13] ), .B(n387), .C(reg0[13]), .D(n390), .Y(n972)
         );
  NAND3X1 U1223 ( .A(n974), .B(n973), .C(n972), .Y(n975) );
  NOR2X1 U1224 ( .A(n976), .B(n975), .Y(n987) );
  NAND2X1 U1225 ( .A(\reg[11][13] ), .B(n346), .Y(n980) );
  NAND2X1 U1226 ( .A(\reg[10][13] ), .B(n1008), .Y(n979) );
  AOI22X1 U1227 ( .A(\reg[8][13] ), .B(n275), .C(\reg[9][13] ), .D(n977), .Y(
        n978) );
  NAND3X1 U1228 ( .A(n980), .B(n979), .C(n978), .Y(n985) );
  NAND2X1 U1229 ( .A(\reg[14][13] ), .B(n1006), .Y(n983) );
  NAND2X1 U1230 ( .A(\reg[15][13] ), .B(n297), .Y(n982) );
  AOI22X1 U1231 ( .A(\reg[13][13] ), .B(n391), .C(\reg[12][13] ), .D(n394), 
        .Y(n981) );
  NAND3X1 U1232 ( .A(n983), .B(n982), .C(n981), .Y(n984) );
  NOR2X1 U1233 ( .A(n985), .B(n984), .Y(n986) );
  NAND2X1 U1234 ( .A(n987), .B(n986), .Y(rdata1[13]) );
  NAND2X1 U1235 ( .A(n262), .B(n264), .Y(n1119) );
  INVX2 U1236 ( .A(wsel[1]), .Y(n988) );
  NAND2X1 U1237 ( .A(n262), .B(n266), .Y(n1102) );
  NAND2X1 U1238 ( .A(n262), .B(n265), .Y(n1084) );
  NAND2X1 U1239 ( .A(n262), .B(n267), .Y(n1066) );
  NAND2X1 U1240 ( .A(n260), .B(n264), .Y(n1049) );
  NAND2X1 U1241 ( .A(n260), .B(n266), .Y(n1030) );
  NAND2X1 U1242 ( .A(n260), .B(n265), .Y(n1013) );
  NAND2X1 U1243 ( .A(n260), .B(n267), .Y(n995) );
  AOI22X1 U1244 ( .A(n269), .B(\reg[13][14] ), .C(n393), .D(\reg[12][14] ), 
        .Y(n998) );
  AOI22X1 U1245 ( .A(n351), .B(\reg[15][14] ), .C(n1006), .D(\reg[14][14] ), 
        .Y(n993) );
  INVX2 U1246 ( .A(\reg[9][14] ), .Y(n1038) );
  INVX2 U1247 ( .A(\reg[8][14] ), .Y(n1037) );
  OAI22X1 U1248 ( .A(n1038), .B(n300), .C(n1037), .D(n333), .Y(n991) );
  INVX2 U1249 ( .A(\reg[11][14] ), .Y(n1040) );
  NAND2X1 U1250 ( .A(n1008), .B(\reg[10][14] ), .Y(n989) );
  OAI21X1 U1251 ( .A(n1040), .B(n1010), .C(n989), .Y(n990) );
  NOR2X1 U1252 ( .A(n991), .B(n990), .Y(n992) );
  NAND3X1 U1253 ( .A(n998), .B(n993), .C(n992), .Y(n906) );
  AOI22X1 U1254 ( .A(n387), .B(\reg[1][14] ), .C(n389), .D(reg0[14]), .Y(n1004) );
  AOI22X1 U1255 ( .A(n319), .B(\reg[3][14] ), .C(n280), .D(\reg[2][14] ), .Y(
        n1003) );
  INVX2 U1256 ( .A(\reg[5][14] ), .Y(n1054) );
  INVX2 U1257 ( .A(\reg[4][14] ), .Y(n1053) );
  OAI22X1 U1258 ( .A(n1054), .B(n299), .C(n1053), .D(n298), .Y(n1001) );
  INVX2 U1259 ( .A(\reg[7][14] ), .Y(n1057) );
  NAND2X1 U1260 ( .A(n1024), .B(\reg[6][14] ), .Y(n999) );
  OAI21X1 U1261 ( .A(n1057), .B(n1026), .C(n999), .Y(n1000) );
  NOR2X1 U1262 ( .A(n1001), .B(n1000), .Y(n1002) );
  NAND3X1 U1263 ( .A(n1004), .B(n1003), .C(n1002), .Y(n907) );
  AOI22X1 U1264 ( .A(n269), .B(\reg[13][15] ), .C(n394), .D(\reg[12][15] ), 
        .Y(n1019) );
  AOI22X1 U1265 ( .A(n351), .B(\reg[15][15] ), .C(n1006), .D(\reg[14][15] ), 
        .Y(n1018) );
  INVX2 U1266 ( .A(\reg[9][15] ), .Y(n1075) );
  INVX2 U1267 ( .A(\reg[8][15] ), .Y(n1073) );
  OAI22X1 U1268 ( .A(n1075), .B(n300), .C(n1073), .D(n333), .Y(n1016) );
  INVX2 U1269 ( .A(\reg[11][15] ), .Y(n1079) );
  NAND2X1 U1270 ( .A(n1008), .B(\reg[10][15] ), .Y(n1009) );
  OAI21X1 U1271 ( .A(n1079), .B(n1010), .C(n1009), .Y(n1011) );
  NOR2X1 U1272 ( .A(n1016), .B(n1011), .Y(n1017) );
  NAND3X1 U1273 ( .A(n1019), .B(n1018), .C(n1017), .Y(n894) );
  AOI22X1 U1274 ( .A(n387), .B(\reg[1][15] ), .C(n390), .D(reg0[15]), .Y(n1035) );
  AOI22X1 U1275 ( .A(n319), .B(\reg[3][15] ), .C(n280), .D(\reg[2][15] ), .Y(
        n1034) );
  INVX2 U1276 ( .A(\reg[5][15] ), .Y(n1095) );
  INVX2 U1277 ( .A(\reg[4][15] ), .Y(n1094) );
  OAI22X1 U1278 ( .A(n1095), .B(n299), .C(n1094), .D(n298), .Y(n1028) );
  INVX2 U1279 ( .A(\reg[7][15] ), .Y(n1100) );
  NAND2X1 U1280 ( .A(n1024), .B(\reg[6][15] ), .Y(n1025) );
  OAI21X1 U1281 ( .A(n1100), .B(n1026), .C(n1025), .Y(n1027) );
  NOR2X1 U1282 ( .A(n1028), .B(n1027), .Y(n1033) );
  NAND3X1 U1283 ( .A(n1035), .B(n1034), .C(n1033), .Y(n895) );
  AOI22X1 U1284 ( .A(\reg[13][14] ), .B(n293), .C(\reg[12][14] ), .D(n283), 
        .Y(n1045) );
  AOI22X1 U1285 ( .A(\reg[15][14] ), .B(n701), .C(n1071), .D(\reg[14][14] ), 
        .Y(n1044) );
  OAI22X1 U1286 ( .A(n335), .B(n1038), .C(n320), .D(n1037), .Y(n1042) );
  INVX2 U1287 ( .A(\reg[10][14] ), .Y(n1039) );
  OAI22X1 U1288 ( .A(n382), .B(n1040), .C(n345), .D(n1039), .Y(n1041) );
  NOR2X1 U1289 ( .A(n1042), .B(n1041), .Y(n1043) );
  NAND3X1 U1290 ( .A(n1045), .B(n1044), .C(n1043), .Y(n690) );
  AOI22X1 U1291 ( .A(\reg[1][14] ), .B(n324), .C(reg0[14]), .D(n322), .Y(n1062) );
  INVX2 U1292 ( .A(\reg[2][14] ), .Y(n1046) );
  NOR2X1 U1293 ( .A(n296), .B(n1046), .Y(n1052) );
  AOI21X1 U1294 ( .A(\reg[3][14] ), .B(n282), .C(n1052), .Y(n1061) );
  OAI22X1 U1295 ( .A(n1096), .B(n1054), .C(n330), .D(n1053), .Y(n1059) );
  INVX2 U1296 ( .A(\reg[6][14] ), .Y(n1055) );
  OR2X2 U1297 ( .A(n348), .B(n1055), .Y(n1056) );
  OAI21X1 U1298 ( .A(n328), .B(n1057), .C(n1056), .Y(n1058) );
  NOR2X1 U1299 ( .A(n1059), .B(n1058), .Y(n1060) );
  NAND3X1 U1300 ( .A(n1062), .B(n1061), .C(n1060), .Y(n691) );
  AOI22X1 U1301 ( .A(\reg[13][15] ), .B(n293), .C(\reg[12][15] ), .D(n283), 
        .Y(n1089) );
  AOI22X1 U1302 ( .A(\reg[15][15] ), .B(n1072), .C(n1071), .D(\reg[14][15] ), 
        .Y(n1088) );
  OAI22X1 U1303 ( .A(n335), .B(n1075), .C(n320), .D(n1073), .Y(n1082) );
  INVX2 U1304 ( .A(\reg[10][15] ), .Y(n1077) );
  OAI22X1 U1305 ( .A(n382), .B(n1079), .C(n345), .D(n1077), .Y(n1081) );
  NOR2X1 U1306 ( .A(n1082), .B(n1081), .Y(n1087) );
  NAND3X1 U1307 ( .A(n1089), .B(n1088), .C(n1087), .Y(n678) );
  AOI22X1 U1308 ( .A(\reg[1][15] ), .B(n324), .C(reg0[15]), .D(n322), .Y(n1109) );
  NOR2X1 U1309 ( .A(n296), .B(n1091), .Y(n1093) );
  AOI21X1 U1310 ( .A(\reg[3][15] ), .B(n282), .C(n1093), .Y(n1108) );
  OAI22X1 U1311 ( .A(n1096), .B(n1095), .C(n330), .D(n1094), .Y(n1106) );
  INVX2 U1312 ( .A(\reg[6][15] ), .Y(n1097) );
  OR2X2 U1313 ( .A(n348), .B(n1097), .Y(n1099) );
  OAI21X1 U1314 ( .A(n328), .B(n1100), .C(n1099), .Y(n1105) );
  NOR2X1 U1315 ( .A(n1106), .B(n1105), .Y(n1107) );
  NAND3X1 U1316 ( .A(n1109), .B(n1108), .C(n1107), .Y(n679) );
  INVX2 U1317 ( .A(reg0[0]), .Y(n1110) );
  MUX2X1 U1318 ( .B(n1110), .A(n1604), .S(n359), .Y(n1140) );
  INVX2 U1319 ( .A(reg0[1]), .Y(n1111) );
  MUX2X1 U1320 ( .B(n1111), .A(n1595), .S(n359), .Y(n1141) );
  MUX2X1 U1321 ( .B(reg0[2]), .A(n396), .S(n359), .Y(n1112) );
  INVX2 U1322 ( .A(n1112), .Y(n1142) );
  MUX2X1 U1323 ( .B(reg0[3]), .A(n399), .S(n359), .Y(n1113) );
  INVX2 U1324 ( .A(n1113), .Y(n1143) );
  MUX2X1 U1325 ( .B(reg0[4]), .A(n402), .S(n359), .Y(n1114) );
  MUX2X1 U1326 ( .B(reg0[5]), .A(n405), .S(n359), .Y(n1115) );
  INVX2 U1327 ( .A(n1115), .Y(n1145) );
  MUX2X1 U1328 ( .B(reg0[6]), .A(n408), .S(n359), .Y(n1116) );
  MUX2X1 U1329 ( .B(reg0[7]), .A(n410), .S(n359), .Y(n1117) );
  MUX2X1 U1330 ( .B(reg0[8]), .A(n413), .S(n359), .Y(n1122) );
  INVX2 U1331 ( .A(n1122), .Y(n1148) );
  MUX2X1 U1332 ( .B(reg0[9]), .A(n416), .S(n359), .Y(n1123) );
  MUX2X1 U1333 ( .B(reg0[10]), .A(n418), .S(n359), .Y(n1124) );
  MUX2X1 U1334 ( .B(reg0[11]), .A(n420), .S(n359), .Y(n1125) );
  MUX2X1 U1335 ( .B(reg0[12]), .A(n423), .S(n359), .Y(n1126) );
  MUX2X1 U1336 ( .B(reg0[13]), .A(n425), .S(n359), .Y(n1127) );
  MUX2X1 U1337 ( .B(reg0[14]), .A(wdata[14]), .S(n359), .Y(n1128) );
  MUX2X1 U1338 ( .B(reg0[15]), .A(wdata[15]), .S(n359), .Y(n1129) );
  INVX2 U1339 ( .A(\reg[1][0] ), .Y(n1130) );
  MUX2X1 U1340 ( .B(n1130), .A(n1604), .S(n360), .Y(n1156) );
  INVX2 U1341 ( .A(\reg[1][1] ), .Y(n1131) );
  MUX2X1 U1342 ( .B(n1131), .A(n1595), .S(n360), .Y(n1157) );
  MUX2X1 U1343 ( .B(\reg[1][2] ), .A(n397), .S(n360), .Y(n1132) );
  INVX2 U1344 ( .A(n1132), .Y(n1158) );
  MUX2X1 U1345 ( .B(\reg[1][3] ), .A(n400), .S(n360), .Y(n1133) );
  INVX2 U1346 ( .A(n1133), .Y(n1159) );
  MUX2X1 U1347 ( .B(\reg[1][4] ), .A(n403), .S(n360), .Y(n1134) );
  MUX2X1 U1348 ( .B(\reg[1][5] ), .A(n406), .S(n360), .Y(n1135) );
  INVX2 U1349 ( .A(n1135), .Y(n1161) );
  MUX2X1 U1350 ( .B(\reg[1][6] ), .A(n408), .S(n360), .Y(n1136) );
  MUX2X1 U1351 ( .B(\reg[1][7] ), .A(n411), .S(n360), .Y(n1137) );
  MUX2X1 U1352 ( .B(\reg[1][8] ), .A(n414), .S(n360), .Y(n1139) );
  INVX2 U1353 ( .A(n1139), .Y(n1164) );
  MUX2X1 U1354 ( .B(\reg[1][9] ), .A(n416), .S(n360), .Y(n1268) );
  MUX2X1 U1355 ( .B(\reg[1][10] ), .A(n418), .S(n360), .Y(n1269) );
  MUX2X1 U1356 ( .B(\reg[1][11] ), .A(n421), .S(n360), .Y(n1270) );
  MUX2X1 U1357 ( .B(\reg[1][12] ), .A(n423), .S(n360), .Y(n1271) );
  MUX2X1 U1358 ( .B(\reg[1][13] ), .A(n426), .S(n360), .Y(n1272) );
  MUX2X1 U1359 ( .B(\reg[1][14] ), .A(wdata[14]), .S(n360), .Y(n1273) );
  MUX2X1 U1360 ( .B(\reg[1][15] ), .A(wdata[15]), .S(n360), .Y(n1274) );
  MUX2X1 U1361 ( .B(n1275), .A(n1604), .S(n361), .Y(n1172) );
  MUX2X1 U1362 ( .B(n1276), .A(n1595), .S(n361), .Y(n1173) );
  MUX2X1 U1363 ( .B(\reg[2][2] ), .A(n396), .S(n361), .Y(n1277) );
  INVX2 U1364 ( .A(n1277), .Y(n1174) );
  MUX2X1 U1365 ( .B(\reg[2][3] ), .A(n399), .S(n361), .Y(n1278) );
  INVX2 U1366 ( .A(n1278), .Y(n1175) );
  MUX2X1 U1367 ( .B(\reg[2][4] ), .A(n402), .S(n361), .Y(n1279) );
  MUX2X1 U1368 ( .B(\reg[2][5] ), .A(n405), .S(n361), .Y(n1280) );
  INVX2 U1369 ( .A(n1280), .Y(n1177) );
  MUX2X1 U1370 ( .B(\reg[2][6] ), .A(n408), .S(n361), .Y(n1281) );
  MUX2X1 U1371 ( .B(\reg[2][7] ), .A(n410), .S(n361), .Y(n1282) );
  MUX2X1 U1372 ( .B(\reg[2][8] ), .A(n413), .S(n361), .Y(n1283) );
  INVX2 U1373 ( .A(n1283), .Y(n1180) );
  MUX2X1 U1374 ( .B(\reg[2][9] ), .A(n416), .S(n361), .Y(n1284) );
  MUX2X1 U1375 ( .B(\reg[2][10] ), .A(n418), .S(n361), .Y(n1285) );
  MUX2X1 U1376 ( .B(\reg[2][11] ), .A(n270), .S(n361), .Y(n1286) );
  MUX2X1 U1377 ( .B(\reg[2][12] ), .A(n423), .S(n361), .Y(n1287) );
  MUX2X1 U1378 ( .B(\reg[2][13] ), .A(n425), .S(n361), .Y(n1288) );
  MUX2X1 U1379 ( .B(\reg[2][14] ), .A(wdata[14]), .S(n361), .Y(n1289) );
  MUX2X1 U1380 ( .B(\reg[2][15] ), .A(wdata[15]), .S(n361), .Y(n1290) );
  INVX2 U1381 ( .A(\reg[3][0] ), .Y(n1291) );
  MUX2X1 U1382 ( .B(n1291), .A(n1604), .S(n362), .Y(n1188) );
  INVX2 U1383 ( .A(\reg[3][1] ), .Y(n1292) );
  MUX2X1 U1384 ( .B(n1292), .A(n1595), .S(n362), .Y(n1189) );
  MUX2X1 U1385 ( .B(\reg[3][2] ), .A(n397), .S(n362), .Y(n1293) );
  INVX2 U1386 ( .A(n1293), .Y(n1190) );
  MUX2X1 U1387 ( .B(\reg[3][3] ), .A(n400), .S(n362), .Y(n1294) );
  INVX2 U1388 ( .A(n1294), .Y(n1191) );
  MUX2X1 U1389 ( .B(\reg[3][4] ), .A(n403), .S(n362), .Y(n1295) );
  MUX2X1 U1390 ( .B(\reg[3][5] ), .A(n406), .S(n362), .Y(n1296) );
  INVX2 U1391 ( .A(n1296), .Y(n1193) );
  MUX2X1 U1392 ( .B(\reg[3][6] ), .A(n408), .S(n362), .Y(n1297) );
  MUX2X1 U1393 ( .B(\reg[3][7] ), .A(n411), .S(n362), .Y(n1298) );
  MUX2X1 U1394 ( .B(\reg[3][8] ), .A(n414), .S(n362), .Y(n1299) );
  INVX2 U1395 ( .A(n1299), .Y(n1196) );
  MUX2X1 U1396 ( .B(\reg[3][9] ), .A(n416), .S(n362), .Y(n1300) );
  MUX2X1 U1397 ( .B(\reg[3][10] ), .A(n418), .S(n362), .Y(n1301) );
  MUX2X1 U1398 ( .B(\reg[3][11] ), .A(n421), .S(n362), .Y(n1302) );
  INVX2 U1399 ( .A(n1302), .Y(n1199) );
  MUX2X1 U1400 ( .B(\reg[3][12] ), .A(n423), .S(n362), .Y(n1303) );
  MUX2X1 U1401 ( .B(\reg[3][13] ), .A(n426), .S(n362), .Y(n1304) );
  MUX2X1 U1402 ( .B(\reg[3][14] ), .A(wdata[14]), .S(n362), .Y(n1305) );
  MUX2X1 U1403 ( .B(\reg[3][15] ), .A(wdata[15]), .S(n362), .Y(n1306) );
  MUX2X1 U1404 ( .B(\reg[4][3] ), .A(n399), .S(n1475), .Y(n1307) );
  INVX2 U1405 ( .A(n1307), .Y(n1579) );
  MUX2X1 U1406 ( .B(\reg[4][4] ), .A(n402), .S(n1475), .Y(n1308) );
  MUX2X1 U1407 ( .B(\reg[4][5] ), .A(n405), .S(n1475), .Y(n1309) );
  INVX2 U1408 ( .A(n1309), .Y(n1563) );
  MUX2X1 U1409 ( .B(\reg[4][6] ), .A(n408), .S(n1475), .Y(n1310) );
  MUX2X1 U1410 ( .B(\reg[4][7] ), .A(n410), .S(n1475), .Y(n1311) );
  MUX2X1 U1411 ( .B(\reg[4][8] ), .A(n413), .S(n1475), .Y(n1312) );
  INVX2 U1412 ( .A(n1312), .Y(n1539) );
  MUX2X1 U1413 ( .B(\reg[4][9] ), .A(n416), .S(n1475), .Y(n1313) );
  MUX2X1 U1414 ( .B(\reg[4][10] ), .A(n418), .S(n1475), .Y(n1314) );
  MUX2X1 U1415 ( .B(\reg[4][11] ), .A(n420), .S(n1475), .Y(n1315) );
  MUX2X1 U1416 ( .B(\reg[4][12] ), .A(n423), .S(n1475), .Y(n1316) );
  MUX2X1 U1417 ( .B(\reg[4][13] ), .A(n425), .S(n1475), .Y(n1317) );
  MUX2X1 U1418 ( .B(\reg[4][14] ), .A(wdata[14]), .S(n1475), .Y(n1318) );
  MUX2X1 U1419 ( .B(\reg[4][15] ), .A(wdata[15]), .S(n1475), .Y(n1319) );
  MUX2X1 U1420 ( .B(\reg[5][3] ), .A(n400), .S(n1476), .Y(n1320) );
  INVX2 U1421 ( .A(n1320), .Y(n1580) );
  MUX2X1 U1422 ( .B(\reg[5][4] ), .A(n403), .S(n1476), .Y(n1321) );
  MUX2X1 U1423 ( .B(\reg[5][5] ), .A(n406), .S(n1476), .Y(n1322) );
  INVX2 U1424 ( .A(n1322), .Y(n1564) );
  MUX2X1 U1425 ( .B(\reg[5][6] ), .A(n408), .S(n1476), .Y(n1323) );
  MUX2X1 U1426 ( .B(\reg[5][7] ), .A(n411), .S(n1476), .Y(n1324) );
  MUX2X1 U1427 ( .B(\reg[5][8] ), .A(n414), .S(n1476), .Y(n1325) );
  INVX2 U1428 ( .A(n1325), .Y(n1540) );
  MUX2X1 U1429 ( .B(\reg[5][9] ), .A(n416), .S(n1476), .Y(n1326) );
  MUX2X1 U1430 ( .B(\reg[5][10] ), .A(n418), .S(n1476), .Y(n1327) );
  MUX2X1 U1431 ( .B(\reg[5][11] ), .A(n421), .S(n1476), .Y(n1328) );
  MUX2X1 U1432 ( .B(\reg[5][12] ), .A(n423), .S(n1476), .Y(n1329) );
  MUX2X1 U1433 ( .B(\reg[5][13] ), .A(n426), .S(n1476), .Y(n1330) );
  MUX2X1 U1434 ( .B(\reg[5][14] ), .A(wdata[14]), .S(n1476), .Y(n1331) );
  MUX2X1 U1435 ( .B(\reg[5][15] ), .A(wdata[15]), .S(n1476), .Y(n1332) );
  MUX2X1 U1436 ( .B(\reg[6][3] ), .A(n399), .S(n1477), .Y(n1333) );
  INVX2 U1437 ( .A(n1333), .Y(n1581) );
  MUX2X1 U1438 ( .B(\reg[6][4] ), .A(n402), .S(n1477), .Y(n1334) );
  MUX2X1 U1439 ( .B(\reg[6][5] ), .A(n405), .S(n1477), .Y(n1335) );
  INVX2 U1440 ( .A(n1335), .Y(n1565) );
  MUX2X1 U1441 ( .B(\reg[6][6] ), .A(n408), .S(n1477), .Y(n1336) );
  MUX2X1 U1442 ( .B(\reg[6][7] ), .A(n410), .S(n1477), .Y(n1337) );
  MUX2X1 U1443 ( .B(\reg[6][8] ), .A(n413), .S(n1477), .Y(n1338) );
  INVX2 U1444 ( .A(n1338), .Y(n1541) );
  MUX2X1 U1445 ( .B(\reg[6][9] ), .A(n416), .S(n1477), .Y(n1339) );
  MUX2X1 U1446 ( .B(\reg[6][10] ), .A(n418), .S(n1477), .Y(n1340) );
  MUX2X1 U1447 ( .B(\reg[6][11] ), .A(n271), .S(n1477), .Y(n1341) );
  MUX2X1 U1448 ( .B(\reg[6][12] ), .A(n423), .S(n1477), .Y(n1342) );
  MUX2X1 U1449 ( .B(\reg[6][13] ), .A(n425), .S(n1477), .Y(n1343) );
  MUX2X1 U1450 ( .B(\reg[6][14] ), .A(wdata[14]), .S(n1477), .Y(n1344) );
  MUX2X1 U1451 ( .B(\reg[6][15] ), .A(wdata[15]), .S(n1477), .Y(n1345) );
  MUX2X1 U1452 ( .B(\reg[7][3] ), .A(n400), .S(n1478), .Y(n1346) );
  INVX2 U1453 ( .A(n1346), .Y(n1582) );
  MUX2X1 U1454 ( .B(\reg[7][4] ), .A(n403), .S(n1478), .Y(n1347) );
  MUX2X1 U1455 ( .B(\reg[7][5] ), .A(n406), .S(n1478), .Y(n1348) );
  INVX2 U1456 ( .A(n1348), .Y(n1566) );
  MUX2X1 U1457 ( .B(\reg[7][6] ), .A(n408), .S(n1478), .Y(n1349) );
  MUX2X1 U1458 ( .B(\reg[7][7] ), .A(n411), .S(n1478), .Y(n1350) );
  MUX2X1 U1459 ( .B(\reg[7][8] ), .A(n414), .S(n1478), .Y(n1351) );
  INVX2 U1460 ( .A(n1351), .Y(n1542) );
  MUX2X1 U1461 ( .B(\reg[7][9] ), .A(n416), .S(n1478), .Y(n1352) );
  MUX2X1 U1462 ( .B(\reg[7][10] ), .A(n418), .S(n1478), .Y(n1353) );
  MUX2X1 U1463 ( .B(\reg[7][11] ), .A(n421), .S(n1478), .Y(n1354) );
  MUX2X1 U1464 ( .B(\reg[7][12] ), .A(n423), .S(n1478), .Y(n1355) );
  MUX2X1 U1465 ( .B(\reg[7][13] ), .A(n426), .S(n1478), .Y(n1356) );
  MUX2X1 U1466 ( .B(\reg[7][14] ), .A(wdata[14]), .S(n1478), .Y(n1357) );
  MUX2X1 U1467 ( .B(\reg[7][15] ), .A(wdata[15]), .S(n1478), .Y(n1358) );
  MUX2X1 U1468 ( .B(\reg[8][3] ), .A(n399), .S(n1479), .Y(n1359) );
  INVX2 U1469 ( .A(n1359), .Y(n1583) );
  MUX2X1 U1470 ( .B(\reg[8][4] ), .A(n402), .S(n1479), .Y(n1360) );
  MUX2X1 U1471 ( .B(\reg[8][5] ), .A(n405), .S(n1479), .Y(n1361) );
  INVX2 U1472 ( .A(n1361), .Y(n1567) );
  MUX2X1 U1473 ( .B(\reg[8][6] ), .A(n408), .S(n1479), .Y(n1362) );
  MUX2X1 U1474 ( .B(\reg[8][7] ), .A(n410), .S(n1479), .Y(n1363) );
  MUX2X1 U1475 ( .B(\reg[8][8] ), .A(n413), .S(n1479), .Y(n1364) );
  INVX2 U1476 ( .A(n1364), .Y(n1543) );
  MUX2X1 U1477 ( .B(\reg[8][9] ), .A(n416), .S(n1479), .Y(n1365) );
  MUX2X1 U1478 ( .B(\reg[8][10] ), .A(n418), .S(n1479), .Y(n1366) );
  MUX2X1 U1479 ( .B(\reg[8][11] ), .A(n270), .S(n1479), .Y(n1367) );
  MUX2X1 U1480 ( .B(\reg[8][12] ), .A(n423), .S(n1479), .Y(n1368) );
  MUX2X1 U1481 ( .B(\reg[8][13] ), .A(n425), .S(n1479), .Y(n1369) );
  MUX2X1 U1482 ( .B(\reg[8][14] ), .A(wdata[14]), .S(n1479), .Y(n1370) );
  MUX2X1 U1483 ( .B(\reg[8][15] ), .A(wdata[15]), .S(n1479), .Y(n1371) );
  MUX2X1 U1484 ( .B(\reg[9][3] ), .A(n400), .S(n1480), .Y(n1372) );
  INVX2 U1485 ( .A(n1372), .Y(n1584) );
  MUX2X1 U1486 ( .B(\reg[9][4] ), .A(n403), .S(n1480), .Y(n1373) );
  MUX2X1 U1487 ( .B(\reg[9][5] ), .A(n406), .S(n1480), .Y(n1374) );
  INVX2 U1488 ( .A(n1374), .Y(n1568) );
  MUX2X1 U1489 ( .B(\reg[9][6] ), .A(n408), .S(n1480), .Y(n1375) );
  MUX2X1 U1490 ( .B(\reg[9][7] ), .A(n411), .S(n1480), .Y(n1376) );
  MUX2X1 U1491 ( .B(\reg[9][8] ), .A(n414), .S(n1480), .Y(n1377) );
  INVX2 U1492 ( .A(n1377), .Y(n1544) );
  MUX2X1 U1493 ( .B(\reg[9][9] ), .A(n416), .S(n1480), .Y(n1378) );
  MUX2X1 U1494 ( .B(\reg[9][10] ), .A(n418), .S(n1480), .Y(n1379) );
  MUX2X1 U1495 ( .B(\reg[9][11] ), .A(n271), .S(n1480), .Y(n1380) );
  MUX2X1 U1496 ( .B(\reg[9][12] ), .A(n423), .S(n1480), .Y(n1381) );
  MUX2X1 U1497 ( .B(\reg[9][13] ), .A(n426), .S(n1480), .Y(n1382) );
  MUX2X1 U1498 ( .B(\reg[9][14] ), .A(wdata[14]), .S(n1480), .Y(n1383) );
  MUX2X1 U1499 ( .B(\reg[9][15] ), .A(wdata[15]), .S(n1480), .Y(n1384) );
  MUX2X1 U1500 ( .B(\reg[10][3] ), .A(n399), .S(n1481), .Y(n1385) );
  INVX2 U1501 ( .A(n1385), .Y(n1585) );
  MUX2X1 U1502 ( .B(\reg[10][4] ), .A(n402), .S(n1481), .Y(n1386) );
  MUX2X1 U1503 ( .B(\reg[10][5] ), .A(n405), .S(n1481), .Y(n1387) );
  INVX2 U1504 ( .A(n1387), .Y(n1569) );
  MUX2X1 U1505 ( .B(\reg[10][6] ), .A(n408), .S(n1481), .Y(n1388) );
  MUX2X1 U1506 ( .B(\reg[10][7] ), .A(n410), .S(n1481), .Y(n1389) );
  MUX2X1 U1507 ( .B(\reg[10][8] ), .A(n413), .S(n1481), .Y(n1390) );
  INVX2 U1508 ( .A(n1390), .Y(n1545) );
  MUX2X1 U1509 ( .B(\reg[10][9] ), .A(n416), .S(n1481), .Y(n1391) );
  MUX2X1 U1510 ( .B(\reg[10][10] ), .A(n418), .S(n1481), .Y(n1392) );
  MUX2X1 U1511 ( .B(\reg[10][11] ), .A(n420), .S(n1481), .Y(n1393) );
  MUX2X1 U1512 ( .B(\reg[10][12] ), .A(n423), .S(n1481), .Y(n1394) );
  MUX2X1 U1513 ( .B(\reg[10][13] ), .A(n425), .S(n1481), .Y(n1395) );
  MUX2X1 U1514 ( .B(\reg[10][14] ), .A(wdata[14]), .S(n1481), .Y(n1396) );
  MUX2X1 U1515 ( .B(\reg[10][15] ), .A(wdata[15]), .S(n1481), .Y(n1397) );
  MUX2X1 U1516 ( .B(\reg[11][3] ), .A(n400), .S(n1482), .Y(n1398) );
  INVX2 U1517 ( .A(n1398), .Y(n1586) );
  MUX2X1 U1518 ( .B(\reg[11][4] ), .A(n403), .S(n1482), .Y(n1399) );
  MUX2X1 U1519 ( .B(\reg[11][5] ), .A(n406), .S(n1482), .Y(n1400) );
  INVX2 U1520 ( .A(n1400), .Y(n1570) );
  MUX2X1 U1521 ( .B(\reg[11][6] ), .A(n408), .S(n1482), .Y(n1401) );
  MUX2X1 U1522 ( .B(\reg[11][7] ), .A(n411), .S(n1482), .Y(n1402) );
  MUX2X1 U1523 ( .B(\reg[11][8] ), .A(n414), .S(n1482), .Y(n1403) );
  INVX2 U1524 ( .A(n1403), .Y(n1546) );
  MUX2X1 U1525 ( .B(\reg[11][9] ), .A(n416), .S(n1482), .Y(n1404) );
  MUX2X1 U1526 ( .B(\reg[11][10] ), .A(n418), .S(n1482), .Y(n1405) );
  MUX2X1 U1527 ( .B(\reg[11][11] ), .A(n270), .S(n1482), .Y(n1406) );
  MUX2X1 U1528 ( .B(\reg[11][12] ), .A(n423), .S(n1482), .Y(n1407) );
  MUX2X1 U1529 ( .B(\reg[11][13] ), .A(n426), .S(n1482), .Y(n1408) );
  MUX2X1 U1530 ( .B(\reg[11][14] ), .A(wdata[14]), .S(n1482), .Y(n1409) );
  MUX2X1 U1531 ( .B(\reg[11][15] ), .A(wdata[15]), .S(n1482), .Y(n1410) );
  INVX2 U1532 ( .A(\reg[12][0] ), .Y(n1411) );
  MUX2X1 U1533 ( .B(n1411), .A(n1604), .S(n366), .Y(n1204) );
  INVX2 U1534 ( .A(\reg[12][1] ), .Y(n1412) );
  MUX2X1 U1535 ( .B(n1412), .A(n1595), .S(n366), .Y(n1205) );
  MUX2X1 U1536 ( .B(\reg[12][2] ), .A(n396), .S(n366), .Y(n1413) );
  INVX2 U1537 ( .A(n1413), .Y(n1206) );
  MUX2X1 U1538 ( .B(\reg[12][3] ), .A(n399), .S(n366), .Y(n1414) );
  INVX2 U1539 ( .A(n1414), .Y(n1207) );
  MUX2X1 U1540 ( .B(\reg[12][4] ), .A(n402), .S(n366), .Y(n1415) );
  MUX2X1 U1541 ( .B(\reg[12][5] ), .A(n405), .S(n366), .Y(n1416) );
  INVX2 U1542 ( .A(n1416), .Y(n1209) );
  MUX2X1 U1543 ( .B(\reg[12][6] ), .A(n408), .S(n366), .Y(n1417) );
  MUX2X1 U1544 ( .B(\reg[12][7] ), .A(n410), .S(n366), .Y(n1418) );
  MUX2X1 U1545 ( .B(\reg[12][8] ), .A(n413), .S(n366), .Y(n1419) );
  INVX2 U1546 ( .A(n1419), .Y(n1212) );
  MUX2X1 U1547 ( .B(\reg[12][9] ), .A(n416), .S(n366), .Y(n1420) );
  MUX2X1 U1548 ( .B(\reg[12][10] ), .A(n418), .S(n366), .Y(n1421) );
  MUX2X1 U1549 ( .B(\reg[12][11] ), .A(n271), .S(n366), .Y(n1422) );
  MUX2X1 U1550 ( .B(\reg[12][12] ), .A(n423), .S(n366), .Y(n1423) );
  MUX2X1 U1551 ( .B(\reg[12][13] ), .A(n425), .S(n366), .Y(n1424) );
  MUX2X1 U1552 ( .B(\reg[12][14] ), .A(wdata[14]), .S(n366), .Y(n1425) );
  MUX2X1 U1553 ( .B(\reg[12][15] ), .A(wdata[15]), .S(n366), .Y(n1426) );
  INVX2 U1554 ( .A(\reg[13][0] ), .Y(n1427) );
  MUX2X1 U1555 ( .B(n1427), .A(n1604), .S(n364), .Y(n1220) );
  INVX2 U1556 ( .A(\reg[13][1] ), .Y(n1428) );
  MUX2X1 U1557 ( .B(n1428), .A(n1595), .S(n364), .Y(n1221) );
  MUX2X1 U1558 ( .B(\reg[13][2] ), .A(n397), .S(n364), .Y(n1429) );
  INVX2 U1559 ( .A(n1429), .Y(n1222) );
  MUX2X1 U1560 ( .B(\reg[13][3] ), .A(n400), .S(n364), .Y(n1430) );
  INVX2 U1561 ( .A(n1430), .Y(n1223) );
  MUX2X1 U1562 ( .B(\reg[13][4] ), .A(n403), .S(n364), .Y(n1431) );
  MUX2X1 U1563 ( .B(\reg[13][5] ), .A(n406), .S(n364), .Y(n1432) );
  INVX2 U1564 ( .A(n1432), .Y(n1225) );
  MUX2X1 U1565 ( .B(\reg[13][6] ), .A(n408), .S(n364), .Y(n1433) );
  MUX2X1 U1566 ( .B(\reg[13][7] ), .A(n411), .S(n364), .Y(n1434) );
  MUX2X1 U1567 ( .B(\reg[13][8] ), .A(n414), .S(n364), .Y(n1435) );
  INVX2 U1568 ( .A(n1435), .Y(n1228) );
  MUX2X1 U1569 ( .B(\reg[13][9] ), .A(n416), .S(n364), .Y(n1436) );
  MUX2X1 U1570 ( .B(\reg[13][10] ), .A(n418), .S(n364), .Y(n1437) );
  MUX2X1 U1571 ( .B(\reg[13][11] ), .A(n420), .S(n364), .Y(n1438) );
  MUX2X1 U1572 ( .B(\reg[13][12] ), .A(n423), .S(n364), .Y(n1439) );
  MUX2X1 U1573 ( .B(\reg[13][13] ), .A(n426), .S(n364), .Y(n1440) );
  MUX2X1 U1574 ( .B(\reg[13][14] ), .A(wdata[14]), .S(n364), .Y(n1441) );
  MUX2X1 U1575 ( .B(\reg[13][15] ), .A(wdata[15]), .S(n364), .Y(n1442) );
  MUX2X1 U1576 ( .B(n1443), .A(n1604), .S(n365), .Y(n1236) );
  MUX2X1 U1577 ( .B(n1444), .A(n1595), .S(n365), .Y(n1237) );
  MUX2X1 U1578 ( .B(\reg[14][2] ), .A(n396), .S(n365), .Y(n1445) );
  INVX2 U1579 ( .A(n1445), .Y(n1238) );
  MUX2X1 U1580 ( .B(\reg[14][3] ), .A(n399), .S(n365), .Y(n1446) );
  INVX2 U1581 ( .A(n1446), .Y(n1239) );
  MUX2X1 U1582 ( .B(\reg[14][4] ), .A(n402), .S(n365), .Y(n1447) );
  MUX2X1 U1583 ( .B(\reg[14][5] ), .A(n405), .S(n365), .Y(n1448) );
  INVX2 U1584 ( .A(n1448), .Y(n1241) );
  MUX2X1 U1585 ( .B(\reg[14][6] ), .A(n408), .S(n365), .Y(n1449) );
  MUX2X1 U1586 ( .B(\reg[14][7] ), .A(n410), .S(n365), .Y(n1450) );
  MUX2X1 U1587 ( .B(\reg[14][8] ), .A(n413), .S(n365), .Y(n1451) );
  INVX2 U1588 ( .A(n1451), .Y(n1244) );
  MUX2X1 U1589 ( .B(\reg[14][9] ), .A(n416), .S(n365), .Y(n1452) );
  MUX2X1 U1590 ( .B(\reg[14][10] ), .A(n418), .S(n365), .Y(n1453) );
  MUX2X1 U1591 ( .B(\reg[14][11] ), .A(n270), .S(n365), .Y(n1454) );
  INVX2 U1592 ( .A(n1454), .Y(n1247) );
  MUX2X1 U1593 ( .B(\reg[14][12] ), .A(n423), .S(n365), .Y(n1455) );
  MUX2X1 U1594 ( .B(\reg[14][13] ), .A(n425), .S(n365), .Y(n1456) );
  MUX2X1 U1595 ( .B(\reg[14][14] ), .A(wdata[14]), .S(n365), .Y(n1457) );
  MUX2X1 U1596 ( .B(\reg[14][15] ), .A(wdata[15]), .S(n365), .Y(n1458) );
  INVX2 U1597 ( .A(\reg[15][0] ), .Y(n1459) );
  MUX2X1 U1598 ( .B(n1459), .A(n1604), .S(n363), .Y(n1252) );
  INVX2 U1599 ( .A(\reg[15][1] ), .Y(n1460) );
  MUX2X1 U1600 ( .B(n1460), .A(n1595), .S(n363), .Y(n1253) );
  MUX2X1 U1601 ( .B(\reg[15][2] ), .A(n397), .S(n363), .Y(n1461) );
  INVX2 U1602 ( .A(n1461), .Y(n1254) );
  MUX2X1 U1603 ( .B(\reg[15][3] ), .A(n400), .S(n363), .Y(n1462) );
  INVX2 U1604 ( .A(n1462), .Y(n1255) );
  MUX2X1 U1605 ( .B(\reg[15][4] ), .A(n403), .S(n363), .Y(n1463) );
  MUX2X1 U1606 ( .B(\reg[15][5] ), .A(n406), .S(n363), .Y(n1464) );
  INVX2 U1607 ( .A(n1464), .Y(n1257) );
  MUX2X1 U1608 ( .B(\reg[15][6] ), .A(n408), .S(n363), .Y(n1465) );
  MUX2X1 U1609 ( .B(\reg[15][7] ), .A(n411), .S(n363), .Y(n1466) );
  MUX2X1 U1610 ( .B(\reg[15][8] ), .A(n414), .S(n363), .Y(n1467) );
  INVX2 U1611 ( .A(n1467), .Y(n1260) );
  MUX2X1 U1612 ( .B(\reg[15][9] ), .A(n416), .S(n363), .Y(n1468) );
  MUX2X1 U1613 ( .B(\reg[15][10] ), .A(n418), .S(n363), .Y(n1469) );
  MUX2X1 U1614 ( .B(\reg[15][11] ), .A(n271), .S(n363), .Y(n1470) );
  INVX2 U1615 ( .A(n1470), .Y(n1263) );
  MUX2X1 U1616 ( .B(\reg[15][12] ), .A(n423), .S(n363), .Y(n1471) );
  MUX2X1 U1617 ( .B(\reg[15][13] ), .A(n426), .S(n363), .Y(n1472) );
  MUX2X1 U1618 ( .B(\reg[15][14] ), .A(wdata[14]), .S(n363), .Y(n1473) );
  MUX2X1 U1619 ( .B(\reg[15][15] ), .A(wdata[15]), .S(n363), .Y(n1474) );
  INVX2 U1620 ( .A(n997), .Y(n1587) );
  INVX2 U1621 ( .A(n1015), .Y(n1588) );
  INVX2 U1622 ( .A(n1032), .Y(n1589) );
  INVX2 U1623 ( .A(n1051), .Y(n1590) );
  INVX2 U1624 ( .A(n1068), .Y(n1591) );
  INVX2 U1625 ( .A(n1086), .Y(n1592) );
  INVX2 U1626 ( .A(n1104), .Y(n1593) );
  INVX2 U1627 ( .A(n1121), .Y(n1594) );
  INVX2 U1628 ( .A(wdata[1]), .Y(n1595) );
  INVX2 U1629 ( .A(n996), .Y(n1596) );
  INVX2 U1630 ( .A(n1014), .Y(n1597) );
  INVX2 U1631 ( .A(n1031), .Y(n1598) );
  INVX2 U1632 ( .A(n1050), .Y(n1599) );
  INVX2 U1633 ( .A(n1067), .Y(n1600) );
  INVX2 U1634 ( .A(n1085), .Y(n1601) );
  INVX2 U1635 ( .A(n1103), .Y(n1602) );
  INVX2 U1636 ( .A(n1120), .Y(n1603) );
  INVX2 U1637 ( .A(wdata[0]), .Y(n1604) );
  INVX2 U1638 ( .A(n994), .Y(n1605) );
  INVX2 U1639 ( .A(n1012), .Y(n1606) );
  INVX2 U1640 ( .A(n1029), .Y(n1607) );
  INVX2 U1641 ( .A(n1048), .Y(n1608) );
  INVX2 U1642 ( .A(n1065), .Y(n1609) );
  INVX2 U1643 ( .A(n1083), .Y(n1610) );
  INVX2 U1644 ( .A(n1101), .Y(n1611) );
  INVX2 U1645 ( .A(n1118), .Y(n1612) );
  INVX2 U1646 ( .A(wen), .Y(n1613) );
endmodule


module alu_DW01_add_1 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202;

  BUFX2 U2 ( .A(A[1]), .Y(n1) );
  INVX2 U3 ( .A(n104), .Y(n189) );
  AND2X2 U4 ( .A(n32), .B(n127), .Y(n2) );
  AND2X2 U5 ( .A(n55), .B(n96), .Y(n3) );
  INVX2 U6 ( .A(n98), .Y(n96) );
  AND2X2 U7 ( .A(n155), .B(n118), .Y(n4) );
  INVX1 U8 ( .A(n188), .Y(n5) );
  INVX2 U9 ( .A(n191), .Y(n200) );
  BUFX2 U10 ( .A(B[1]), .Y(n6) );
  OR2X2 U11 ( .A(A[6]), .B(B[6]), .Y(n7) );
  INVX2 U12 ( .A(n185), .Y(n8) );
  AND2X1 U13 ( .A(n101), .B(n104), .Y(n198) );
  INVX2 U14 ( .A(n78), .Y(n9) );
  INVX1 U15 ( .A(n131), .Y(n10) );
  INVX2 U16 ( .A(n10), .Y(n11) );
  BUFX2 U17 ( .A(n42), .Y(n12) );
  OAI21X1 U18 ( .A(n188), .B(n189), .C(n190), .Y(n13) );
  AND2X2 U19 ( .A(n35), .B(n36), .Y(n14) );
  AND2X1 U20 ( .A(n35), .B(n36), .Y(n121) );
  AND2X2 U21 ( .A(n71), .B(n79), .Y(n36) );
  NOR2X1 U22 ( .A(n150), .B(n151), .Y(n44) );
  OAI21X1 U23 ( .A(n147), .B(n148), .C(n44), .Y(n48) );
  AOI22X1 U24 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n35) );
  INVX1 U25 ( .A(A[5]), .Y(n15) );
  INVX1 U26 ( .A(B[5]), .Y(n16) );
  INVX1 U27 ( .A(A[4]), .Y(n17) );
  INVX1 U28 ( .A(B[4]), .Y(n18) );
  BUFX2 U29 ( .A(n71), .Y(n19) );
  NAND2X1 U30 ( .A(n12), .B(n20), .Y(n73) );
  AND2X1 U31 ( .A(n124), .B(n93), .Y(n20) );
  OR2X1 U32 ( .A(B[10]), .B(A[10]), .Y(n25) );
  INVX1 U33 ( .A(n155), .Y(n21) );
  INVX2 U34 ( .A(n21), .Y(n22) );
  INVX2 U35 ( .A(n65), .Y(n23) );
  INVX2 U36 ( .A(n66), .Y(n65) );
  OR2X2 U37 ( .A(B[8]), .B(A[8]), .Y(n24) );
  OR2X2 U38 ( .A(n187), .B(n125), .Y(n26) );
  INVX4 U39 ( .A(n61), .Y(n194) );
  AND2X2 U40 ( .A(n24), .B(n61), .Y(n53) );
  XNOR2X1 U41 ( .A(n27), .B(n28), .Y(SUM[4]) );
  INVX1 U42 ( .A(n26), .Y(n27) );
  AND2X2 U43 ( .A(n41), .B(n82), .Y(n28) );
  OR2X1 U44 ( .A(A[3]), .B(B[3]), .Y(n57) );
  BUFX2 U45 ( .A(n24), .Y(n29) );
  BUFX2 U46 ( .A(n7), .Y(n30) );
  AND2X1 U47 ( .A(n33), .B(n82), .Y(n89) );
  INVX1 U48 ( .A(n101), .Y(n188) );
  BUFX2 U49 ( .A(n156), .Y(n31) );
  BUFX2 U50 ( .A(n118), .Y(n32) );
  INVX1 U51 ( .A(n81), .Y(n78) );
  BUFX2 U52 ( .A(n84), .Y(n33) );
  INVX1 U53 ( .A(n194), .Y(n34) );
  XNOR2X1 U54 ( .A(n193), .B(n37), .Y(SUM[10]) );
  AND2X2 U55 ( .A(n39), .B(n172), .Y(n37) );
  XNOR2X1 U56 ( .A(n168), .B(n2), .Y(SUM[12]) );
  XNOR2X1 U57 ( .A(n60), .B(n38), .Y(SUM[9]) );
  AND2X2 U58 ( .A(n34), .B(n62), .Y(n38) );
  BUFX2 U59 ( .A(n25), .Y(n39) );
  BUFX2 U60 ( .A(n180), .Y(n40) );
  INVX2 U61 ( .A(n88), .Y(n41) );
  NAND2X1 U62 ( .A(n156), .B(n4), .Y(n152) );
  OR2X2 U63 ( .A(A[3]), .B(B[3]), .Y(n55) );
  INVX1 U64 ( .A(n14), .Y(n147) );
  AND2X1 U65 ( .A(n14), .B(n182), .Y(n177) );
  INVX1 U66 ( .A(n76), .Y(n88) );
  NAND2X1 U67 ( .A(n55), .B(n96), .Y(n42) );
  NOR2X1 U68 ( .A(n150), .B(n151), .Y(n43) );
  NOR2X1 U69 ( .A(n166), .B(n52), .Y(n45) );
  XNOR2X1 U70 ( .A(n144), .B(n46), .Y(SUM[14]) );
  AND2X2 U71 ( .A(n119), .B(n135), .Y(n46) );
  INVX1 U72 ( .A(n93), .Y(n125) );
  OAI21X1 U73 ( .A(n147), .B(n148), .C(n149), .Y(n47) );
  XOR2X1 U74 ( .A(n91), .B(n92), .Y(SUM[3]) );
  XNOR2X1 U75 ( .A(n85), .B(n49), .Y(SUM[6]) );
  NAND2X1 U76 ( .A(n30), .B(n86), .Y(n49) );
  XOR2X1 U77 ( .A(n90), .B(n50), .Y(SUM[5]) );
  NAND2X1 U78 ( .A(n33), .B(n81), .Y(n50) );
  XOR2X1 U79 ( .A(n68), .B(n69), .Y(SUM[7]) );
  XOR2X1 U80 ( .A(n175), .B(n176), .Y(SUM[11]) );
  NOR2X1 U81 ( .A(n51), .B(n52), .Y(n122) );
  NAND2X1 U82 ( .A(n24), .B(n34), .Y(n51) );
  NAND2X1 U83 ( .A(n167), .B(n155), .Y(n52) );
  AND2X2 U84 ( .A(n123), .B(n13), .Y(n54) );
  AND2X2 U85 ( .A(n105), .B(n100), .Y(SUM[0]) );
  NOR2X1 U86 ( .A(n54), .B(n120), .Y(n113) );
  NAND2X1 U87 ( .A(n93), .B(n160), .Y(n159) );
  NOR2X1 U88 ( .A(n198), .B(n199), .Y(n197) );
  BUFX2 U89 ( .A(n3), .Y(n58) );
  BUFX2 U90 ( .A(n95), .Y(n59) );
  INVX1 U91 ( .A(n167), .Y(n184) );
  AOI21X1 U92 ( .A(n64), .B(n29), .C(n65), .Y(n60) );
  XNOR2X1 U93 ( .A(n64), .B(n67), .Y(SUM[8]) );
  NAND2X1 U94 ( .A(n29), .B(n23), .Y(n67) );
  NAND2X1 U95 ( .A(n70), .B(n19), .Y(n69) );
  AOI21X1 U96 ( .A(n72), .B(n26), .C(n74), .Y(n68) );
  OAI21X1 U97 ( .A(n76), .B(n75), .C(n77), .Y(n74) );
  AOI21X1 U98 ( .A(n78), .B(n30), .C(n80), .Y(n77) );
  AND2X2 U99 ( .A(n82), .B(n83), .Y(n72) );
  INVX2 U100 ( .A(n75), .Y(n83) );
  NAND2X1 U101 ( .A(n30), .B(n84), .Y(n75) );
  NAND2X1 U102 ( .A(n9), .B(n87), .Y(n85) );
  OAI21X1 U103 ( .A(n88), .B(n73), .C(n89), .Y(n87) );
  AOI21X1 U104 ( .A(n73), .B(n82), .C(n88), .Y(n90) );
  NAND2X1 U105 ( .A(n93), .B(n55), .Y(n92) );
  AOI21X1 U106 ( .A(n94), .B(n59), .C(n96), .Y(n91) );
  XNOR2X1 U107 ( .A(n94), .B(n97), .Y(SUM[2]) );
  NAND2X1 U108 ( .A(n95), .B(n98), .Y(n97) );
  OAI21X1 U109 ( .A(n99), .B(n100), .C(n101), .Y(n94) );
  INVX2 U110 ( .A(n189), .Y(n100) );
  INVX2 U111 ( .A(n102), .Y(n99) );
  XNOR2X1 U112 ( .A(n103), .B(n189), .Y(SUM[1]) );
  NAND2X1 U113 ( .A(n102), .B(n5), .Y(n103) );
  NAND2X1 U114 ( .A(n106), .B(n107), .Y(SUM[16]) );
  NAND2X1 U115 ( .A(n108), .B(n109), .Y(n107) );
  NAND2X1 U116 ( .A(n110), .B(n111), .Y(n108) );
  OAI21X1 U117 ( .A(n112), .B(n113), .C(n114), .Y(n111) );
  NOR2X1 U118 ( .A(n115), .B(n116), .Y(n114) );
  NAND2X1 U119 ( .A(n117), .B(n32), .Y(n116) );
  INVX2 U120 ( .A(n119), .Y(n115) );
  NAND2X1 U121 ( .A(n14), .B(n122), .Y(n120) );
  NOR2X1 U122 ( .A(n125), .B(n58), .Y(n123) );
  NAND3X1 U123 ( .A(n126), .B(n127), .C(n128), .Y(n112) );
  NAND3X1 U124 ( .A(n122), .B(n19), .C(n129), .Y(n128) );
  NAND2X1 U125 ( .A(n130), .B(n11), .Y(n129) );
  NOR2X1 U126 ( .A(n80), .B(n132), .Y(n130) );
  INVX2 U127 ( .A(n86), .Y(n80) );
  AOI21X1 U128 ( .A(n133), .B(n119), .C(n134), .Y(n110) );
  INVX2 U129 ( .A(n135), .Y(n134) );
  XNOR2X1 U130 ( .A(n136), .B(n137), .Y(SUM[15]) );
  NOR2X1 U131 ( .A(n138), .B(n139), .Y(n137) );
  INVX2 U132 ( .A(n109), .Y(n139) );
  OR2X2 U133 ( .A(A[15]), .B(B[15]), .Y(n109) );
  INVX2 U134 ( .A(n106), .Y(n138) );
  NAND2X1 U135 ( .A(B[15]), .B(A[15]), .Y(n106) );
  AOI21X1 U136 ( .A(n140), .B(n47), .C(n142), .Y(n136) );
  NAND2X1 U137 ( .A(n143), .B(n135), .Y(n142) );
  NAND2X1 U138 ( .A(n133), .B(n119), .Y(n143) );
  AND2X2 U139 ( .A(n117), .B(n119), .Y(n140) );
  NAND2X1 U140 ( .A(B[14]), .B(A[14]), .Y(n135) );
  OR2X2 U141 ( .A(A[14]), .B(B[14]), .Y(n119) );
  AOI21X1 U142 ( .A(n117), .B(n141), .C(n133), .Y(n144) );
  INVX2 U143 ( .A(n145), .Y(n133) );
  XNOR2X1 U144 ( .A(n48), .B(n146), .Y(SUM[13]) );
  NAND2X1 U145 ( .A(n117), .B(n145), .Y(n146) );
  NAND2X1 U146 ( .A(B[13]), .B(A[13]), .Y(n145) );
  OR2X2 U147 ( .A(A[13]), .B(B[13]), .Y(n117) );
  OAI21X1 U148 ( .A(n147), .B(n148), .C(n43), .Y(n141) );
  NOR2X1 U149 ( .A(n150), .B(n151), .Y(n149) );
  NAND3X1 U150 ( .A(n127), .B(n152), .C(n153), .Y(n151) );
  NAND2X1 U151 ( .A(n132), .B(n154), .Y(n153) );
  INVX2 U152 ( .A(n157), .Y(n150) );
  NAND3X1 U153 ( .A(n71), .B(n158), .C(n45), .Y(n157) );
  NAND2X1 U154 ( .A(n131), .B(n86), .Y(n158) );
  NAND2X1 U155 ( .A(n154), .B(n159), .Y(n148) );
  AOI21X1 U156 ( .A(n162), .B(n161), .C(n3), .Y(n160) );
  NAND2X1 U157 ( .A(n104), .B(n101), .Y(n162) );
  NOR2X1 U158 ( .A(n163), .B(n164), .Y(n161) );
  NAND2X1 U159 ( .A(n95), .B(n57), .Y(n164) );
  NOR2X1 U160 ( .A(n165), .B(n166), .Y(n154) );
  NAND3X1 U161 ( .A(n63), .B(n61), .C(n118), .Y(n166) );
  NAND2X1 U162 ( .A(n155), .B(n25), .Y(n165) );
  NAND2X1 U163 ( .A(B[12]), .B(A[12]), .Y(n127) );
  OR2X2 U164 ( .A(A[12]), .B(B[12]), .Y(n118) );
  AOI21X1 U165 ( .A(n64), .B(n122), .C(n169), .Y(n168) );
  INVX2 U166 ( .A(n126), .Y(n169) );
  NAND2X1 U167 ( .A(n31), .B(n22), .Y(n126) );
  OAI21X1 U168 ( .A(n194), .B(n170), .C(n171), .Y(n156) );
  AND2X2 U169 ( .A(n172), .B(n173), .Y(n171) );
  NAND2X1 U170 ( .A(n167), .B(n174), .Y(n170) );
  NAND2X1 U171 ( .A(n62), .B(n66), .Y(n174) );
  NAND2X1 U172 ( .A(n173), .B(n22), .Y(n176) );
  OR2X2 U173 ( .A(A[11]), .B(B[11]), .Y(n155) );
  NAND2X1 U174 ( .A(B[11]), .B(A[11]), .Y(n173) );
  AOI21X1 U175 ( .A(n177), .B(n26), .C(n178), .Y(n175) );
  OAI21X1 U176 ( .A(n179), .B(n40), .C(n181), .Y(n178) );
  AOI21X1 U177 ( .A(n182), .B(n132), .C(n183), .Y(n181) );
  OAI21X1 U178 ( .A(n184), .B(n185), .C(n172), .Y(n183) );
  INVX2 U179 ( .A(n186), .Y(n185) );
  INVX2 U180 ( .A(n70), .Y(n132) );
  NAND2X1 U181 ( .A(n12), .B(n13), .Y(n187) );
  OAI21X1 U182 ( .A(n188), .B(n189), .C(n190), .Y(n124) );
  NOR2X1 U183 ( .A(n191), .B(n163), .Y(n190) );
  INVX2 U184 ( .A(n192), .Y(n163) );
  OR2X2 U185 ( .A(n1), .B(n6), .Y(n102) );
  OR2X2 U186 ( .A(A[2]), .B(B[2]), .Y(n95) );
  INVX2 U187 ( .A(n179), .Y(n182) );
  NAND2X1 U188 ( .A(n53), .B(n39), .Y(n179) );
  NAND2X1 U189 ( .A(A[10]), .B(B[10]), .Y(n172) );
  OR2X2 U190 ( .A(A[10]), .B(B[10]), .Y(n167) );
  AOI21X1 U191 ( .A(n64), .B(n53), .C(n8), .Y(n193) );
  OAI21X1 U192 ( .A(n194), .B(n23), .C(n62), .Y(n186) );
  NAND2X1 U193 ( .A(B[9]), .B(A[9]), .Y(n62) );
  NAND2X1 U194 ( .A(A[8]), .B(B[8]), .Y(n66) );
  NAND3X1 U195 ( .A(n70), .B(n180), .C(n195), .Y(n64) );
  OAI21X1 U196 ( .A(n197), .B(n196), .C(n121), .Y(n195) );
  OR2X2 U197 ( .A(A[4]), .B(B[4]), .Y(n82) );
  NAND2X1 U198 ( .A(n200), .B(n192), .Y(n199) );
  OR2X2 U199 ( .A(A[1]), .B(B[1]), .Y(n192) );
  OAI22X1 U200 ( .A(A[2]), .B(B[2]), .C(B[3]), .D(A[3]), .Y(n191) );
  NAND2X1 U201 ( .A(B[1]), .B(A[1]), .Y(n101) );
  NAND2X1 U202 ( .A(n93), .B(n42), .Y(n196) );
  NAND2X1 U203 ( .A(B[3]), .B(A[3]), .Y(n93) );
  NAND2X1 U204 ( .A(B[2]), .B(A[2]), .Y(n98) );
  NAND2X1 U205 ( .A(B[7]), .B(A[7]), .Y(n70) );
  NAND2X1 U206 ( .A(n201), .B(n19), .Y(n180) );
  OR2X2 U207 ( .A(A[7]), .B(B[7]), .Y(n71) );
  NAND2X1 U208 ( .A(n86), .B(n131), .Y(n201) );
  NAND3X1 U209 ( .A(n84), .B(n7), .C(n202), .Y(n131) );
  NAND2X1 U210 ( .A(n81), .B(n76), .Y(n202) );
  NAND2X1 U211 ( .A(B[5]), .B(A[5]), .Y(n81) );
  NAND2X1 U212 ( .A(B[4]), .B(A[4]), .Y(n76) );
  OR2X2 U213 ( .A(A[6]), .B(B[6]), .Y(n79) );
  OR2X2 U214 ( .A(A[5]), .B(B[5]), .Y(n84) );
  NAND2X1 U215 ( .A(B[6]), .B(A[6]), .Y(n86) );
  OR2X2 U216 ( .A(A[8]), .B(B[8]), .Y(n63) );
  OR2X2 U217 ( .A(A[9]), .B(B[9]), .Y(n61) );
  NAND2X1 U218 ( .A(A[0]), .B(B[0]), .Y(n104) );
  OR2X2 U219 ( .A(A[0]), .B(B[0]), .Y(n105) );
endmodule


module alu ( A, B, add, res, V );
  input [15:0] A;
  input [15:0] B;
  output [15:0] res;
  input add;
  output V;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N17, N16, N15, N14, N13, N12, N11,
         N10;

  alu_DW01_add_1 add_20_aco ( .A({1'b0, A}), .B({1'b0, N17, N16, N15, N14, N13, 
        N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2}), .CI(1'b0), .SUM({V, 
        res}) );
  AND2X2 U1 ( .A(B[15]), .B(add), .Y(N17) );
  AND2X2 U2 ( .A(B[14]), .B(add), .Y(N16) );
  AND2X2 U3 ( .A(B[13]), .B(add), .Y(N15) );
  AND2X2 U4 ( .A(B[12]), .B(add), .Y(N14) );
  AND2X2 U5 ( .A(B[11]), .B(add), .Y(N13) );
  AND2X2 U6 ( .A(add), .B(B[10]), .Y(N12) );
  AND2X2 U7 ( .A(B[9]), .B(add), .Y(N11) );
  AND2X2 U8 ( .A(add), .B(B[8]), .Y(N10) );
  AND2X2 U9 ( .A(add), .B(B[7]), .Y(N9) );
  AND2X2 U10 ( .A(B[6]), .B(add), .Y(N8) );
  AND2X2 U11 ( .A(add), .B(B[5]), .Y(N7) );
  AND2X2 U12 ( .A(B[4]), .B(add), .Y(N6) );
  AND2X2 U13 ( .A(B[3]), .B(add), .Y(N5) );
  AND2X2 U14 ( .A(B[2]), .B(add), .Y(N4) );
  AND2X2 U15 ( .A(B[1]), .B(add), .Y(N3) );
  AND2X2 U16 ( .A(B[0]), .B(add), .Y(N2) );
endmodule


module datapath ( clk, nReset, A, B, C, data, op, V, outreg );
  input [3:0] A;
  input [3:0] B;
  input [3:0] C;
  input [15:0] data;
  input [1:0] op;
  output [15:0] outreg;
  input clk, nReset;
  output V;
  wire   sel, wen, add, n26, n33, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n27, n28, n29, n30, n31, n32, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45;
  wire   [15:0] rdata1;
  wire   [15:0] rdata2;
  wire   [15:0] res;

  AOI22X1 U30 ( .A(data[1]), .B(n5), .C(res[1]), .D(n1), .Y(n26) );
  AOI22X1 U37 ( .A(data[0]), .B(n5), .C(res[0]), .D(n1), .Y(n33) );
  datapath_ctrl U1 ( .op(op), .sel(sel), .wen(wen), .add(add) );
  regfile U2 ( .clk(clk), .nReset(nReset), .wsel(C), .rsel1(A), .rsel2(B), 
        .wdata({n29, n30, n31, n32, n34, n35, n36, n37, n38, n39, n40, n41, 
        n42, n43, n44, n45}), .wen(wen), .rdata1(rdata1), .rdata2(rdata2), 
        .reg0(outreg) );
  alu U3 ( .A(rdata1), .B(rdata2), .add(add), .res(res), .V(V) );
  INVX2 U5 ( .A(sel), .Y(n1) );
  INVX4 U6 ( .A(n4), .Y(n30) );
  INVX4 U7 ( .A(n3), .Y(n29) );
  MUX2X1 U8 ( .B(data[14]), .A(res[14]), .S(n1), .Y(n4) );
  MUX2X1 U9 ( .B(data[15]), .A(res[15]), .S(n1), .Y(n3) );
  MUX2X1 U10 ( .B(res[9]), .A(data[9]), .S(sel), .Y(n2) );
  INVX2 U11 ( .A(n2), .Y(n36) );
  INVX2 U12 ( .A(n1), .Y(n5) );
  INVX2 U13 ( .A(res[2]), .Y(n7) );
  INVX2 U14 ( .A(data[2]), .Y(n6) );
  MUX2X1 U15 ( .B(n7), .A(n6), .S(n5), .Y(n43) );
  INVX2 U16 ( .A(res[3]), .Y(n9) );
  INVX2 U17 ( .A(data[3]), .Y(n8) );
  MUX2X1 U18 ( .B(n9), .A(n8), .S(n5), .Y(n42) );
  INVX2 U19 ( .A(res[4]), .Y(n11) );
  INVX2 U20 ( .A(data[4]), .Y(n10) );
  MUX2X1 U21 ( .B(n11), .A(n10), .S(n5), .Y(n41) );
  INVX2 U22 ( .A(res[5]), .Y(n13) );
  INVX2 U23 ( .A(data[5]), .Y(n12) );
  MUX2X1 U24 ( .B(n13), .A(n12), .S(n5), .Y(n40) );
  INVX2 U25 ( .A(res[6]), .Y(n15) );
  INVX2 U26 ( .A(data[6]), .Y(n14) );
  MUX2X1 U27 ( .B(n15), .A(n14), .S(n5), .Y(n39) );
  INVX2 U28 ( .A(res[7]), .Y(n17) );
  INVX2 U29 ( .A(data[7]), .Y(n16) );
  MUX2X1 U31 ( .B(n17), .A(n16), .S(n5), .Y(n38) );
  INVX2 U32 ( .A(res[8]), .Y(n19) );
  INVX2 U33 ( .A(data[8]), .Y(n18) );
  MUX2X1 U34 ( .B(n19), .A(n18), .S(n5), .Y(n37) );
  INVX2 U35 ( .A(res[10]), .Y(n21) );
  INVX2 U36 ( .A(data[10]), .Y(n20) );
  MUX2X1 U38 ( .B(n21), .A(n20), .S(sel), .Y(n35) );
  INVX2 U39 ( .A(res[11]), .Y(n23) );
  INVX2 U40 ( .A(data[11]), .Y(n22) );
  MUX2X1 U41 ( .B(n23), .A(n22), .S(sel), .Y(n34) );
  INVX2 U42 ( .A(res[12]), .Y(n25) );
  INVX2 U43 ( .A(data[12]), .Y(n24) );
  MUX2X1 U44 ( .B(n25), .A(n24), .S(sel), .Y(n32) );
  INVX2 U45 ( .A(res[13]), .Y(n28) );
  INVX2 U46 ( .A(data[13]), .Y(n27) );
  MUX2X1 U47 ( .B(n28), .A(n27), .S(sel), .Y(n31) );
  INVX2 U48 ( .A(n26), .Y(n44) );
  INVX2 U49 ( .A(n33), .Y(n45) );
endmodule


module controller ( clk, nReset, dr, V, cnt_up, modwait, op, A, B, C, err );
  output [1:0] op;
  output [3:0] A;
  output [3:0] B;
  output [3:0] C;
  input clk, nReset, dr, V;
  output cnt_up, modwait, err;
  wire   n71, N53, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, \C[2] ;
  wire   [3:0] state;
  wire   [3:0] nextState;
  assign C[3] = 1'b0;
  assign B[3] = 1'b0;
  assign A[2] = 1'b0;
  assign A[3] = 1'b0;
  assign cnt_up = \C[2] ;
  assign C[2] = \C[2] ;

  DFFSR \state_reg[0]  ( .D(nextState[0]), .CLK(clk), .R(nReset), .S(1'b1), 
        .Q(state[0]) );
  DFFSR \state_reg[2]  ( .D(nextState[2]), .CLK(clk), .R(nReset), .S(1'b1), 
        .Q(state[2]) );
  DFFSR \state_reg[3]  ( .D(nextState[3]), .CLK(clk), .R(nReset), .S(1'b1), 
        .Q(state[3]) );
  DFFSR \state_reg[1]  ( .D(nextState[1]), .CLK(clk), .R(nReset), .S(1'b1), 
        .Q(state[1]) );
  LATCH modwait_reg ( .CLK(N53), .D(\C[2] ), .Q(modwait) );
  AND2X2 U7 ( .A(n47), .B(n17), .Y(n5) );
  BUFX2 U8 ( .A(n23), .Y(n6) );
  INVX2 U9 ( .A(n9), .Y(B[1]) );
  INVX1 U10 ( .A(n22), .Y(n7) );
  INVX2 U11 ( .A(n7), .Y(n8) );
  INVX1 U12 ( .A(n31), .Y(n71) );
  NAND2X1 U13 ( .A(n55), .B(n71), .Y(n9) );
  INVX1 U14 ( .A(n47), .Y(n26) );
  INVX1 U15 ( .A(n43), .Y(n10) );
  INVX2 U16 ( .A(n10), .Y(n11) );
  INVX1 U17 ( .A(n57), .Y(n12) );
  INVX1 U18 ( .A(n12), .Y(n13) );
  INVX1 U19 ( .A(n24), .Y(n14) );
  INVX2 U20 ( .A(n14), .Y(n15) );
  BUFX2 U21 ( .A(n71), .Y(op[1]) );
  INVX1 U22 ( .A(state[3]), .Y(n63) );
  INVX1 U23 ( .A(state[3]), .Y(n17) );
  BUFX2 U24 ( .A(state[1]), .Y(n33) );
  INVX1 U25 ( .A(A[1]), .Y(n18) );
  NAND2X1 U26 ( .A(n41), .B(n62), .Y(n19) );
  INVX1 U27 ( .A(n26), .Y(n20) );
  INVX1 U28 ( .A(n34), .Y(n21) );
  NAND2X1 U29 ( .A(n39), .B(n24), .Y(n22) );
  INVX2 U30 ( .A(n36), .Y(n24) );
  INVX1 U31 ( .A(n39), .Y(n23) );
  NAND2X1 U32 ( .A(n42), .B(n5), .Y(n49) );
  INVX1 U33 ( .A(n41), .Y(n42) );
  INVX1 U34 ( .A(n49), .Y(\C[2] ) );
  INVX1 U35 ( .A(n37), .Y(n25) );
  INVX2 U36 ( .A(state[2]), .Y(n47) );
  INVX4 U37 ( .A(n28), .Y(B[0]) );
  NAND2X1 U38 ( .A(state[2]), .B(n63), .Y(n27) );
  OR2X2 U39 ( .A(n22), .B(n27), .Y(n28) );
  INVX2 U40 ( .A(\C[2] ), .Y(n35) );
  AND2X2 U41 ( .A(n46), .B(n21), .Y(op[0]) );
  NAND2X1 U42 ( .A(state[2]), .B(n63), .Y(n31) );
  INVX4 U43 ( .A(n32), .Y(n39) );
  BUFX4 U44 ( .A(state[0]), .Y(n32) );
  INVX1 U45 ( .A(n40), .Y(C[1]) );
  BUFX2 U46 ( .A(state[3]), .Y(n34) );
  INVX1 U47 ( .A(n19), .Y(n37) );
  INVX4 U48 ( .A(n52), .Y(A[1]) );
  INVX1 U49 ( .A(state[1]), .Y(n36) );
  NAND2X1 U50 ( .A(n36), .B(n32), .Y(n41) );
  NAND2X1 U51 ( .A(n39), .B(n33), .Y(n62) );
  NAND2X1 U52 ( .A(n62), .B(n41), .Y(n55) );
  NAND2X1 U53 ( .A(n32), .B(n33), .Y(n57) );
  NAND2X1 U54 ( .A(n37), .B(n13), .Y(n46) );
  INVX2 U55 ( .A(n46), .Y(n38) );
  NAND3X1 U56 ( .A(n34), .B(n38), .C(n20), .Y(n54) );
  INVX2 U57 ( .A(n54), .Y(err) );
  NAND3X1 U58 ( .A(n17), .B(n33), .C(n47), .Y(n40) );
  OAI21X1 U59 ( .A(n27), .B(n24), .C(n40), .Y(n43) );
  NAND2X1 U60 ( .A(n11), .B(n39), .Y(n65) );
  INVX2 U61 ( .A(n65), .Y(C[0]) );
  NOR2X1 U62 ( .A(n31), .B(n57), .Y(B[2]) );
  NAND2X1 U63 ( .A(n23), .B(n43), .Y(n44) );
  NAND2X1 U64 ( .A(n49), .B(n44), .Y(A[0]) );
  NOR2X1 U65 ( .A(n26), .B(n34), .Y(n45) );
  NAND2X1 U66 ( .A(n45), .B(n19), .Y(n52) );
  NOR2X1 U67 ( .A(n15), .B(n6), .Y(n48) );
  NAND2X1 U68 ( .A(n48), .B(n20), .Y(n60) );
  NAND2X1 U69 ( .A(n60), .B(n35), .Y(N53) );
  NOR2X1 U70 ( .A(V), .B(n34), .Y(n50) );
  NAND2X1 U71 ( .A(n50), .B(n25), .Y(n51) );
  NAND2X1 U72 ( .A(n18), .B(n51), .Y(nextState[1]) );
  NAND3X1 U73 ( .A(n26), .B(op[0]), .C(V), .Y(n53) );
  OAI21X1 U74 ( .A(dr), .B(n54), .C(n53), .Y(nextState[3]) );
  NAND2X1 U75 ( .A(V), .B(n25), .Y(n56) );
  NAND3X1 U76 ( .A(n13), .B(op[1]), .C(n56), .Y(n59) );
  NAND2X1 U77 ( .A(C[1]), .B(n6), .Y(n58) );
  NAND2X1 U78 ( .A(n59), .B(n58), .Y(nextState[2]) );
  INVX2 U79 ( .A(n60), .Y(n61) );
  NAND2X1 U80 ( .A(dr), .B(n61), .Y(n67) );
  NOR2X1 U81 ( .A(V), .B(n8), .Y(n64) );
  NAND2X1 U82 ( .A(n64), .B(n21), .Y(n66) );
  NAND3X1 U83 ( .A(n67), .B(n66), .C(n65), .Y(nextState[0]) );
endmodule


module counter ( clk, nReset, cnt_up, count_out );
  output [15:0] count_out;
  input clk, nReset, cnt_up;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N19,
         n5, n7, n10, n11, n13, n15, n16, n18, n20, n21, n23, n25, n26, n28,
         n30, n31, n33, n35, n36, n38, n40, n41, n43, n45, n46, n48, n50, n51,
         n53, n55, n56, n58, n60, n61, n63, n65, n66, n68, n70, n71, n73, n75,
         n76, n78, n80, n81, n83, n84, n85, n86, n88, n90, n91, n93, n95, n96,
         n98, n100, n101, n103, n105, n106, n108, n110, n111, n113, n115, n116,
         n118, n120, n121, n123, n125, n126, n128, n130, n131, n133, n135,
         n136, n138, n140, n141, n143, n145, n146, n148, n150, n151, n153,
         n155, n156, n158, n160, n162, n164, \add_35/carry[14] ,
         \add_35/carry[13] , \add_35/carry[12] , \add_35/carry[11] ,
         \add_35/carry[10] , \add_35/carry[9] , \add_35/carry[8] ,
         \add_35/carry[7] , \add_35/carry[6] , \add_35/carry[5] ,
         \add_35/carry[4] , \add_35/carry[3] , n1, n2, n3, n4, n6, n8, n9, n12,
         n14, n17, n19, n22, n24, n27, n29, n32, n34, n37, n39, n42, n44, n47,
         n49, n52, n54, n57, n59, n62, n64, n67, n69, n72, n74, n77, n79, n82,
         n165, n166, n167, n168, n169, n170, n171, n172, n173;
  wire   [15:0] currentCount;
  wire   [15:0] nextCount;

  DFFSR \nextCount_reg[0]  ( .D(n164), .CLK(clk), .R(1'b1), .S(nReset), .Q(
        nextCount[0]) );
  DFFSR \currentCount_reg[0]  ( .D(n162), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        N4) );
  DFFSR \nextCount_reg[1]  ( .D(n160), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[1]) );
  DFFSR \currentCount_reg[1]  ( .D(n158), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[1]) );
  DFFPOSX1 \count_out_reg[1]  ( .D(n156), .CLK(clk), .Q(count_out[1]) );
  DFFSR \nextCount_reg[2]  ( .D(n155), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[2]) );
  DFFSR \currentCount_reg[2]  ( .D(n153), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[2]) );
  DFFPOSX1 \count_out_reg[2]  ( .D(n151), .CLK(clk), .Q(count_out[2]) );
  DFFSR \nextCount_reg[3]  ( .D(n150), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[3]) );
  DFFSR \currentCount_reg[3]  ( .D(n148), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[3]) );
  DFFPOSX1 \count_out_reg[3]  ( .D(n146), .CLK(clk), .Q(count_out[3]) );
  DFFSR \nextCount_reg[4]  ( .D(n145), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[4]) );
  DFFSR \currentCount_reg[4]  ( .D(n143), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[4]) );
  DFFPOSX1 \count_out_reg[4]  ( .D(n141), .CLK(clk), .Q(count_out[4]) );
  DFFSR \nextCount_reg[5]  ( .D(n140), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[5]) );
  DFFSR \currentCount_reg[5]  ( .D(n138), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[5]) );
  DFFPOSX1 \count_out_reg[5]  ( .D(n136), .CLK(clk), .Q(count_out[5]) );
  DFFSR \nextCount_reg[6]  ( .D(n135), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[6]) );
  DFFSR \currentCount_reg[6]  ( .D(n133), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[6]) );
  DFFPOSX1 \count_out_reg[6]  ( .D(n131), .CLK(clk), .Q(count_out[6]) );
  DFFSR \nextCount_reg[7]  ( .D(n130), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[7]) );
  DFFSR \currentCount_reg[7]  ( .D(n128), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[7]) );
  DFFPOSX1 \count_out_reg[7]  ( .D(n126), .CLK(clk), .Q(count_out[7]) );
  DFFSR \nextCount_reg[8]  ( .D(n125), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[8]) );
  DFFSR \currentCount_reg[8]  ( .D(n123), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[8]) );
  DFFPOSX1 \count_out_reg[8]  ( .D(n121), .CLK(clk), .Q(count_out[8]) );
  DFFSR \nextCount_reg[9]  ( .D(n120), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[9]) );
  DFFSR \currentCount_reg[9]  ( .D(n118), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[9]) );
  DFFPOSX1 \count_out_reg[9]  ( .D(n116), .CLK(clk), .Q(count_out[9]) );
  DFFSR \nextCount_reg[10]  ( .D(n115), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[10]) );
  DFFSR \currentCount_reg[10]  ( .D(n113), .CLK(clk), .R(nReset), .S(1'b1), 
        .Q(currentCount[10]) );
  DFFPOSX1 \count_out_reg[10]  ( .D(n111), .CLK(clk), .Q(count_out[10]) );
  DFFSR \nextCount_reg[11]  ( .D(n110), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[11]) );
  DFFSR \currentCount_reg[11]  ( .D(n108), .CLK(clk), .R(nReset), .S(1'b1), 
        .Q(currentCount[11]) );
  DFFPOSX1 \count_out_reg[11]  ( .D(n106), .CLK(clk), .Q(count_out[11]) );
  DFFSR \nextCount_reg[12]  ( .D(n105), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[12]) );
  DFFSR \currentCount_reg[12]  ( .D(n103), .CLK(clk), .R(nReset), .S(1'b1), 
        .Q(currentCount[12]) );
  DFFPOSX1 \count_out_reg[12]  ( .D(n101), .CLK(clk), .Q(count_out[12]) );
  DFFSR \nextCount_reg[13]  ( .D(n100), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[13]) );
  DFFSR \currentCount_reg[13]  ( .D(n98), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[13]) );
  DFFPOSX1 \count_out_reg[13]  ( .D(n96), .CLK(clk), .Q(count_out[13]) );
  DFFSR \nextCount_reg[14]  ( .D(n95), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[14]) );
  DFFSR \currentCount_reg[14]  ( .D(n93), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[14]) );
  DFFPOSX1 \count_out_reg[14]  ( .D(n91), .CLK(clk), .Q(count_out[14]) );
  DFFSR \nextCount_reg[15]  ( .D(n90), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[15]) );
  DFFSR \currentCount_reg[15]  ( .D(n88), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[15]) );
  DFFPOSX1 \count_out_reg[15]  ( .D(n86), .CLK(clk), .Q(count_out[15]) );
  DFFPOSX1 \count_out_reg[0]  ( .D(n85), .CLK(clk), .Q(count_out[0]) );
  OAI21X1 U3 ( .A(n27), .B(n17), .C(n5), .Y(n85) );
  NAND2X1 U5 ( .A(count_out[0]), .B(n22), .Y(n5) );
  OAI21X1 U7 ( .A(n172), .B(n9), .C(n7), .Y(n86) );
  NAND2X1 U8 ( .A(count_out[15]), .B(n22), .Y(n7) );
  OAI21X1 U10 ( .A(n6), .B(n173), .C(n10), .Y(n88) );
  NAND2X1 U11 ( .A(currentCount[15]), .B(n6), .Y(n10) );
  OAI21X1 U12 ( .A(n8), .B(n173), .C(n11), .Y(n90) );
  NAND2X1 U13 ( .A(N19), .B(n8), .Y(n11) );
  OAI21X1 U15 ( .A(n170), .B(n9), .C(n13), .Y(n91) );
  NAND2X1 U16 ( .A(count_out[14]), .B(n19), .Y(n13) );
  OAI21X1 U18 ( .A(n6), .B(n171), .C(n15), .Y(n93) );
  NAND2X1 U19 ( .A(currentCount[14]), .B(n6), .Y(n15) );
  OAI21X1 U20 ( .A(n8), .B(n171), .C(n16), .Y(n95) );
  OAI21X1 U23 ( .A(n168), .B(n9), .C(n18), .Y(n96) );
  NAND2X1 U24 ( .A(count_out[13]), .B(n19), .Y(n18) );
  OAI21X1 U26 ( .A(n6), .B(n169), .C(n20), .Y(n98) );
  NAND2X1 U27 ( .A(currentCount[13]), .B(n6), .Y(n20) );
  OAI21X1 U28 ( .A(n8), .B(n169), .C(n21), .Y(n100) );
  NAND2X1 U29 ( .A(N17), .B(n8), .Y(n21) );
  OAI21X1 U31 ( .A(n166), .B(n12), .C(n23), .Y(n101) );
  NAND2X1 U32 ( .A(count_out[12]), .B(n19), .Y(n23) );
  OAI21X1 U34 ( .A(n6), .B(n167), .C(n25), .Y(n103) );
  NAND2X1 U35 ( .A(currentCount[12]), .B(n6), .Y(n25) );
  OAI21X1 U36 ( .A(n8), .B(n167), .C(n26), .Y(n105) );
  NAND2X1 U37 ( .A(N16), .B(n8), .Y(n26) );
  OAI21X1 U39 ( .A(n82), .B(n12), .C(n28), .Y(n106) );
  NAND2X1 U40 ( .A(count_out[11]), .B(n19), .Y(n28) );
  OAI21X1 U42 ( .A(n6), .B(n165), .C(n30), .Y(n108) );
  NAND2X1 U43 ( .A(currentCount[11]), .B(n6), .Y(n30) );
  OAI21X1 U44 ( .A(n8), .B(n165), .C(n31), .Y(n110) );
  NAND2X1 U45 ( .A(N15), .B(n8), .Y(n31) );
  OAI21X1 U47 ( .A(n77), .B(n12), .C(n33), .Y(n111) );
  NAND2X1 U48 ( .A(count_out[10]), .B(n19), .Y(n33) );
  OAI21X1 U50 ( .A(n6), .B(n79), .C(n35), .Y(n113) );
  NAND2X1 U51 ( .A(currentCount[10]), .B(n6), .Y(n35) );
  OAI21X1 U52 ( .A(n8), .B(n79), .C(n36), .Y(n115) );
  NAND2X1 U53 ( .A(N14), .B(n8), .Y(n36) );
  OAI21X1 U55 ( .A(n72), .B(n14), .C(n38), .Y(n116) );
  NAND2X1 U56 ( .A(count_out[9]), .B(n19), .Y(n38) );
  OAI21X1 U58 ( .A(n6), .B(n74), .C(n40), .Y(n118) );
  NAND2X1 U59 ( .A(currentCount[9]), .B(n6), .Y(n40) );
  OAI21X1 U60 ( .A(n8), .B(n74), .C(n41), .Y(n120) );
  NAND2X1 U61 ( .A(N13), .B(n8), .Y(n41) );
  OAI21X1 U63 ( .A(n67), .B(n14), .C(n43), .Y(n121) );
  NAND2X1 U64 ( .A(count_out[8]), .B(n19), .Y(n43) );
  OAI21X1 U66 ( .A(n6), .B(n69), .C(n45), .Y(n123) );
  NAND2X1 U67 ( .A(currentCount[8]), .B(n6), .Y(n45) );
  OAI21X1 U68 ( .A(n8), .B(n69), .C(n46), .Y(n125) );
  NAND2X1 U69 ( .A(N12), .B(n8), .Y(n46) );
  OAI21X1 U71 ( .A(n62), .B(n14), .C(n48), .Y(n126) );
  NAND2X1 U72 ( .A(count_out[7]), .B(n19), .Y(n48) );
  OAI21X1 U74 ( .A(n6), .B(n64), .C(n50), .Y(n128) );
  NAND2X1 U75 ( .A(currentCount[7]), .B(n6), .Y(n50) );
  OAI21X1 U76 ( .A(n8), .B(n64), .C(n51), .Y(n130) );
  NAND2X1 U77 ( .A(N11), .B(n8), .Y(n51) );
  OAI21X1 U79 ( .A(n57), .B(n17), .C(n53), .Y(n131) );
  NAND2X1 U80 ( .A(count_out[6]), .B(n17), .Y(n53) );
  OAI21X1 U82 ( .A(n6), .B(n59), .C(n55), .Y(n133) );
  NAND2X1 U83 ( .A(currentCount[6]), .B(n6), .Y(n55) );
  OAI21X1 U84 ( .A(n8), .B(n59), .C(n56), .Y(n135) );
  NAND2X1 U85 ( .A(N10), .B(n8), .Y(n56) );
  OAI21X1 U87 ( .A(n52), .B(n17), .C(n58), .Y(n136) );
  NAND2X1 U88 ( .A(count_out[5]), .B(n19), .Y(n58) );
  OAI21X1 U90 ( .A(n6), .B(n54), .C(n60), .Y(n138) );
  NAND2X1 U91 ( .A(currentCount[5]), .B(n6), .Y(n60) );
  OAI21X1 U92 ( .A(n8), .B(n54), .C(n61), .Y(n140) );
  NAND2X1 U93 ( .A(N9), .B(n8), .Y(n61) );
  OAI21X1 U95 ( .A(n47), .B(n17), .C(n63), .Y(n141) );
  NAND2X1 U96 ( .A(count_out[4]), .B(n19), .Y(n63) );
  OAI21X1 U98 ( .A(n6), .B(n49), .C(n65), .Y(n143) );
  NAND2X1 U99 ( .A(currentCount[4]), .B(n6), .Y(n65) );
  OAI21X1 U100 ( .A(n8), .B(n49), .C(n66), .Y(n145) );
  NAND2X1 U101 ( .A(N8), .B(n8), .Y(n66) );
  OAI21X1 U103 ( .A(n42), .B(n17), .C(n68), .Y(n146) );
  NAND2X1 U104 ( .A(count_out[3]), .B(n19), .Y(n68) );
  OAI21X1 U106 ( .A(n6), .B(n44), .C(n70), .Y(n148) );
  NAND2X1 U107 ( .A(currentCount[3]), .B(n6), .Y(n70) );
  OAI21X1 U108 ( .A(n8), .B(n44), .C(n71), .Y(n150) );
  NAND2X1 U109 ( .A(N7), .B(n8), .Y(n71) );
  OAI21X1 U111 ( .A(n37), .B(n17), .C(n73), .Y(n151) );
  NAND2X1 U112 ( .A(count_out[2]), .B(n22), .Y(n73) );
  OAI21X1 U114 ( .A(n6), .B(n39), .C(n75), .Y(n153) );
  NAND2X1 U115 ( .A(currentCount[2]), .B(n6), .Y(n75) );
  OAI21X1 U116 ( .A(n8), .B(n39), .C(n76), .Y(n155) );
  NAND2X1 U117 ( .A(N6), .B(n8), .Y(n76) );
  OAI21X1 U119 ( .A(n32), .B(n17), .C(n78), .Y(n156) );
  NAND2X1 U120 ( .A(count_out[1]), .B(n22), .Y(n78) );
  OAI21X1 U123 ( .A(n6), .B(n34), .C(n80), .Y(n158) );
  NAND2X1 U124 ( .A(currentCount[1]), .B(n6), .Y(n80) );
  OAI21X1 U125 ( .A(n8), .B(n34), .C(n81), .Y(n160) );
  NAND2X1 U126 ( .A(N5), .B(n8), .Y(n81) );
  OAI21X1 U128 ( .A(n6), .B(n29), .C(n83), .Y(n162) );
  NAND2X1 U129 ( .A(N4), .B(n6), .Y(n83) );
  OAI21X1 U131 ( .A(n8), .B(n29), .C(n84), .Y(n164) );
  NAND2X1 U132 ( .A(N4), .B(n8), .Y(n84) );
  AND2X2 U4 ( .A(\add_35/carry[8] ), .B(currentCount[8]), .Y(n1) );
  AND2X2 U6 ( .A(n1), .B(n2), .Y(\add_35/carry[11] ) );
  AND2X2 U9 ( .A(currentCount[10]), .B(currentCount[9]), .Y(n2) );
  NAND2X1 U14 ( .A(n3), .B(cnt_up), .Y(n16) );
  XOR2X1 U17 ( .A(\add_35/carry[14] ), .B(currentCount[14]), .Y(n3) );
  INVX2 U21 ( .A(cnt_up), .Y(n6) );
  BUFX2 U22 ( .A(cnt_up), .Y(n8) );
  BUFX2 U25 ( .A(n24), .Y(n17) );
  BUFX2 U30 ( .A(n24), .Y(n19) );
  BUFX2 U33 ( .A(n24), .Y(n14) );
  BUFX2 U38 ( .A(n24), .Y(n12) );
  BUFX2 U41 ( .A(n24), .Y(n9) );
  BUFX2 U46 ( .A(n24), .Y(n22) );
  XNOR2X1 U49 ( .A(n4), .B(currentCount[15]), .Y(N19) );
  NAND2X1 U54 ( .A(currentCount[14]), .B(\add_35/carry[14] ), .Y(n4) );
  INVX2 U57 ( .A(nReset), .Y(n24) );
  INVX1 U62 ( .A(currentCount[1]), .Y(N5) );
  AND2X2 U65 ( .A(currentCount[2]), .B(currentCount[1]), .Y(\add_35/carry[3] )
         );
  AND2X2 U70 ( .A(currentCount[13]), .B(\add_35/carry[13] ), .Y(
        \add_35/carry[14] ) );
  AND2X2 U73 ( .A(currentCount[12]), .B(\add_35/carry[12] ), .Y(
        \add_35/carry[13] ) );
  XOR2X1 U78 ( .A(\add_35/carry[13] ), .B(currentCount[13]), .Y(N17) );
  XOR2X1 U81 ( .A(\add_35/carry[12] ), .B(currentCount[12]), .Y(N16) );
  AND2X1 U86 ( .A(currentCount[11]), .B(\add_35/carry[11] ), .Y(
        \add_35/carry[12] ) );
  XOR2X1 U89 ( .A(\add_35/carry[11] ), .B(currentCount[11]), .Y(N15) );
  XOR2X1 U94 ( .A(\add_35/carry[10] ), .B(currentCount[10]), .Y(N14) );
  AND2X1 U97 ( .A(currentCount[9]), .B(\add_35/carry[9] ), .Y(
        \add_35/carry[10] ) );
  XOR2X1 U102 ( .A(\add_35/carry[9] ), .B(currentCount[9]), .Y(N13) );
  AND2X1 U105 ( .A(currentCount[8]), .B(\add_35/carry[8] ), .Y(
        \add_35/carry[9] ) );
  XOR2X1 U110 ( .A(\add_35/carry[8] ), .B(currentCount[8]), .Y(N12) );
  AND2X1 U113 ( .A(currentCount[7]), .B(\add_35/carry[7] ), .Y(
        \add_35/carry[8] ) );
  XOR2X1 U118 ( .A(\add_35/carry[7] ), .B(currentCount[7]), .Y(N11) );
  AND2X1 U121 ( .A(currentCount[6]), .B(\add_35/carry[6] ), .Y(
        \add_35/carry[7] ) );
  XOR2X1 U122 ( .A(\add_35/carry[6] ), .B(currentCount[6]), .Y(N10) );
  AND2X1 U127 ( .A(currentCount[5]), .B(\add_35/carry[5] ), .Y(
        \add_35/carry[6] ) );
  XOR2X1 U130 ( .A(\add_35/carry[5] ), .B(currentCount[5]), .Y(N9) );
  AND2X1 U133 ( .A(currentCount[4]), .B(\add_35/carry[4] ), .Y(
        \add_35/carry[5] ) );
  XOR2X1 U166 ( .A(\add_35/carry[4] ), .B(currentCount[4]), .Y(N8) );
  AND2X1 U167 ( .A(currentCount[3]), .B(\add_35/carry[3] ), .Y(
        \add_35/carry[4] ) );
  XOR2X1 U168 ( .A(\add_35/carry[3] ), .B(currentCount[3]), .Y(N7) );
  XOR2X1 U169 ( .A(currentCount[1]), .B(currentCount[2]), .Y(N6) );
  INVX2 U170 ( .A(n162), .Y(n27) );
  INVX2 U171 ( .A(nextCount[0]), .Y(n29) );
  INVX2 U172 ( .A(n158), .Y(n32) );
  INVX2 U173 ( .A(nextCount[1]), .Y(n34) );
  INVX2 U174 ( .A(n153), .Y(n37) );
  INVX2 U175 ( .A(nextCount[2]), .Y(n39) );
  INVX2 U176 ( .A(n148), .Y(n42) );
  INVX2 U177 ( .A(nextCount[3]), .Y(n44) );
  INVX2 U178 ( .A(n143), .Y(n47) );
  INVX2 U179 ( .A(nextCount[4]), .Y(n49) );
  INVX2 U180 ( .A(n138), .Y(n52) );
  INVX2 U181 ( .A(nextCount[5]), .Y(n54) );
  INVX2 U182 ( .A(n133), .Y(n57) );
  INVX2 U183 ( .A(nextCount[6]), .Y(n59) );
  INVX2 U184 ( .A(n128), .Y(n62) );
  INVX2 U185 ( .A(nextCount[7]), .Y(n64) );
  INVX2 U186 ( .A(n123), .Y(n67) );
  INVX2 U187 ( .A(nextCount[8]), .Y(n69) );
  INVX2 U188 ( .A(n118), .Y(n72) );
  INVX2 U189 ( .A(nextCount[9]), .Y(n74) );
  INVX2 U190 ( .A(n113), .Y(n77) );
  INVX2 U191 ( .A(nextCount[10]), .Y(n79) );
  INVX2 U192 ( .A(n108), .Y(n82) );
  INVX2 U193 ( .A(nextCount[11]), .Y(n165) );
  INVX2 U194 ( .A(n103), .Y(n166) );
  INVX2 U195 ( .A(nextCount[12]), .Y(n167) );
  INVX2 U196 ( .A(n98), .Y(n168) );
  INVX2 U197 ( .A(nextCount[13]), .Y(n169) );
  INVX2 U198 ( .A(n93), .Y(n170) );
  INVX2 U199 ( .A(nextCount[14]), .Y(n171) );
  INVX2 U200 ( .A(n88), .Y(n172) );
  INVX2 U201 ( .A(nextCount[15]), .Y(n173) );
endmodule


module sync ( clk, nReset, A, A_sync );
  input clk, nReset, A;
  output A_sync;
  wire   reg1;

  DFFSR reg1_reg ( .D(A), .CLK(clk), .R(nReset), .S(1'b1), .Q(reg1) );
  DFFSR A_sync_reg ( .D(reg1), .CLK(clk), .R(nReset), .S(1'b1), .Q(A_sync) );
endmodule


module avg_four ( clk, data, data_ready, nReset, avg_out, count_out, err, 
        modwait );
  input [15:0] data;
  output [15:0] avg_out;
  output [15:0] count_out;
  input clk, data_ready, nReset;
  output err, modwait;
  wire   V, dr, cnt_up;
  wire   [3:0] A;
  wire   [3:0] B;
  wire   [3:0] C;
  wire   [1:0] op;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;
  assign avg_out[14] = 1'b0;
  assign avg_out[15] = 1'b0;

  datapath U_3 ( .clk(clk), .nReset(nReset), .A({1'b0, 1'b0, A[1:0]}), .B({
        1'b0, B[2:0]}), .C({1'b0, C[2:0]}), .data(data), .op(op), .V(V), 
        .outreg({avg_out[13:0], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1}) );
  controller U_2 ( .clk(clk), .nReset(nReset), .dr(dr), .V(V), .cnt_up(cnt_up), 
        .modwait(modwait), .op(op), .A({SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, A[1:0]}), .B({SYNOPSYS_UNCONNECTED__4, B[2:0]}), .C({SYNOPSYS_UNCONNECTED__5, C[2:0]}), .err(err) );
  counter U_1 ( .clk(clk), .nReset(nReset), .cnt_up(cnt_up), .count_out(
        count_out) );
  sync U_0 ( .clk(clk), .nReset(nReset), .A(data_ready), .A_sync(dr) );
endmodule

