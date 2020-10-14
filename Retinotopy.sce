#-- scenario file --#
scenario = "Retinotopy 7 Tesla";

# --------------------------------------------------- #
# 								HEADER 								#
# --------------------------------------------------- #
pcl_file = "Retinotopy.pcl";

scenario_type = fMRI;
#scenario_type = fMRI_emulation;
scan_period = 3000;

pulse_code = 30;
pulses_per_scan = 1;


default_text_color = 255,255,255; #white text by default
default_background_color = 127,127,127; #black backgrounds

default_text_align = align_center;
default_font = "Arial"; #Arial font by default
default_font_size = 24; 

response_matching = simple_matching;
response_logging = log_all;

active_buttons = 1;
button_codes = 1;

default_stimulus_time_in = 0;
default_stimulus_time_out = never;
default_clear_active_stimuli = false;


# --------------------------------------------------- #
#					           SDL									#
# --------------------------------------------------- #
begin;

# SDL variables

# VISUAL HARWARE
$RefreshRate = 60.0;

#Compute the number of pixel per degree
$MonitorWidth = 21.5;
$ViewDist = 30.0;
$MaxFOV = 40.0;  #2.0 * 180.0 * arctan(MonitorWidth/2.0/ViewDist)/ Pi;
$Win_W = 1024.0 ;
$Win_H = 728.0 ; 
$PPD = '$Win_W/$MaxFOV';

# for ViewDist = 30
# MonWidth	MaxFOV
# 48.0			77.0
# 21.5			40.0

$Black = "0, 0, 0";
$White = "255, 255, 255";
$Blue = "0, 0, 255";
$Red = "255, 0, 0";

$xpos = 0;
$ypos = 0;

# Targets
$Target_Size_Pixel = 15;

# Fixation Cross
$FixationCrossLineWidth = 2;
$FixationCrossHalfWidth = 8;
$NegativeFixationCrossHalfWidth = '-($FixationCrossHalfWidth)';

# Fixation
$FinalFixationDuration = 30000.0;


#------------------#
# STIMULI ELEMENTS #
#------------------#

# VISUAL

# Text
text {
	caption = "Bitte immer Kreuz fixieren!\n\nDruecke bei rotem Kreis!";
} Instruction;

# Target Ellipse
ellipse_graphic {
	ellipse_width = $Target_Size_Pixel;
	ellipse_height = $Target_Size_Pixel;
	color = $Red;
}Ellipse;

# Fixation Cross
line_graphic {
	coordinates = $NegativeFixationCrossHalfWidth, 0, $FixationCrossHalfWidth, 0;
	coordinates = 0, $NegativeFixationCrossHalfWidth, 0, $FixationCrossHalfWidth;
	line_width = $FixationCrossLineWidth;
	line_color = $White;
}FixationCross;

# Blue Fixation Cross
line_graphic {
	coordinates = $NegativeFixationCrossHalfWidth, 0, $FixationCrossHalfWidth, 0;
	coordinates = 0, $NegativeFixationCrossHalfWidth, 0, $FixationCrossHalfWidth;
	line_width = $FixationCrossLineWidth;
	line_color = $Blue;
}BlueFixationCross;

# CHECKERBOARD

array{bitmap {filename = "Checkerboard_1_Angle_001.tif";} frame_1001;bitmap {filename = "Checkerboard_1_Angle_003.tif";} frame_1003;bitmap {filename = "Checkerboard_1_Angle_005.tif";} frame_1005;bitmap {filename = "Checkerboard_1_Angle_007.tif";} frame_1007;bitmap {filename = "Checkerboard_1_Angle_009.tif";} frame_1009;bitmap {filename = "Checkerboard_1_Angle_011.tif";} frame_1011;bitmap {filename = "Checkerboard_1_Angle_013.tif";} frame_1013;bitmap {filename = "Checkerboard_1_Angle_015.tif";} frame_1015;bitmap {filename = "Checkerboard_1_Angle_017.tif";} frame_1017;bitmap {filename = "Checkerboard_1_Angle_019.tif";} frame_1019;bitmap {filename = "Checkerboard_1_Angle_021.tif";} frame_1021;bitmap {filename = "Checkerboard_1_Angle_023.tif";} frame_1023;bitmap {filename = "Checkerboard_1_Angle_025.tif";} frame_1025;bitmap {filename = "Checkerboard_1_Angle_027.tif";} frame_1027;bitmap {filename = "Checkerboard_1_Angle_029.tif";} frame_1029;bitmap {filename = "Checkerboard_1_Angle_031.tif";} frame_1031;bitmap {filename = "Checkerboard_1_Angle_033.tif";} frame_1033;bitmap {filename = "Checkerboard_1_Angle_035.tif";} frame_1035;bitmap {filename = "Checkerboard_1_Angle_037.tif";} frame_1037;bitmap {filename = "Checkerboard_1_Angle_039.tif";} frame_1039;bitmap {filename = "Checkerboard_1_Angle_041.tif";} frame_1041;bitmap {filename = "Checkerboard_1_Angle_043.tif";} frame_1043;bitmap {filename = "Checkerboard_1_Angle_045.tif";} frame_1045;bitmap {filename = "Checkerboard_1_Angle_047.tif";} frame_1047;bitmap {filename = "Checkerboard_1_Angle_049.tif";} frame_1049;bitmap {filename = "Checkerboard_1_Angle_051.tif";} frame_1051;bitmap {filename = "Checkerboard_1_Angle_053.tif";} frame_1053;bitmap {filename = "Checkerboard_1_Angle_055.tif";} frame_1055;bitmap {filename = "Checkerboard_1_Angle_057.tif";} frame_1057;bitmap {filename = "Checkerboard_1_Angle_059.tif";} frame_1059;bitmap {filename = "Checkerboard_1_Angle_061.tif";} frame_1061;bitmap {filename = "Checkerboard_1_Angle_063.tif";} frame_1063;bitmap {filename = "Checkerboard_1_Angle_065.tif";} frame_1065;bitmap {filename = "Checkerboard_1_Angle_067.tif";} frame_1067;bitmap {filename = "Checkerboard_1_Angle_069.tif";} frame_1069;bitmap {filename = "Checkerboard_1_Angle_071.tif";} frame_1071;bitmap {filename = "Checkerboard_1_Angle_073.tif";} frame_1073;bitmap {filename = "Checkerboard_1_Angle_075.tif";} frame_1075;bitmap {filename = "Checkerboard_1_Angle_077.tif";} frame_1077;bitmap {filename = "Checkerboard_1_Angle_079.tif";} frame_1079;bitmap {filename = "Checkerboard_1_Angle_081.tif";} frame_1081;bitmap {filename = "Checkerboard_1_Angle_083.tif";} frame_1083;bitmap {filename = "Checkerboard_1_Angle_085.tif";} frame_1085;bitmap {filename = "Checkerboard_1_Angle_087.tif";} frame_1087;bitmap {filename = "Checkerboard_1_Angle_089.tif";} frame_1089;bitmap {filename = "Checkerboard_1_Angle_091.tif";} frame_1091;bitmap {filename = "Checkerboard_1_Angle_093.tif";} frame_1093;bitmap {filename = "Checkerboard_1_Angle_095.tif";} frame_1095;bitmap {filename = "Checkerboard_1_Angle_097.tif";} frame_1097;bitmap {filename = "Checkerboard_1_Angle_099.tif";} frame_1099;bitmap {filename = "Checkerboard_1_Angle_101.tif";} frame_1101;bitmap {filename = "Checkerboard_1_Angle_103.tif";} frame_1103;bitmap {filename = "Checkerboard_1_Angle_105.tif";} frame_1105;bitmap {filename = "Checkerboard_1_Angle_107.tif";} frame_1107;bitmap {filename = "Checkerboard_1_Angle_109.tif";} frame_1109;bitmap {filename = "Checkerboard_1_Angle_111.tif";} frame_1111;bitmap {filename = "Checkerboard_1_Angle_113.tif";} frame_1113;bitmap {filename = "Checkerboard_1_Angle_115.tif";} frame_1115;bitmap {filename = "Checkerboard_1_Angle_117.tif";} frame_1117;bitmap {filename = "Checkerboard_1_Angle_119.tif";} frame_1119;bitmap {filename = "Checkerboard_1_Angle_121.tif";} frame_1121;bitmap {filename = "Checkerboard_1_Angle_123.tif";} frame_1123;bitmap {filename = "Checkerboard_1_Angle_125.tif";} frame_1125;bitmap {filename = "Checkerboard_1_Angle_127.tif";} frame_1127;bitmap {filename = "Checkerboard_1_Angle_129.tif";} frame_1129;bitmap {filename = "Checkerboard_1_Angle_131.tif";} frame_1131;bitmap {filename = "Checkerboard_1_Angle_133.tif";} frame_1133;bitmap {filename = "Checkerboard_1_Angle_135.tif";} frame_1135;bitmap {filename = "Checkerboard_1_Angle_137.tif";} frame_1137;bitmap {filename = "Checkerboard_1_Angle_139.tif";} frame_1139;bitmap {filename = "Checkerboard_1_Angle_141.tif";} frame_1141;bitmap {filename = "Checkerboard_1_Angle_143.tif";} frame_1143;bitmap {filename = "Checkerboard_1_Angle_145.tif";} frame_1145;bitmap {filename = "Checkerboard_1_Angle_147.tif";} frame_1147;bitmap {filename = "Checkerboard_1_Angle_149.tif";} frame_1149;bitmap {filename = "Checkerboard_1_Angle_151.tif";} frame_1151;bitmap {filename = "Checkerboard_1_Angle_153.tif";} frame_1153;bitmap {filename = "Checkerboard_1_Angle_155.tif";} frame_1155;bitmap {filename = "Checkerboard_1_Angle_157.tif";} frame_1157;bitmap {filename = "Checkerboard_1_Angle_159.tif";} frame_1159;bitmap {filename = "Checkerboard_1_Angle_161.tif";} frame_1161;bitmap {filename = "Checkerboard_1_Angle_163.tif";} frame_1163;bitmap {filename = "Checkerboard_1_Angle_165.tif";} frame_1165;bitmap {filename = "Checkerboard_1_Angle_167.tif";} frame_1167;bitmap {filename = "Checkerboard_1_Angle_169.tif";} frame_1169;bitmap {filename = "Checkerboard_1_Angle_171.tif";} frame_1171;bitmap {filename = "Checkerboard_1_Angle_173.tif";} frame_1173;bitmap {filename = "Checkerboard_1_Angle_175.tif";} frame_1175;bitmap {filename = "Checkerboard_1_Angle_177.tif";} frame_1177;bitmap {filename = "Checkerboard_1_Angle_179.tif";} frame_1179;bitmap {filename = "Checkerboard_1_Angle_181.tif";} frame_1181;bitmap {filename = "Checkerboard_1_Angle_183.tif";} frame_1183;bitmap {filename = "Checkerboard_1_Angle_185.tif";} frame_1185;bitmap {filename = "Checkerboard_1_Angle_187.tif";} frame_1187;bitmap {filename = "Checkerboard_1_Angle_189.tif";} frame_1189;bitmap {filename = "Checkerboard_1_Angle_191.tif";} frame_1191;bitmap {filename = "Checkerboard_1_Angle_193.tif";} frame_1193;bitmap {filename = "Checkerboard_1_Angle_195.tif";} frame_1195;bitmap {filename = "Checkerboard_1_Angle_197.tif";} frame_1197;bitmap {filename = "Checkerboard_1_Angle_199.tif";} frame_1199;bitmap {filename = "Checkerboard_1_Angle_201.tif";} frame_1201;bitmap {filename = "Checkerboard_1_Angle_203.tif";} frame_1203;bitmap {filename = "Checkerboard_1_Angle_205.tif";} frame_1205;bitmap {filename = "Checkerboard_1_Angle_207.tif";} frame_1207;bitmap {filename = "Checkerboard_1_Angle_209.tif";} frame_1209;bitmap {filename = "Checkerboard_1_Angle_211.tif";} frame_1211;bitmap {filename = "Checkerboard_1_Angle_213.tif";} frame_1213;bitmap {filename = "Checkerboard_1_Angle_215.tif";} frame_1215;bitmap {filename = "Checkerboard_1_Angle_217.tif";} frame_1217;bitmap {filename = "Checkerboard_1_Angle_219.tif";} frame_1219;bitmap {filename = "Checkerboard_1_Angle_221.tif";} frame_1221;bitmap {filename = "Checkerboard_1_Angle_223.tif";} frame_1223;bitmap {filename = "Checkerboard_1_Angle_225.tif";} frame_1225;bitmap {filename = "Checkerboard_1_Angle_227.tif";} frame_1227;bitmap {filename = "Checkerboard_1_Angle_229.tif";} frame_1229;bitmap {filename = "Checkerboard_1_Angle_231.tif";} frame_1231;bitmap {filename = "Checkerboard_1_Angle_233.tif";} frame_1233;bitmap {filename = "Checkerboard_1_Angle_235.tif";} frame_1235;bitmap {filename = "Checkerboard_1_Angle_237.tif";} frame_1237;bitmap {filename = "Checkerboard_1_Angle_239.tif";} frame_1239;bitmap {filename = "Checkerboard_1_Angle_241.tif";} frame_1241;bitmap {filename = "Checkerboard_1_Angle_243.tif";} frame_1243;bitmap {filename = "Checkerboard_1_Angle_245.tif";} frame_1245;bitmap {filename = "Checkerboard_1_Angle_247.tif";} frame_1247;bitmap {filename = "Checkerboard_1_Angle_249.tif";} frame_1249;bitmap {filename = "Checkerboard_1_Angle_251.tif";} frame_1251;bitmap {filename = "Checkerboard_1_Angle_253.tif";} frame_1253;bitmap {filename = "Checkerboard_1_Angle_255.tif";} frame_1255;bitmap {filename = "Checkerboard_1_Angle_257.tif";} frame_1257;bitmap {filename = "Checkerboard_1_Angle_259.tif";} frame_1259;bitmap {filename = "Checkerboard_1_Angle_261.tif";} frame_1261;bitmap {filename = "Checkerboard_1_Angle_263.tif";} frame_1263;bitmap {filename = "Checkerboard_1_Angle_265.tif";} frame_1265;bitmap {filename = "Checkerboard_1_Angle_267.tif";} frame_1267;bitmap {filename = "Checkerboard_1_Angle_269.tif";} frame_1269;bitmap {filename = "Checkerboard_1_Angle_271.tif";} frame_1271;bitmap {filename = "Checkerboard_1_Angle_273.tif";} frame_1273;bitmap {filename = "Checkerboard_1_Angle_275.tif";} frame_1275;bitmap {filename = "Checkerboard_1_Angle_277.tif";} frame_1277;bitmap {filename = "Checkerboard_1_Angle_279.tif";} frame_1279;bitmap {filename = "Checkerboard_1_Angle_281.tif";} frame_1281;bitmap {filename = "Checkerboard_1_Angle_283.tif";} frame_1283;bitmap {filename = "Checkerboard_1_Angle_285.tif";} frame_1285;bitmap {filename = "Checkerboard_1_Angle_287.tif";} frame_1287;bitmap {filename = "Checkerboard_1_Angle_289.tif";} frame_1289;bitmap {filename = "Checkerboard_1_Angle_291.tif";} frame_1291;bitmap {filename = "Checkerboard_1_Angle_293.tif";} frame_1293;bitmap {filename = "Checkerboard_1_Angle_295.tif";} frame_1295;bitmap {filename = "Checkerboard_1_Angle_297.tif";} frame_1297;bitmap {filename = "Checkerboard_1_Angle_299.tif";} frame_1299;bitmap {filename = "Checkerboard_1_Angle_301.tif";} frame_1301;bitmap {filename = "Checkerboard_1_Angle_303.tif";} frame_1303;bitmap {filename = "Checkerboard_1_Angle_305.tif";} frame_1305;bitmap {filename = "Checkerboard_1_Angle_307.tif";} frame_1307;bitmap {filename = "Checkerboard_1_Angle_309.tif";} frame_1309;bitmap {filename = "Checkerboard_1_Angle_311.tif";} frame_1311;bitmap {filename = "Checkerboard_1_Angle_313.tif";} frame_1313;bitmap {filename = "Checkerboard_1_Angle_315.tif";} frame_1315;bitmap {filename = "Checkerboard_1_Angle_317.tif";} frame_1317;bitmap {filename = "Checkerboard_1_Angle_319.tif";} frame_1319;bitmap {filename = "Checkerboard_1_Angle_321.tif";} frame_1321;bitmap {filename = "Checkerboard_1_Angle_323.tif";} frame_1323;bitmap {filename = "Checkerboard_1_Angle_325.tif";} frame_1325;bitmap {filename = "Checkerboard_1_Angle_327.tif";} frame_1327;bitmap {filename = "Checkerboard_1_Angle_329.tif";} frame_1329;bitmap {filename = "Checkerboard_1_Angle_331.tif";} frame_1331;bitmap {filename = "Checkerboard_1_Angle_333.tif";} frame_1333;bitmap {filename = "Checkerboard_1_Angle_335.tif";} frame_1335;bitmap {filename = "Checkerboard_1_Angle_337.tif";} frame_1337;bitmap {filename = "Checkerboard_1_Angle_339.tif";} frame_1339;bitmap {filename = "Checkerboard_1_Angle_341.tif";} frame_1341;bitmap {filename = "Checkerboard_1_Angle_343.tif";} frame_1343;bitmap {filename = "Checkerboard_1_Angle_345.tif";} frame_1345;bitmap {filename = "Checkerboard_1_Angle_347.tif";} frame_1347;bitmap {filename = "Checkerboard_1_Angle_349.tif";} frame_1349;bitmap {filename = "Checkerboard_1_Angle_351.tif";} frame_1351;bitmap {filename = "Checkerboard_1_Angle_353.tif";} frame_1353;bitmap {filename = "Checkerboard_1_Angle_355.tif";} frame_1355;bitmap {filename = "Checkerboard_1_Angle_357.tif";} frame_1357;bitmap {filename = "Checkerboard_1_Angle_359.tif";} frame_1359;} CHECKERBOARD1;

array{bitmap {filename = "Checkerboard_2_Angle_001.tif";} frame_2001;bitmap {filename = "Checkerboard_2_Angle_003.tif";} frame_2003;bitmap {filename = "Checkerboard_2_Angle_005.tif";} frame_2005;bitmap {filename = "Checkerboard_2_Angle_007.tif";} frame_2007;bitmap {filename = "Checkerboard_2_Angle_009.tif";} frame_2009;bitmap {filename = "Checkerboard_2_Angle_011.tif";} frame_2011;bitmap {filename = "Checkerboard_2_Angle_013.tif";} frame_2013;bitmap {filename = "Checkerboard_2_Angle_015.tif";} frame_2015;bitmap {filename = "Checkerboard_2_Angle_017.tif";} frame_2017;bitmap {filename = "Checkerboard_2_Angle_019.tif";} frame_2019;bitmap {filename = "Checkerboard_2_Angle_021.tif";} frame_2021;bitmap {filename = "Checkerboard_2_Angle_023.tif";} frame_2023;bitmap {filename = "Checkerboard_2_Angle_025.tif";} frame_2025;bitmap {filename = "Checkerboard_2_Angle_027.tif";} frame_2027;bitmap {filename = "Checkerboard_2_Angle_029.tif";} frame_2029;bitmap {filename = "Checkerboard_2_Angle_031.tif";} frame_2031;bitmap {filename = "Checkerboard_2_Angle_033.tif";} frame_2033;bitmap {filename = "Checkerboard_2_Angle_035.tif";} frame_2035;bitmap {filename = "Checkerboard_2_Angle_037.tif";} frame_2037;bitmap {filename = "Checkerboard_2_Angle_039.tif";} frame_2039;bitmap {filename = "Checkerboard_2_Angle_041.tif";} frame_2041;bitmap {filename = "Checkerboard_2_Angle_043.tif";} frame_2043;bitmap {filename = "Checkerboard_2_Angle_045.tif";} frame_2045;bitmap {filename = "Checkerboard_2_Angle_047.tif";} frame_2047;bitmap {filename = "Checkerboard_2_Angle_049.tif";} frame_2049;bitmap {filename = "Checkerboard_2_Angle_051.tif";} frame_2051;bitmap {filename = "Checkerboard_2_Angle_053.tif";} frame_2053;bitmap {filename = "Checkerboard_2_Angle_055.tif";} frame_2055;bitmap {filename = "Checkerboard_2_Angle_057.tif";} frame_2057;bitmap {filename = "Checkerboard_2_Angle_059.tif";} frame_2059;bitmap {filename = "Checkerboard_2_Angle_061.tif";} frame_2061;bitmap {filename = "Checkerboard_2_Angle_063.tif";} frame_2063;bitmap {filename = "Checkerboard_2_Angle_065.tif";} frame_2065;bitmap {filename = "Checkerboard_2_Angle_067.tif";} frame_2067;bitmap {filename = "Checkerboard_2_Angle_069.tif";} frame_2069;bitmap {filename = "Checkerboard_2_Angle_071.tif";} frame_2071;bitmap {filename = "Checkerboard_2_Angle_073.tif";} frame_2073;bitmap {filename = "Checkerboard_2_Angle_075.tif";} frame_2075;bitmap {filename = "Checkerboard_2_Angle_077.tif";} frame_2077;bitmap {filename = "Checkerboard_2_Angle_079.tif";} frame_2079;bitmap {filename = "Checkerboard_2_Angle_081.tif";} frame_2081;bitmap {filename = "Checkerboard_2_Angle_083.tif";} frame_2083;bitmap {filename = "Checkerboard_2_Angle_085.tif";} frame_2085;bitmap {filename = "Checkerboard_2_Angle_087.tif";} frame_2087;bitmap {filename = "Checkerboard_2_Angle_089.tif";} frame_2089;bitmap {filename = "Checkerboard_2_Angle_091.tif";} frame_2091;bitmap {filename = "Checkerboard_2_Angle_093.tif";} frame_2093;bitmap {filename = "Checkerboard_2_Angle_095.tif";} frame_2095;bitmap {filename = "Checkerboard_2_Angle_097.tif";} frame_2097;bitmap {filename = "Checkerboard_2_Angle_099.tif";} frame_2099;bitmap {filename = "Checkerboard_2_Angle_101.tif";} frame_2101;bitmap {filename = "Checkerboard_2_Angle_103.tif";} frame_2103;bitmap {filename = "Checkerboard_2_Angle_105.tif";} frame_2105;bitmap {filename = "Checkerboard_2_Angle_107.tif";} frame_2107;bitmap {filename = "Checkerboard_2_Angle_109.tif";} frame_2109;bitmap {filename = "Checkerboard_2_Angle_111.tif";} frame_2111;bitmap {filename = "Checkerboard_2_Angle_113.tif";} frame_2113;bitmap {filename = "Checkerboard_2_Angle_115.tif";} frame_2115;bitmap {filename = "Checkerboard_2_Angle_117.tif";} frame_2117;bitmap {filename = "Checkerboard_2_Angle_119.tif";} frame_2119;bitmap {filename = "Checkerboard_2_Angle_121.tif";} frame_2121;bitmap {filename = "Checkerboard_2_Angle_123.tif";} frame_2123;bitmap {filename = "Checkerboard_2_Angle_125.tif";} frame_2125;bitmap {filename = "Checkerboard_2_Angle_127.tif";} frame_2127;bitmap {filename = "Checkerboard_2_Angle_129.tif";} frame_2129;bitmap {filename = "Checkerboard_2_Angle_131.tif";} frame_2131;bitmap {filename = "Checkerboard_2_Angle_133.tif";} frame_2133;bitmap {filename = "Checkerboard_2_Angle_135.tif";} frame_2135;bitmap {filename = "Checkerboard_2_Angle_137.tif";} frame_2137;bitmap {filename = "Checkerboard_2_Angle_139.tif";} frame_2139;bitmap {filename = "Checkerboard_2_Angle_141.tif";} frame_2141;bitmap {filename = "Checkerboard_2_Angle_143.tif";} frame_2143;bitmap {filename = "Checkerboard_2_Angle_145.tif";} frame_2145;bitmap {filename = "Checkerboard_2_Angle_147.tif";} frame_2147;bitmap {filename = "Checkerboard_2_Angle_149.tif";} frame_2149;bitmap {filename = "Checkerboard_2_Angle_151.tif";} frame_2151;bitmap {filename = "Checkerboard_2_Angle_153.tif";} frame_2153;bitmap {filename = "Checkerboard_2_Angle_155.tif";} frame_2155;bitmap {filename = "Checkerboard_2_Angle_157.tif";} frame_2157;bitmap {filename = "Checkerboard_2_Angle_159.tif";} frame_2159;bitmap {filename = "Checkerboard_2_Angle_161.tif";} frame_2161;bitmap {filename = "Checkerboard_2_Angle_163.tif";} frame_2163;bitmap {filename = "Checkerboard_2_Angle_165.tif";} frame_2165;bitmap {filename = "Checkerboard_2_Angle_167.tif";} frame_2167;bitmap {filename = "Checkerboard_2_Angle_169.tif";} frame_2169;bitmap {filename = "Checkerboard_2_Angle_171.tif";} frame_2171;bitmap {filename = "Checkerboard_2_Angle_173.tif";} frame_2173;bitmap {filename = "Checkerboard_2_Angle_175.tif";} frame_2175;bitmap {filename = "Checkerboard_2_Angle_177.tif";} frame_2177;bitmap {filename = "Checkerboard_2_Angle_179.tif";} frame_2179;bitmap {filename = "Checkerboard_2_Angle_181.tif";} frame_2181;bitmap {filename = "Checkerboard_2_Angle_183.tif";} frame_2183;bitmap {filename = "Checkerboard_2_Angle_185.tif";} frame_2185;bitmap {filename = "Checkerboard_2_Angle_187.tif";} frame_2187;bitmap {filename = "Checkerboard_2_Angle_189.tif";} frame_2189;bitmap {filename = "Checkerboard_2_Angle_191.tif";} frame_2191;bitmap {filename = "Checkerboard_2_Angle_193.tif";} frame_2193;bitmap {filename = "Checkerboard_2_Angle_195.tif";} frame_2195;bitmap {filename = "Checkerboard_2_Angle_197.tif";} frame_2197;bitmap {filename = "Checkerboard_2_Angle_199.tif";} frame_2199;bitmap {filename = "Checkerboard_2_Angle_201.tif";} frame_2201;bitmap {filename = "Checkerboard_2_Angle_203.tif";} frame_2203;bitmap {filename = "Checkerboard_2_Angle_205.tif";} frame_2205;bitmap {filename = "Checkerboard_2_Angle_207.tif";} frame_2207;bitmap {filename = "Checkerboard_2_Angle_209.tif";} frame_2209;bitmap {filename = "Checkerboard_2_Angle_211.tif";} frame_2211;bitmap {filename = "Checkerboard_2_Angle_213.tif";} frame_2213;bitmap {filename = "Checkerboard_2_Angle_215.tif";} frame_2215;bitmap {filename = "Checkerboard_2_Angle_217.tif";} frame_2217;bitmap {filename = "Checkerboard_2_Angle_219.tif";} frame_2219;bitmap {filename = "Checkerboard_2_Angle_221.tif";} frame_2221;bitmap {filename = "Checkerboard_2_Angle_223.tif";} frame_2223;bitmap {filename = "Checkerboard_2_Angle_225.tif";} frame_2225;bitmap {filename = "Checkerboard_2_Angle_227.tif";} frame_2227;bitmap {filename = "Checkerboard_2_Angle_229.tif";} frame_2229;bitmap {filename = "Checkerboard_2_Angle_231.tif";} frame_2231;bitmap {filename = "Checkerboard_2_Angle_233.tif";} frame_2233;bitmap {filename = "Checkerboard_2_Angle_235.tif";} frame_2235;bitmap {filename = "Checkerboard_2_Angle_237.tif";} frame_2237;bitmap {filename = "Checkerboard_2_Angle_239.tif";} frame_2239;bitmap {filename = "Checkerboard_2_Angle_241.tif";} frame_2241;bitmap {filename = "Checkerboard_2_Angle_243.tif";} frame_2243;bitmap {filename = "Checkerboard_2_Angle_245.tif";} frame_2245;bitmap {filename = "Checkerboard_2_Angle_247.tif";} frame_2247;bitmap {filename = "Checkerboard_2_Angle_249.tif";} frame_2249;bitmap {filename = "Checkerboard_2_Angle_251.tif";} frame_2251;bitmap {filename = "Checkerboard_2_Angle_253.tif";} frame_2253;bitmap {filename = "Checkerboard_2_Angle_255.tif";} frame_2255;bitmap {filename = "Checkerboard_2_Angle_257.tif";} frame_2257;bitmap {filename = "Checkerboard_2_Angle_259.tif";} frame_2259;bitmap {filename = "Checkerboard_2_Angle_261.tif";} frame_2261;bitmap {filename = "Checkerboard_2_Angle_263.tif";} frame_2263;bitmap {filename = "Checkerboard_2_Angle_265.tif";} frame_2265;bitmap {filename = "Checkerboard_2_Angle_267.tif";} frame_2267;bitmap {filename = "Checkerboard_2_Angle_269.tif";} frame_2269;bitmap {filename = "Checkerboard_2_Angle_271.tif";} frame_2271;bitmap {filename = "Checkerboard_2_Angle_273.tif";} frame_2273;bitmap {filename = "Checkerboard_2_Angle_275.tif";} frame_2275;bitmap {filename = "Checkerboard_2_Angle_277.tif";} frame_2277;bitmap {filename = "Checkerboard_2_Angle_279.tif";} frame_2279;bitmap {filename = "Checkerboard_2_Angle_281.tif";} frame_2281;bitmap {filename = "Checkerboard_2_Angle_283.tif";} frame_2283;bitmap {filename = "Checkerboard_2_Angle_285.tif";} frame_2285;bitmap {filename = "Checkerboard_2_Angle_287.tif";} frame_2287;bitmap {filename = "Checkerboard_2_Angle_289.tif";} frame_2289;bitmap {filename = "Checkerboard_2_Angle_291.tif";} frame_2291;bitmap {filename = "Checkerboard_2_Angle_293.tif";} frame_2293;bitmap {filename = "Checkerboard_2_Angle_295.tif";} frame_2295;bitmap {filename = "Checkerboard_2_Angle_297.tif";} frame_2297;bitmap {filename = "Checkerboard_2_Angle_299.tif";} frame_2299;bitmap {filename = "Checkerboard_2_Angle_301.tif";} frame_2301;bitmap {filename = "Checkerboard_2_Angle_303.tif";} frame_2303;bitmap {filename = "Checkerboard_2_Angle_305.tif";} frame_2305;bitmap {filename = "Checkerboard_2_Angle_307.tif";} frame_2307;bitmap {filename = "Checkerboard_2_Angle_309.tif";} frame_2309;bitmap {filename = "Checkerboard_2_Angle_311.tif";} frame_2311;bitmap {filename = "Checkerboard_2_Angle_313.tif";} frame_2313;bitmap {filename = "Checkerboard_2_Angle_315.tif";} frame_2315;bitmap {filename = "Checkerboard_2_Angle_317.tif";} frame_2317;bitmap {filename = "Checkerboard_2_Angle_319.tif";} frame_2319;bitmap {filename = "Checkerboard_2_Angle_321.tif";} frame_2321;bitmap {filename = "Checkerboard_2_Angle_323.tif";} frame_2323;bitmap {filename = "Checkerboard_2_Angle_325.tif";} frame_2325;bitmap {filename = "Checkerboard_2_Angle_327.tif";} frame_2327;bitmap {filename = "Checkerboard_2_Angle_329.tif";} frame_2329;bitmap {filename = "Checkerboard_2_Angle_331.tif";} frame_2331;bitmap {filename = "Checkerboard_2_Angle_333.tif";} frame_2333;bitmap {filename = "Checkerboard_2_Angle_335.tif";} frame_2335;bitmap {filename = "Checkerboard_2_Angle_337.tif";} frame_2337;bitmap {filename = "Checkerboard_2_Angle_339.tif";} frame_2339;bitmap {filename = "Checkerboard_2_Angle_341.tif";} frame_2341;bitmap {filename = "Checkerboard_2_Angle_343.tif";} frame_2343;bitmap {filename = "Checkerboard_2_Angle_345.tif";} frame_2345;bitmap {filename = "Checkerboard_2_Angle_347.tif";} frame_2347;bitmap {filename = "Checkerboard_2_Angle_349.tif";} frame_2349;bitmap {filename = "Checkerboard_2_Angle_351.tif";} frame_2351;bitmap {filename = "Checkerboard_2_Angle_353.tif";} frame_2353;bitmap {filename = "Checkerboard_2_Angle_355.tif";} frame_2355;bitmap {filename = "Checkerboard_2_Angle_357.tif";} frame_2357;bitmap {filename = "Checkerboard_2_Angle_359.tif";} frame_2359;} CHECKERBOARD2;

#---------#
# STIMULI #
#---------#

# Picture Fixation Cross
picture {
	line_graphic FixationCross;
	x = $xpos; y = $ypos;	
} PictureFixationCross;

#Checkerboard
picture {
	bitmap frame_1001;
	x = $xpos; y = $ypos;

	line_graphic BlueFixationCross;
	x = $xpos; y = $ypos;
} Checkerboard;

# Visual Circles + Visual target
picture {	
	bitmap frame_1001;
	x = $xpos; y = $ypos;

	line_graphic BlueFixationCross;
	x = $xpos; y = $ypos;
	
	ellipse_graphic Ellipse;
	x = $xpos; y = $ypos;
	on_top = true;
}TargetEllipse;

#--------#
# TRIALS #
#--------#
trial {	
	nothing {};
	mri_pulse = 1;
	code = "START";
} Start_Trial;

trial {	
	picture {
	text Instruction;
	x = $xpos; y = $ypos;
	};
	time = 0;
	duration = 6000;		
	code = "Instruction";
} Instruction_Trial;

trial {
   save_logfile {
      filename = "temp.log"; # use temp.log in default logfile directory
   };
} Temp_Save;

# TRIALS
# Visual Target
trial {
	monitor_sounds = false;
   all_responses = true;

	picture Checkerboard;
	
	target_button = 1;
	code = "NewCycle";
} NewCycle;

# Visual Target
trial {
	monitor_sounds = false;
   all_responses = true;

	picture TargetEllipse;
	
	target_button = 1;
	code = "Visual_Target";
} Visual_Target;


# FIXATIONS
# Final Fixation
trial {
	all_responses = true;
   trial_duration = 'int($FinalFixationDuration)';
	
	picture {
	line_graphic BlueFixationCross;
	x = $xpos; y = $ypos;
	};
	
	code = "Final_Fixation";
	
	save_logfile{};
} Final_Fixation;