//Maya ASCII 2025 scene
//Name: Perro_Animations_con_pan.ma
//Last modified: Thu, Jul 30, 2026 02:57:06 PM
//Codeset: 1252
file -rdi 1 -ns "Perro_BindSkin2" -rfn "Perro_BindSkin2RN" -op "VERS|2022|UVER|undef|MADE|undef|CHNG|Wed, Jul 29, 2026 02:44:08 PM|ICON|undef|INFO|undef|OBJN|298|INCL|undef(|LUNI|m|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "C:/Users/Ryzen/Downloads/Perro_BindSkin2.mb";
file -r -ns "Perro_BindSkin2" -dr 1 -rfn "Perro_BindSkin2RN" -op "VERS|2022|UVER|undef|MADE|undef|CHNG|Wed, Jul 29, 2026 02:44:08 PM|ICON|undef|INFO|undef|OBJN|298|INCL|undef(|LUNI|m|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "C:/Users/Ryzen/Downloads/Perro_BindSkin2.mb";
requires maya "2025";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.4.0";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.27.0";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202402161156-0caf8d1269";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "E7C3A913-406C-DB12-CC92-13A3526121CA";
createNode transform -s -n "persp";
	rename -uid "C3524541-47C2-A5C2-FA48-438FA68254D4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.00164422966326 6.6005501554096542 7.6513944702450134 ;
	setAttr ".r" -type "double3" -8.1383527287837119 2234.5999999992641 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "72D63C98-48F7-B372-6BD1-18844CB435D8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".coi" 10.481252074971206;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 829.09380214143096 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "1776AA41-4C45-6037-859A-999E4719321C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0E61A892-4F19-C820-D933-DA84D7430CCB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "EC788947-4997-5B2B-7C1F-339A37F9E5EF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9257C1C3-4A3F-2C39-0EC9-33AFAE9257C5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "0DA94BCD-494A-767C-36B9-86B2F55CAEF3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B258A93B-4847-F035-2E2A-37B4EC8068B4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Pan";
	rename -uid "6EFA9CBC-44B6-02ED-31B4-A09CF2CCFAB8";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 0.57199787139892577 0 ;
	setAttr ".sp" -type "double3" 0 0.57199787139892577 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "PanShape" -p "Pan";
	rename -uid "02C1D14A-4459-DCA4-759B-5E92387A109F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.088910133 0.36138201
		 0.088987291 0.4306663 0.00047972798 0.43076488 0.12405756 0.0631046 0.27602974 0.50000381
		 0.11893517 0.49911079 0 9.8433346e-05 0.0010365248 0.93071574 0.59015149 0.99910837
		 0.74441069 0.93512094 0.7444883 0.49958158 0.59024048 0.49955413 0.089064419 0.49995071
		 0.43599299 0.49952665 0.43312427 0.50089699 0.43295929 0.064860642 0.43591514 0.93506598
		 0.00095939636 0.86143124 0.59032965 0 0.43607035 0.063987181 0.089544088 0.93061703
		 0.089466989 0.86133277 0.27318719 1 0.42800173 0.93690324 0.2788721 7.6591969e-06
		 0.00055685639 0.50004929 0.00075814128 0.68074018 0.089265734 0.68064165 0.00020128489
		 0.18078955 0.0011137426 1 0.11910012 0.93514693 0.089621276 0.99990141 0.00040253997
		 0.36148059 0.088708878 0.18069096 0.74456602 0.06404224 0.088507622 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 18 ".vt[0:17]"  -0.72301519 0 2.041531324 0.72301519 0 2.041531324
		 -0.72301519 1 2.041531324 0.72301519 1 2.041531324 -0.72301519 1 -2.041531324 0.72301519 1 -2.041531324
		 -0.72301519 0 -2.041531324 0.72301519 0 -2.041531324 -0.72301519 1 0 -0.72301519 0 0
		 0.72301519 0 0 0.72301519 1 0 0 1 2.3415916 0 1.14399576 0 0 1 -2.3415916 0 0 -2.3415916
		 0 0 0 0 0 2.3415916;
	setAttr -s 32 ".ed[0:31]"  0 17 0 17 12 0 12 2 0 2 0 0 12 13 0 13 8 0
		 8 2 0 4 14 0 14 15 0 15 6 0 6 4 0 9 16 0 16 17 0 0 9 0 1 10 0 10 11 0 11 3 0 3 1 0
		 8 9 0 6 9 0 8 4 0 15 16 0 10 7 0 7 5 0 5 11 0 13 14 0 12 3 0 11 13 0 5 14 0 7 15 0
		 10 16 0 1 17 0;
	setAttr -s 64 ".n[0:63]" -type "float3"  -0.38331294 0 0.92361856 0
		 0 1 0 0 1 -0.38331294 0 0.92361856 -0.10574351 0.9938572 0.032650489 0 0.99946082
		 0.032834582 0 1 0 -0.10579993 0.99438745 0 -0.38331294 0 -0.92361856 0 0 -1 0 0 -1
		 -0.38331294 0 -0.92361856 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1 0 0 1 0 0 1 0 0 1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 1 0 0 1 0 0 1 0 0 1 0 0 -0.10579993 0.99438745 0 0 1 0 0 0.99946082 -0.032834582
		 -0.10574351 0.9938572 -0.032650489 0 0.99946082 0.032834582 0.10574351 0.9938572
		 0.032650489 0.10579993 0.99438745 0 0 1 0 0 0.99946082 -0.032834582 0 1 0 0.10579993
		 0.99438745 0 0.10574351 0.9938572 -0.032650489 0 0 -1 0 0 -1 0.38331294 0 -0.92361856
		 0.38331294 0 -0.92361856 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 0 1 0 0 1 0.38331294 0 0.92361856 0.38331294 0 0.92361856;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 32
		f 4 -3 4 5 6
		mu 0 4 3 24 4 5
		f 4 7 8 9 10
		mu 0 4 29 7 20 31
		f 4 11 12 -1 13
		mu 0 4 10 11 18 34
		f 4 14 15 16 17
		mu 0 4 12 27 26 25
		f 4 -14 -4 -7 18
		mu 0 4 33 0 32 28
		f 4 19 -19 20 -11
		mu 0 4 35 33 28 6
		f 4 -10 21 -12 -20
		mu 0 4 9 8 11 10
		f 4 -16 22 23 24
		mu 0 4 26 27 21 17
		f 4 -6 25 -8 -21
		mu 0 4 5 4 22 30
		f 4 26 -17 27 -5
		mu 0 4 24 15 14 4
		f 4 -26 -28 -25 28
		mu 0 4 22 4 14 23
		f 4 -9 -29 -24 29
		mu 0 4 20 7 17 21
		f 4 -22 -30 -23 30
		mu 0 4 11 8 16 13
		f 4 -13 -31 -15 31
		mu 0 4 18 11 13 19
		f 4 -2 -32 -18 -27
		mu 0 4 2 1 12 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4A2620A5-4FC0-6A31-10F8-7099F3194668";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A70D19F2-4D6C-A4B8-FBB1-6FBEDBF82621";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "AE3CD325-4D21-9A2E-692F-9588B6173FC6";
createNode displayLayerManager -n "layerManager";
	rename -uid "90E4F32B-40AE-53EB-77DE-41A8197D7A65";
createNode displayLayer -n "defaultLayer";
	rename -uid "8546D342-4990-4A8E-31EC-0383FE5A0C3B";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "14BA88F0-4250-305D-2E70-2EB41886F489";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "9AE6E22C-4FF2-945A-7FB8-CD81C9BE977A";
	setAttr ".g" yes;
createNode reference -n "Perro_BindSkin2RN";
	rename -uid "E754B709-4D1B-8E06-CDA4-81AC0C7C770C";
	setAttr ".fn[0]" -type "string" "C:/Users/Ryzen/Documents/UNI/El Panadero Sin el Pan/Assets/3D MODELS/Perro/Perro_BindSkin2.mb";
	setAttr -s 107 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Perro_BindSkin2RN"
		"Perro_BindSkin2RN" 0
		"Perro_BindSkin2RN" 262
		2 "|Perro_BindSkin2:imagePlane1" "translate" " -type \"double3\" -1.38815999173058358 0.031226393163588221 0"
		
		2 "|Perro_BindSkin2:imagePlane1" "rotate" " -type \"double3\" 0 90 0"
		2 "|Perro_BindSkin2:imagePlane1" "scale" " -type \"double3\" 1.19711104729458628 1.19711104729458628 1.19711104729458628"
		
		2 "|Perro_BindSkin2:imagePlane1" "rotatePivot" " -type \"double3\" 0 0 0"
		
		2 "|Perro_BindSkin2:imagePlane1" "rotatePivotTranslate" " -type \"double3\" 0 0 0"
		
		2 "|Perro_BindSkin2:imagePlane1" "scalePivot" " -type \"double3\" 0 0 0"
		2 "|Perro_BindSkin2:imagePlane1" "scalePivotTranslate" " -type \"double3\" 0 0 0"
		
		2 "|Perro_BindSkin2:PerroPan" "rotatePivot" " -type \"double3\" 0 3.27948378324508694 0.65526489257812504"
		
		2 "|Perro_BindSkin2:PerroPan" "scalePivot" " -type \"double3\" 0 3.27948378324508694 0.65526489257812504"
		
		2 "|Perro_BindSkin2:PerroPan|Perro_BindSkin2:PerroPan14Shape" "visibility" 
		" -k 0 1"
		2 "|Perro_BindSkin2:Raiz_jnt" "translate" " -type \"double3\" 0 0 0.00040541064111732973"
		
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:joint6" 
		"translate" " -type \"double3\" 0 0.73238054609011161 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:joint6" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:joint6|Perro_BindSkin2:joint7|Perro_BindSkin2:joint8|Perro_BindSkin2:joint9" 
		"translate" " -type \"double3\" 0 1.06284691717370894 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:L_clavicula_jnt|Perro_BindSkin2:L_Hombro_jnt" 
		"translate" " -type \"double3\" 0.18592392076077041 -0.57953345896713071 -0.098352023978070233"
		
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:L_clavicula_jnt|Perro_BindSkin2:L_Hombro_jnt" 
		"rotate" " -type \"double3\" 129.97357142183849987 -3.7411799899234956e-07 -7.6744064008572523e-07"
		
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:L_clavicula_jnt|Perro_BindSkin2:L_Hombro_jnt|Perro_BindSkin2:L_Codo_jnt" 
		"translate" " -type \"double3\" 0 0.82780260092040525 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:L_clavicula_jnt|Perro_BindSkin2:L_Hombro_jnt|Perro_BindSkin2:L_Codo_jnt" 
		"rotate" " -type \"double3\" -89.45313289779669219 0 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:L_clavicula_jnt|Perro_BindSkin2:L_Hombro_jnt|Perro_BindSkin2:L_Codo_jnt|Perro_BindSkin2:L_Munieca_jnt" 
		"translate" " -type \"double3\" 0 1.38422316346427587 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:L_clavicula_jnt|Perro_BindSkin2:L_Hombro_jnt|Perro_BindSkin2:L_Codo_jnt|Perro_BindSkin2:L_Munieca_jnt" 
		"rotate" " -type \"double3\" 111.45272087211699841 2.3919456408327138e-07 -6.0870331114896211e-07"
		
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:L_clavicula_jnt|Perro_BindSkin2:L_Hombro_jnt|Perro_BindSkin2:L_Codo_jnt|Perro_BindSkin2:L_Munieca_jnt|Perro_BindSkin2:L_Pata_jnt" 
		"translate" " -type \"double3\" 0 0.44651535223283673 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:L_clavicula_jnt|Perro_BindSkin2:L_Hombro_jnt|Perro_BindSkin2:L_Codo_jnt|Perro_BindSkin2:L_Munieca_jnt|Perro_BindSkin2:L_Pata_jnt" 
		"rotate" " -type \"double3\" -0.00010590235289631836 0 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:L_clavicula_jnt|Perro_BindSkin2:L_Hombro_jnt|Perro_BindSkin2:L_Codo_jnt|Perro_BindSkin2:L_Munieca_jnt|Perro_BindSkin2:L_Pata_jnt|Perro_BindSkin2:L_Punta_pata_jnt" 
		"translate" " -type \"double3\" 0 0.28447787891532755 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:R_clavicula_jnt|Perro_BindSkin2:R_Hombro_jnt" 
		"translate" " -type \"double3\" -0.18592400000000006 0.57953000000000088 0.098349999999999799"
		
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:R_clavicula_jnt|Perro_BindSkin2:R_Hombro_jnt" 
		"rotate" " -type \"double3\" -22.45088487232339958 -2.350253049898439e-06 1.6694511242041092e-05"
		
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:R_clavicula_jnt|Perro_BindSkin2:R_Hombro_jnt|Perro_BindSkin2:R_Codo_jnt" 
		"translate" " -type \"double3\" 0 -0.82780849577270832 5.150176148447372e-06"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:R_clavicula_jnt|Perro_BindSkin2:R_Hombro_jnt|Perro_BindSkin2:R_Codo_jnt" 
		"rotate" " -type \"double3\" -48.68477215970091976 0 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:R_clavicula_jnt|Perro_BindSkin2:R_Hombro_jnt|Perro_BindSkin2:R_Codo_jnt|Perro_BindSkin2:R_Munieca_jnt" 
		"translate" " -type \"double3\" 0 -1.38422122703069084 -3.6945835694268679e-06"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:R_clavicula_jnt|Perro_BindSkin2:R_Hombro_jnt|Perro_BindSkin2:R_Codo_jnt|Perro_BindSkin2:R_Munieca_jnt" 
		"rotate" " -type \"double3\" 79.57255211770693393 2.0154343076171476e-05 -2.4201770441144768e-05"
		
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:R_clavicula_jnt|Perro_BindSkin2:R_Hombro_jnt|Perro_BindSkin2:R_Codo_jnt|Perro_BindSkin2:R_Munieca_jnt|Perro_BindSkin2:R_Pata_jnt" 
		"translate" " -type \"double3\" 0 -0.44651535986999008 -4.1656148141555605e-07"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:R_clavicula_jnt|Perro_BindSkin2:R_Hombro_jnt|Perro_BindSkin2:R_Codo_jnt|Perro_BindSkin2:R_Munieca_jnt|Perro_BindSkin2:R_Pata_jnt" 
		"rotate" " -type \"double3\" 3.2828686179173973e-08 0 1.8627112907422323e-05"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:joint3|Perro_BindSkin2:joint4|Perro_BindSkin2:joint5|Perro_BindSkin2:R_clavicula_jnt|Perro_BindSkin2:R_Hombro_jnt|Perro_BindSkin2:R_Codo_jnt|Perro_BindSkin2:R_Munieca_jnt|Perro_BindSkin2:R_Pata_jnt|Perro_BindSkin2:R_Punta_pata_jnt" 
		"translate" " -type \"double3\" 0 -0.28448083952277758 8.1575195963523585e-07"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:L_Cadera_jnt" 
		"translate" " -type \"double3\" 0.44590064313473443 -0.44724623090781734 -0.3267941026311772"
		
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:L_Cadera_jnt" 
		"rotate" " -type \"double3\" 31.99942081942140248 9.272299509484319e-06 5.7938667137050622e-06"
		
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:L_Cadera_jnt|Perro_BindSkin2:L_Rodilla_jnt" 
		"translate" " -type \"double3\" 0 0.70481184577770417 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:L_Cadera_jnt|Perro_BindSkin2:L_Rodilla_jnt" 
		"rotate" " -type \"double3\" -20.25593669749865811 0 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:L_Cadera_jnt|Perro_BindSkin2:L_Rodilla_jnt|Perro_BindSkin2:L_Tobillo_jnt" 
		"translate" " -type \"double3\" 0 1.38422316346427632 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:L_Cadera_jnt|Perro_BindSkin2:L_Rodilla_jnt|Perro_BindSkin2:L_Tobillo_jnt" 
		"rotate" " -type \"double3\" 19.64492197267718154 0 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:L_Cadera_jnt|Perro_BindSkin2:L_Rodilla_jnt|Perro_BindSkin2:L_Tobillo_jnt|Perro_BindSkin2:L_Pata_trasera_jnt" 
		"translate" " -type \"double3\" 0 1.20350775363738216 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:L_Cadera_jnt|Perro_BindSkin2:L_Rodilla_jnt|Perro_BindSkin2:L_Tobillo_jnt|Perro_BindSkin2:L_Pata_trasera_jnt" 
		"rotate" " -type \"double3\" -13.38051556688398769 4.0716536358407234e-06 -4.1308380399445442e-06"
		
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:L_Cadera_jnt|Perro_BindSkin2:L_Rodilla_jnt|Perro_BindSkin2:L_Tobillo_jnt|Perro_BindSkin2:L_Pata_trasera_jnt|Perro_BindSkin2:L_Punta_Pata_trasera_jnt" 
		"translate" " -type \"double3\" 0 0.37378014784133146 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:R_Cadera_jnt" 
		"translate" " -type \"double3\" -0.445901 -0.44724588440436036 -0.32679213516576283"
		
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:R_Cadera_jnt" 
		"rotate" " -type \"double3\" -39.97377553396295013 -2.6346742645987597e-06 1.3437428296699698e-06"
		
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:R_Cadera_jnt|Perro_BindSkin2:R_Rodilla_jnt" 
		"translate" " -type \"double3\" 0 -0.7048073218953238 1.6555636108250838e-06"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:R_Cadera_jnt|Perro_BindSkin2:R_Rodilla_jnt" 
		"rotate" " -type \"double3\" 21.46304184494512768 0 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:R_Cadera_jnt|Perro_BindSkin2:R_Rodilla_jnt|Perro_BindSkin2:R_Tobillo_jnt" 
		"translate" " -type \"double3\" 0 -1.38422732529581238 -2.0982132429026026e-06"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:R_Cadera_jnt|Perro_BindSkin2:R_Rodilla_jnt|Perro_BindSkin2:R_Tobillo_jnt" 
		"rotate" " -type \"double3\" -34.10135207813553393 0 0"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:R_Cadera_jnt|Perro_BindSkin2:R_Rodilla_jnt|Perro_BindSkin2:R_Tobillo_jnt|Perro_BindSkin2:R_Pata_trasera_jnt" 
		"translate" " -type \"double3\" 0 -1.20350963634727637 2.8717920713461353e-06"
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:R_Cadera_jnt|Perro_BindSkin2:R_Rodilla_jnt|Perro_BindSkin2:R_Tobillo_jnt|Perro_BindSkin2:R_Pata_trasera_jnt" 
		"rotate" " -type \"double3\" 58.47150867016866727 -1.839522222577228e-06 3.2860001828277066e-06"
		
		2 "|Perro_BindSkin2:Raiz_jnt|Perro_BindSkin2:Centro_jnt|Perro_BindSkin2:Cadera_jnt|Perro_BindSkin2:R_Cadera_jnt|Perro_BindSkin2:R_Rodilla_jnt|Perro_BindSkin2:R_Tobillo_jnt|Perro_BindSkin2:R_Pata_trasera_jnt|Perro_BindSkin2:R_Punta_Pata_trasera_jnt" 
		"translate" " -type \"double3\" 0 -0.37377751266288073 -2.6757972796076503e-06"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp" 
		"translate" " -type \"double3\" 0 4.27561401367187521 -1.45773727416992194"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp" 
		"rotate" " -type \"double3\" -90.00000000000002842 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp" 
		"translate" " -type \"double3\" 0 -1.06263011609652858 0.021469736589885428"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp" 
		"rotate" " -type \"double3\" -169.74503382332252954 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp" 
		"scale" " -type \"double3\" 1 0.99999999999999978 0.99999999999999978"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp" 
		"translate" " -type \"double3\" 0 1.06284691717370916 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp" 
		"rotate" " -type \"double3\" -14.04524217282786758 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp" 
		"scale" " -type \"double3\" 1 1.00000000000000044 1.00000000000000044"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp" 
		"translate" " -type \"double3\" 0 1.06284691717370872 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp" 
		"rotate" " -type \"double3\" -24.5093535642397562 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp" 
		"scale" " -type \"double3\" 1 0.99999999999999967 0.99999999999999967"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp" 
		"translate" " -type \"double3\" 0 0.73238054609011105 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp" 
		"rotate" " -type \"double3\" -26.99048401375183559 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp" 
		"scale" " -type \"double3\" 1 1.00000000000000044 1.00000000000000044"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl|Perro_BindSkin2:Cabeza_ctrl_grp" 
		"translate" " -type \"double3\" 0 0.7365473302940313 -1.9701275320471725e-07"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl|Perro_BindSkin2:Cabeza_ctrl_grp" 
		"rotate" " -type \"double3\" -34.7098864258579809 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl|Perro_BindSkin2:Cabeza_ctrl_grp" 
		"scale" " -type \"double3\" 1 0.99999999999999967 0.99999999999999967"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl|Perro_BindSkin2:Cabeza_ctrl_grp|Perro_BindSkin2:Cabeza_ctrl|Perro_BindSkin2:Mandibula_ctrl_grp" 
		"translate" " -type \"double3\" 0 -0.10735580982916815 0.67902359108691368"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl|Perro_BindSkin2:Cabeza_ctrl_grp|Perro_BindSkin2:Cabeza_ctrl|Perro_BindSkin2:Mandibula_ctrl_grp" 
		"rotate" " -type \"double3\" 98.98426572410554058 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl|Perro_BindSkin2:Cabeza_ctrl_grp|Perro_BindSkin2:Cabeza_ctrl|Perro_BindSkin2:Mandibula_ctrl_grp" 
		"scale" " -type \"double3\" 1 0.99999999999999978 0.99999999999999978"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:L_Clavicula_ctrl_grp" 
		"translate" " -type \"double3\" 0.26862686157226562 -0.061590381787680712 0.91540670417066117"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:L_Clavicula_ctrl_grp" 
		"rotate" " -type \"double3\" -61.70037043960982004 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:L_Clavicula_ctrl_grp" 
		"scale" " -type \"double3\" 1 1.00000000000000022 1.00000000000000022"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:R_Clavicula_ctrl_grp" 
		"translate" " -type \"double3\" -0.26862686157226562 -0.061590381787680712 0.91540670417066117"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:R_Clavicula_ctrl_grp" 
		"rotate" " -type \"double3\" 61.70037043960982004 180 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:R_Clavicula_ctrl_grp" 
		"scale" " -type \"double3\" 1 1.00000000000000022 -1.00000000000000022"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cadera_ctrl_grp" 
		"translate" " -type \"double3\" 0 0.082990570068359665 -0.36949798583984378"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cadera_ctrl_grp" 
		"rotate" " -type \"double3\" 90.00000000000002842 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp" 
		"translate" " -type \"double3\" 0 0.71630770805759225 0.24590417139574469"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp" 
		"rotate" " -type \"double3\" -65.69044050232544407 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp" 
		"scale" " -type \"double3\" 1 0.99999999999999967 0.99999999999999967"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp" 
		"translate" " -type \"double3\" 0 0.83052196958728308 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp" 
		"rotate" " -type \"double3\" -21.01824730869573798 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp" 
		"scale" " -type \"double3\" 1 1.00000000000000022 1.00000000000000022"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp" 
		"translate" " -type \"double3\" 0 0.83052196958728308 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp" 
		"rotate" " -type \"double3\" 9.13628244872908724 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp" 
		"scale" " -type \"double3\" 1 1.00000000000000022 1.00000000000000022"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl|Perro_BindSkin2:Cola_jnt_4grp" 
		"translate" " -type \"double3\" 0 0.83052196958728564 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl|Perro_BindSkin2:Cola_jnt_4grp" 
		"rotate" " -type \"double3\" 32.69179116523270068 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl|Perro_BindSkin2:Cola_jnt_4grp" 
		"scale" " -type \"double3\" 1 0.99999999999999978 0.99999999999999978"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl|Perro_BindSkin2:Cola_jnt_4grp|Perro_BindSkin2:Cola_jnt_4Ctrl|Perro_BindSkin2:Cola_jnt_5grp" 
		"translate" " -type \"double3\" 0 0.8305219695872833 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pole_Frontal_ctrl_grp" 
		"translate" " -type \"double3\" 0.45455078125000004 2.19181884765625012 0.694462890625"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pole_Frontal_ctrl_grp" 
		"translate" " -type \"double3\" -0.45455078125000004 2.19181884765625012 0.694462890625"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pole_Frontal_ctrl_grp" 
		"rotate" " -type \"double3\" 0 180 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pole_Frontal_ctrl_grp" 
		"scale" " -type \"double3\" 1 1 -1"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pole_Trasera_ctrl_grp" 
		"translate" " -type \"double3\" 0.44590087890624952 2.27306640624999989 -3.91253678589964071"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pole_Trasera_ctrl_grp" 
		"translate" " -type \"double3\" -0.44590087890624952 2.27306640624999989 -3.91253678589964071"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pole_Trasera_ctrl_grp" 
		"rotate" " -type \"double3\" 0 180 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pole_Trasera_ctrl_grp" 
		"scale" " -type \"double3\" 1 1 -1"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp" 
		"translate" " -type \"double3\" 0.45455078125000004 0 2.00024139404296886"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl" 
		"rotatePivot" " -type \"double3\" 0 0.56026386260986327 0.076628112792968758"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl" 
		"scalePivot" " -type \"double3\" 0 0.56026386260986327 0.076628112792968758"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl|Perro_BindSkin2:L_Talon_jnt_inv" 
		"translate" " -type \"double3\" 0 0 -7.1537526196152611e-08"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl|Perro_BindSkin2:L_Talon_jnt_inv|Perro_BindSkin2:L_Punta_pata_jnt_inv" 
		"translate" " -type \"double3\" 0.56136867078844666 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl|Perro_BindSkin2:L_Talon_jnt_inv|Perro_BindSkin2:L_Punta_pata_jnt_inv|Perro_BindSkin2:L_Pata_jnt_inv" 
		"translate" " -type \"double3\" 0.28447787891532783 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl|Perro_BindSkin2:L_Talon_jnt_inv|Perro_BindSkin2:L_Punta_pata_jnt_inv|Perro_BindSkin2:L_Pata_jnt_inv|Perro_BindSkin2:L_Munieca_jnt_inv" 
		"translate" " -type \"double3\" 0.44651535223283695 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl|Perro_BindSkin2:L_Talon_jnt_inv|Perro_BindSkin2:L_Punta_pata_jnt_inv|Perro_BindSkin2:L_Pata_jnt_inv|Perro_BindSkin2:L_Munieca_jnt_inv|Perro_BindSkin2:L_Pata_frontal_IK" 
		"translate" " -type \"double3\" 8.9385447665790713e-09 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl|Perro_BindSkin2:L_Talon_jnt_inv|Perro_BindSkin2:L_Punta_pata_jnt_inv|Perro_BindSkin2:L_Pata_jnt_inv|Perro_BindSkin2:L_Munieca_jnt_inv|Perro_BindSkin2:L_Pata_frontal_IK" 
		"rotate" " -type \"double3\" 26.9995160833180492 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl|Perro_BindSkin2:L_Talon_jnt_inv|Perro_BindSkin2:L_Punta_pata_jnt_inv|Perro_BindSkin2:L_Pata_jnt_inv|Perro_BindSkin2:L_Munieca_jnt_inv|Perro_BindSkin2:L_Pata_frontal_IK" 
		"scale" " -type \"double3\" 1 1.00000000000000022 1.00000000000000022"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl|Perro_BindSkin2:L_Talon_jnt_inv|Perro_BindSkin2:L_Punta_pata_jnt_inv|Perro_BindSkin2:L_Pata_jnt_inv|Perro_BindSkin2:L_Pata_Frontal_IK_inv" 
		"translate" " -type \"double3\" 0 0 4.3635268553998689e-09"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl|Perro_BindSkin2:L_Talon_jnt_inv|Perro_BindSkin2:L_Punta_pata_jnt_inv|Perro_BindSkin2:L_Pata_jnt_inv|Perro_BindSkin2:L_Pata_Frontal_IK_inv" 
		"rotate" " -type \"double3\" 89.99999999999981526 -89.99999912115605127 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl|Perro_BindSkin2:L_Talon_jnt_inv|Perro_BindSkin2:L_Punta_pata_jnt_inv|Perro_BindSkin2:L_Pata_jnt_inv|Perro_BindSkin2:L_Pata_Frontal_IK_inv" 
		"scale" " -type \"double3\" 1 1.00000000000000022 1.00000000000000022"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl|Perro_BindSkin2:L_Talon_jnt_inv|Perro_BindSkin2:L_Punta_pata_jnt_inv|Perro_BindSkin2:L_Punta_Frontal_IK_inv" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl|Perro_BindSkin2:L_Talon_jnt_inv|Perro_BindSkin2:L_Punta_pata_jnt_inv|Perro_BindSkin2:L_Punta_Frontal_IK_inv" 
		"rotate" " -type \"double3\" 90 -89.99999912115606548 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl|Perro_BindSkin2:L_Talon_jnt_inv|Perro_BindSkin2:L_Punta_pata_jnt_inv|Perro_BindSkin2:L_Punta_Frontal_IK_inv" 
		"scale" " -type \"double3\" 1 1 1.00000000000000022"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp" 
		"translate" " -type \"double3\" -0.45455078125000004 0 2.00024139404296886"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp" 
		"rotate" " -type \"double3\" 0 180 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp" 
		"scale" " -type \"double3\" 1 1 -1"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl" 
		"rotatePivot" " -type \"double3\" 2.6702880852269571e-07 0.56026401519775393 0.076628570556640907"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl" 
		"scalePivot" " -type \"double3\" 2.6702880852269571e-07 0.56026401519775393 0.076628570556640907"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl|Perro_BindSkin2:R_Talon_jnt_inv" 
		"translate" " -type \"double3\" 0 0 -1.3940429681724709e-06"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl|Perro_BindSkin2:R_Talon_jnt_inv|Perro_BindSkin2:R_Punta_pata_jnt_inv" 
		"translate" " -type \"double3\" -0.56137311766926357 7.3568710412530436e-07 -8.7976281548662888e-09"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl|Perro_BindSkin2:R_Talon_jnt_inv|Perro_BindSkin2:R_Punta_pata_jnt_inv|Perro_BindSkin2:R_Pata_jnt_inv" 
		"translate" " -type \"double3\" -0.2844808395227767 8.1575195878258453e-07 -4.3635755275772683e-09"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl|Perro_BindSkin2:R_Talon_jnt_inv|Perro_BindSkin2:R_Punta_pata_jnt_inv|Perro_BindSkin2:R_Pata_jnt_inv|Perro_BindSkin2:R_Munieca_jnt_inv" 
		"translate" " -type \"double3\" -0.44651535986998953 -4.1656147971025347e-07 -3.2176812680972944e-09"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl|Perro_BindSkin2:R_Talon_jnt_inv|Perro_BindSkin2:R_Punta_pata_jnt_inv|Perro_BindSkin2:R_Pata_jnt_inv|Perro_BindSkin2:R_Munieca_jnt_inv|Perro_BindSkin2:R_Pata_frontal_IK" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl|Perro_BindSkin2:R_Talon_jnt_inv|Perro_BindSkin2:R_Punta_pata_jnt_inv|Perro_BindSkin2:R_Pata_jnt_inv|Perro_BindSkin2:R_Munieca_jnt_inv|Perro_BindSkin2:R_Pata_frontal_IK" 
		"rotate" " -type \"double3\" -26.99951608331805986 0 179.99999935307016585"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl|Perro_BindSkin2:R_Talon_jnt_inv|Perro_BindSkin2:R_Punta_pata_jnt_inv|Perro_BindSkin2:R_Pata_jnt_inv|Perro_BindSkin2:R_Munieca_jnt_inv|Perro_BindSkin2:R_Pata_frontal_IK" 
		"scale" " -type \"double3\" 1 1.00000000000000022 -1"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl|Perro_BindSkin2:R_Talon_jnt_inv|Perro_BindSkin2:R_Punta_pata_jnt_inv|Perro_BindSkin2:R_Pata_jnt_inv|Perro_BindSkin2:R_Pata_Frontal_IK_inv" 
		"translate" " -type \"double3\" 0 0 7.5293064298875832e-08"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl|Perro_BindSkin2:R_Talon_jnt_inv|Perro_BindSkin2:R_Punta_pata_jnt_inv|Perro_BindSkin2:R_Pata_jnt_inv|Perro_BindSkin2:R_Pata_Frontal_IK_inv" 
		"rotate" " -type \"double3\" -90.00000000000024158 89.99998973321110896 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl|Perro_BindSkin2:R_Talon_jnt_inv|Perro_BindSkin2:R_Punta_pata_jnt_inv|Perro_BindSkin2:R_Pata_jnt_inv|Perro_BindSkin2:R_Pata_Frontal_IK_inv" 
		"scale" " -type \"double3\" 0.99999999999999989 1 -0.99999999999999978"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl|Perro_BindSkin2:R_Talon_jnt_inv|Perro_BindSkin2:R_Punta_pata_jnt_inv|Perro_BindSkin2:R_Punta_Frontal_IK_inv" 
		"translate" " -type \"double3\" 0 0 1.20989028644658e-07"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl|Perro_BindSkin2:R_Talon_jnt_inv|Perro_BindSkin2:R_Punta_pata_jnt_inv|Perro_BindSkin2:R_Punta_Frontal_IK_inv" 
		"rotate" " -type \"double3\" -90.00000000000029843 89.99998973321113738 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl|Perro_BindSkin2:R_Talon_jnt_inv|Perro_BindSkin2:R_Punta_pata_jnt_inv|Perro_BindSkin2:R_Punta_Frontal_IK_inv" 
		"scale" " -type \"double3\" 1.00000000000000022 0.99999999999999956 -0.99999999999999989"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp" 
		"translate" " -type \"double3\" 0.4459006118774414 0 -2.94191436767578152"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl|Perro_BindSkin2:L_Talon_Trasero_jnt_inv" 
		"translate" " -type \"double3\" 0 0 -2.6962705419464327e-08"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl|Perro_BindSkin2:L_Talon_Trasero_jnt_inv|Perro_BindSkin2:L_Punta_Pata_trasera_jnt" 
		"translate" " -type \"double3\" 0.29842262682988835 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl|Perro_BindSkin2:L_Talon_Trasero_jnt_inv|Perro_BindSkin2:L_Punta_Pata_trasera_jnt|Perro_BindSkin2:L_Pata_trasera_jnt_inv" 
		"translate" " -type \"double3\" 0.37378014784133173 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl|Perro_BindSkin2:L_Talon_Trasero_jnt_inv|Perro_BindSkin2:L_Punta_Pata_trasera_jnt|Perro_BindSkin2:L_Pata_trasera_jnt_inv|Perro_BindSkin2:L_Pata_Trasera_IK" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl|Perro_BindSkin2:L_Talon_Trasero_jnt_inv|Perro_BindSkin2:L_Punta_Pata_trasera_jnt|Perro_BindSkin2:L_Pata_trasera_jnt_inv|Perro_BindSkin2:L_Pata_Trasera_IK" 
		"rotate" " -type \"double3\" 37.92256041862077609 9.1517096281447331e-06 2.751552290832079e-06"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl|Perro_BindSkin2:L_Talon_Trasero_jnt_inv|Perro_BindSkin2:L_Punta_Pata_trasera_jnt|Perro_BindSkin2:L_Pata_trasera_jnt_inv|Perro_BindSkin2:L_Pata_Trasera_IK" 
		"scale" " -type \"double3\" 0.99999999999999989 1 0.99999999999999978"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl|Perro_BindSkin2:L_Talon_Trasero_jnt_inv|Perro_BindSkin2:L_Punta_Pata_trasera_jnt|Perro_BindSkin2:L_Punta_Trasera_IK_inv" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl|Perro_BindSkin2:L_Talon_Trasero_jnt_inv|Perro_BindSkin2:L_Punta_Pata_trasera_jnt|Perro_BindSkin2:L_Punta_Trasera_IK_inv" 
		"rotate" " -type \"double3\" 90 -89.99999562135135989 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl|Perro_BindSkin2:L_Talon_Trasero_jnt_inv|Perro_BindSkin2:L_Punta_Pata_trasera_jnt|Perro_BindSkin2:L_Punta_Trasera_IK_inv" 
		"scale" " -type \"double3\" 1 1.00000000000000044 1.00000000000000022"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp" 
		"translate" " -type \"double3\" -0.4459006118774414 0 -2.94191436767578152"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp" 
		"rotate" " -type \"double3\" 0 180 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp" 
		"scale" " -type \"double3\" 1 1 -1"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl|Perro_BindSkin2:R_Talon_Trasero_jnt_inv" 
		"translate" " -type \"double3\" 3.8812255887421542e-07 0 4.3676757803723374e-06"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl|Perro_BindSkin2:R_Talon_Trasero_jnt_inv|Perro_BindSkin2:R_Punta_Pata_trasera_jnt" 
		"translate" " -type \"double3\" -0.29841767413110348 -1.4807155915264047e-06 1.5257681198477257e-08"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl|Perro_BindSkin2:R_Talon_Trasero_jnt_inv|Perro_BindSkin2:R_Punta_Pata_trasera_jnt|Perro_BindSkin2:R_Pata_trasera_jnt_inv" 
		"translate" " -type \"double3\" -0.37377751266287845 -2.6757972855762091e-06 4.6514497000771374e-08"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl|Perro_BindSkin2:R_Talon_Trasero_jnt_inv|Perro_BindSkin2:R_Punta_Pata_trasera_jnt|Perro_BindSkin2:R_Pata_trasera_jnt_inv|Perro_BindSkin2:R_Pata_Trasera_IK" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl|Perro_BindSkin2:R_Talon_Trasero_jnt_inv|Perro_BindSkin2:R_Punta_Pata_trasera_jnt|Perro_BindSkin2:R_Pata_trasera_jnt_inv|Perro_BindSkin2:R_Pata_Trasera_IK" 
		"rotate" " -type \"double3\" -37.92256041862077609 -9.1216308330873049e-06 -179.99999724855101135"
		
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl|Perro_BindSkin2:R_Talon_Trasero_jnt_inv|Perro_BindSkin2:R_Punta_Pata_trasera_jnt|Perro_BindSkin2:R_Pata_trasera_jnt_inv|Perro_BindSkin2:R_Pata_Trasera_IK" 
		"scale" " -type \"double3\" 0.99999999999999967 1 -1"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl|Perro_BindSkin2:R_Talon_Trasero_jnt_inv|Perro_BindSkin2:R_Punta_Pata_trasera_jnt|Perro_BindSkin2:R_Punta_Trasera_IK_inv" 
		"translate" " -type \"double3\" 0 0 -1.6577020147678924e-08"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl|Perro_BindSkin2:R_Talon_Trasero_jnt_inv|Perro_BindSkin2:R_Punta_Pata_trasera_jnt|Perro_BindSkin2:R_Punta_Trasera_IK_inv" 
		"rotate" " -type \"double3\" -90.00000000000062528 89.99999274644093816 0"
		2 "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl|Perro_BindSkin2:R_Talon_Trasero_jnt_inv|Perro_BindSkin2:R_Punta_Pata_trasera_jnt|Perro_BindSkin2:R_Punta_Trasera_IK_inv" 
		"scale" " -type \"double3\" 0.99999999999999989 0.99999999999999967 -0.99999999999999978"
		
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl.translateY" 
		"Perro_BindSkin2RN.placeHolderList[1]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl.translateZ" 
		"Perro_BindSkin2RN.placeHolderList[2]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl.translateX" 
		"Perro_BindSkin2RN.placeHolderList[3]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[4]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[5]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[6]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[7]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[8]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[9]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[10]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1.visibility" 
		"Perro_BindSkin2RN.placeHolderList[11]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[12]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[13]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[14]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2.visibility" 
		"Perro_BindSkin2RN.placeHolderList[15]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[16]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[17]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[18]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3.visibility" 
		"Perro_BindSkin2RN.placeHolderList[19]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[20]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[21]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[22]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[23]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl|Perro_BindSkin2:Cabeza_ctrl_grp|Perro_BindSkin2:Cabeza_ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[24]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl|Perro_BindSkin2:Cabeza_ctrl_grp|Perro_BindSkin2:Cabeza_ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[25]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl|Perro_BindSkin2:Cabeza_ctrl_grp|Perro_BindSkin2:Cabeza_ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[26]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl|Perro_BindSkin2:Cabeza_ctrl_grp|Perro_BindSkin2:Cabeza_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[27]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl|Perro_BindSkin2:Cabeza_ctrl_grp|Perro_BindSkin2:Cabeza_ctrl|Perro_BindSkin2:Mandibula_ctrl_grp|Perro_BindSkin2:Mandibula_ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[28]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl|Perro_BindSkin2:Cabeza_ctrl_grp|Perro_BindSkin2:Cabeza_ctrl|Perro_BindSkin2:Mandibula_ctrl_grp|Perro_BindSkin2:Mandibula_ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[29]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl|Perro_BindSkin2:Cabeza_ctrl_grp|Perro_BindSkin2:Cabeza_ctrl|Perro_BindSkin2:Mandibula_ctrl_grp|Perro_BindSkin2:Mandibula_ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[30]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:Cuello_ctrl_grp|Perro_BindSkin2:Cuello_ctrl|Perro_BindSkin2:Cabeza_ctrl_grp|Perro_BindSkin2:Cabeza_ctrl|Perro_BindSkin2:Mandibula_ctrl_grp|Perro_BindSkin2:Mandibula_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[31]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:L_Clavicula_ctrl_grp|Perro_BindSkin2:L_Clavicula_ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[32]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:L_Clavicula_ctrl_grp|Perro_BindSkin2:L_Clavicula_ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[33]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:L_Clavicula_ctrl_grp|Perro_BindSkin2:L_Clavicula_ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[34]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:L_Clavicula_ctrl_grp|Perro_BindSkin2:L_Clavicula_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[35]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:R_Clavicula_ctrl_grp|Perro_BindSkin2:R_Clavicula_ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[36]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:R_Clavicula_ctrl_grp|Perro_BindSkin2:R_Clavicula_ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[37]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:R_Clavicula_ctrl_grp|Perro_BindSkin2:R_Clavicula_ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[38]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Columna_ctrl_1_grp|Perro_BindSkin2:Columna_ctrl_1|Perro_BindSkin2:Columna_ctrl_2_grp|Perro_BindSkin2:Columna_ctrl_2|Perro_BindSkin2:Columna_ctrl_3_grp|Perro_BindSkin2:Columna_ctrl_3|Perro_BindSkin2:R_Clavicula_ctrl_grp|Perro_BindSkin2:R_Clavicula_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[39]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cadera_ctrl_grp|Perro_BindSkin2:Cadera_ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[40]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cadera_ctrl_grp|Perro_BindSkin2:Cadera_ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[41]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cadera_ctrl_grp|Perro_BindSkin2:Cadera_ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[42]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cadera_ctrl_grp|Perro_BindSkin2:Cadera_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[43]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[44]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[45]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[46]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[47]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[48]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[49]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[50]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[51]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[52]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[53]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[54]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[55]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl|Perro_BindSkin2:Cola_jnt_4grp|Perro_BindSkin2:Cola_jnt_4Ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[56]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl|Perro_BindSkin2:Cola_jnt_4grp|Perro_BindSkin2:Cola_jnt_4Ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[57]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl|Perro_BindSkin2:Cola_jnt_4grp|Perro_BindSkin2:Cola_jnt_4Ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[58]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl|Perro_BindSkin2:Cola_jnt_4grp|Perro_BindSkin2:Cola_jnt_4Ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[59]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl|Perro_BindSkin2:Cola_jnt_4grp|Perro_BindSkin2:Cola_jnt_4Ctrl|Perro_BindSkin2:Cola_jnt_5grp|Perro_BindSkin2:Cola_jnt_5Ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[60]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl|Perro_BindSkin2:Cola_jnt_4grp|Perro_BindSkin2:Cola_jnt_4Ctrl|Perro_BindSkin2:Cola_jnt_5grp|Perro_BindSkin2:Cola_jnt_5Ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[61]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl|Perro_BindSkin2:Cola_jnt_4grp|Perro_BindSkin2:Cola_jnt_4Ctrl|Perro_BindSkin2:Cola_jnt_5grp|Perro_BindSkin2:Cola_jnt_5Ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[62]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Centro_ctrl_grp|Perro_BindSkin2:Centro_ctrl|Perro_BindSkin2:Cola_jnt_1grp|Perro_BindSkin2:Cola_jnt_1Ctrl|Perro_BindSkin2:Cola_jnt_2grp|Perro_BindSkin2:Cola_jnt_2Ctrl|Perro_BindSkin2:Cola_jnt_3grp|Perro_BindSkin2:Cola_jnt_3Ctrl|Perro_BindSkin2:Cola_jnt_4grp|Perro_BindSkin2:Cola_jnt_4Ctrl|Perro_BindSkin2:Cola_jnt_5grp|Perro_BindSkin2:Cola_jnt_5Ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[63]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pole_Frontal_ctrl_grp|Perro_BindSkin2:L_Pole_Frontal_ctrl.translateX" 
		"Perro_BindSkin2RN.placeHolderList[64]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pole_Frontal_ctrl_grp|Perro_BindSkin2:L_Pole_Frontal_ctrl.translateY" 
		"Perro_BindSkin2RN.placeHolderList[65]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pole_Frontal_ctrl_grp|Perro_BindSkin2:L_Pole_Frontal_ctrl.translateZ" 
		"Perro_BindSkin2RN.placeHolderList[66]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pole_Frontal_ctrl_grp|Perro_BindSkin2:L_Pole_Frontal_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[67]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pole_Frontal_ctrl_grp|Perro_BindSkin2:R_Pole_Frontal_ctrl.translateX" 
		"Perro_BindSkin2RN.placeHolderList[68]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pole_Frontal_ctrl_grp|Perro_BindSkin2:R_Pole_Frontal_ctrl.translateY" 
		"Perro_BindSkin2RN.placeHolderList[69]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pole_Frontal_ctrl_grp|Perro_BindSkin2:R_Pole_Frontal_ctrl.translateZ" 
		"Perro_BindSkin2RN.placeHolderList[70]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pole_Frontal_ctrl_grp|Perro_BindSkin2:R_Pole_Frontal_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[71]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pole_Trasera_ctrl_grp|Perro_BindSkin2:L_Pole_Trasera_ctrl.translateX" 
		"Perro_BindSkin2RN.placeHolderList[72]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pole_Trasera_ctrl_grp|Perro_BindSkin2:L_Pole_Trasera_ctrl.translateY" 
		"Perro_BindSkin2RN.placeHolderList[73]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pole_Trasera_ctrl_grp|Perro_BindSkin2:L_Pole_Trasera_ctrl.translateZ" 
		"Perro_BindSkin2RN.placeHolderList[74]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pole_Trasera_ctrl_grp|Perro_BindSkin2:L_Pole_Trasera_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[75]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pole_Trasera_ctrl_grp|Perro_BindSkin2:R_Pole_Trasera_ctrl.translateX" 
		"Perro_BindSkin2RN.placeHolderList[76]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pole_Trasera_ctrl_grp|Perro_BindSkin2:R_Pole_Trasera_ctrl.translateY" 
		"Perro_BindSkin2RN.placeHolderList[77]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pole_Trasera_ctrl_grp|Perro_BindSkin2:R_Pole_Trasera_ctrl.translateZ" 
		"Perro_BindSkin2RN.placeHolderList[78]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pole_Trasera_ctrl_grp|Perro_BindSkin2:R_Pole_Trasera_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[79]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl.translateX" 
		"Perro_BindSkin2RN.placeHolderList[80]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl.translateY" 
		"Perro_BindSkin2RN.placeHolderList[81]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl.translateZ" 
		"Perro_BindSkin2RN.placeHolderList[82]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[83]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[84]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[85]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_ctrl_grp|Perro_BindSkin2:L_Pata_ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[86]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl.translateX" 
		"Perro_BindSkin2RN.placeHolderList[87]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl.translateZ" 
		"Perro_BindSkin2RN.placeHolderList[88]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl.translateY" 
		"Perro_BindSkin2RN.placeHolderList[89]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[90]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[91]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[92]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_ctrl_grp|Perro_BindSkin2:R_Pata_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[93]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl.translateY" 
		"Perro_BindSkin2RN.placeHolderList[94]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl.translateZ" 
		"Perro_BindSkin2RN.placeHolderList[95]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl.translateX" 
		"Perro_BindSkin2RN.placeHolderList[96]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[97]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[98]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[99]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:L_Pata_Trasera_ctrl_grp|Perro_BindSkin2:L_Pata_Trasera_ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[100]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl.translateX" 
		"Perro_BindSkin2RN.placeHolderList[101]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl.translateY" 
		"Perro_BindSkin2RN.placeHolderList[102]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl.translateZ" 
		"Perro_BindSkin2RN.placeHolderList[103]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl.visibility" 
		"Perro_BindSkin2RN.placeHolderList[104]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl.rotateX" 
		"Perro_BindSkin2RN.placeHolderList[105]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl.rotateY" 
		"Perro_BindSkin2RN.placeHolderList[106]" ""
		5 4 "Perro_BindSkin2RN" "|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:Global_ctrl|Perro_BindSkin2:R_Pata_Trasera_ctrl_grp|Perro_BindSkin2:R_Pata_Trasera_ctrl.rotateZ" 
		"Perro_BindSkin2RN.placeHolderList[107]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "8BD34E69-495F-19AE-3D95-7192824266D1";
	setAttr ".version" -type "string" "5.4.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "71E9CA5A-4C3F-C28A-CCE0-889038068827";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "077E9BED-49D9-1593-537E-D0A722721F86";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "9D8F4477-4DDD-F9B2-9E91-E093E697B641";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8CDD32B2-41F7-85A8-15D9-3D87BFC9C830";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1060\n            -height 714\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1060\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1060\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 0.05 -size 0.12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "A084A997-43E5-CAEC-16F2-C7ADB7AD9657";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 29 -ast 0 -aet 300 ";
	setAttr ".st" 6;
createNode reference -n "sharedReferenceNode";
	rename -uid "6E1FED09-4817-AAA0-9E38-D68FF8BA4B66";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode animCurveTU -n "Cola_jnt_1Ctrl_visibility";
	rename -uid "E7940575-49DA-5D4C-FAA7-208458751AE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 14 1 17 1
		 19 1 26 1 29 1;
	setAttr -s 12 ".kit[7:11]"  9 9 9 9 1;
	setAttr -s 12 ".kot[7:11]"  5 5 5 5 1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTA -n "Cola_jnt_1Ctrl_rotateX";
	rename -uid "1EE7BAF1-40D0-A943-1618-6D86195EF5F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 33.031050749789166 3 46.110839013761641
		 5 46.110839013761641 7 28.189501889156027 9 28.189501889156027 11 30.610276319472597
		 13 33.031050749789166 14 83.406805111560345 17 51.562888254175519 19 94.262728541461229
		 26 120.11939935709431 29 69.001365209692779;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  0.5493598345960703;
	setAttr -s 12 ".kiy[11]"  0.83558588555131674;
	setAttr -s 12 ".kox[11]"  0.5493598345960703;
	setAttr -s 12 ".koy[11]"  0.83558588555131674;
createNode animCurveTA -n "Cola_jnt_1Ctrl_rotateY";
	rename -uid "7545D1AA-4F78-68F2-8833-FE81CF5D2497";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 19 0 26 0 29 0;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTA -n "Cola_jnt_1Ctrl_rotateZ";
	rename -uid "5F575BE9-44F6-2C15-F101-06AE205EDB5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 19 0 26 0 29 0;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTL -n "L_Pata_Trasera_ctrl_translateX";
	rename -uid "A2C5D0DF-4168-34DE-7365-D499646249D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 20 -7.105427357601002e-17 23 -7.105427357601002e-17 26 -7.105427357601002e-17 29 0;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTL -n "L_Pata_Trasera_ctrl_translateY";
	rename -uid "98C51312-447D-A479-5CF7-689D865362A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 0.58265244597621835 5 1.6272917949584484
		 7 1.9489950655270272 9 1.0440860663639486 11 0 13 0 14 0 17 0.96495861579530673 20 1.961291921967744
		 23 2.6303811877699088 26 3.0356314252772871 29 0;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTL -n "L_Pata_Trasera_ctrl_translateZ";
	rename -uid "0D17EF4C-434F-F2BE-63D5-CA9069C1E12B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -0.87027031131082089 3 -1.4383449992099129
		 5 -1.8530434233929196 7 -1.8530434233929196 9 -0.054961645920800654 11 2.8534076838666134
		 13 -0.87027031131082089 14 1.021931791381655 17 -0.083661572191070926 20 -0.97256835056918389
		 23 -0.29065190582839606 26 0.10132410588912037 29 -0.87027031131082089;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTU -n "L_Pata_Trasera_ctrl_visibility";
	rename -uid "FC0BA614-45F9-1671-CA9D-92B2B1B09DAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 14 1 17 1
		 20 1 23 1 26 1 29 1;
	setAttr -s 13 ".kit[7:12]"  9 9 9 9 9 1;
	setAttr -s 13 ".kot[7:12]"  5 5 5 5 5 1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTA -n "L_Pata_Trasera_ctrl_rotateX";
	rename -uid "850B6C94-4E16-8218-E82B-AA9E5D579A0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 17.701877886964617 5 93.767757935184179
		 7 93.767757935184179 9 83.594477620467018 11 0 13 0 14 0 17 31.690636397988428 20 31.690636397988428
		 23 31.690636397988428 26 31.690636397988428 29 0;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTA -n "L_Pata_Trasera_ctrl_rotateY";
	rename -uid "9D6171E0-42D2-C4AD-7A45-E380970FD49C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 20 0 23 0 26 0 29 0;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTA -n "L_Pata_Trasera_ctrl_rotateZ";
	rename -uid "8A119454-4379-FD78-3331-35BE97CB32AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 20 0 23 0 26 0 29 0;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTL -n "R_Pata_Trasera_ctrl_translateX";
	rename -uid "744ADEAC-4E97-7DF8-6221-A99577E68B94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 1.5837217216158503e-16 5 5.4546039604008078e-16
		 7 7.4969935954501052e-16 9 6.5832907972146747e-16 11 4.3179820071936139e-16 13 0
		 14 2.6340095936405744e-16 17 3.9951326573962194e-16 20 5.287587758295161e-16 23 6.9326588915479645e-16
		 26 7.4388950036794646e-16 29 2.8375476823019855e-16;
	setAttr -s 13 ".kit[6:12]"  1 18 18 18 18 18 1;
	setAttr -s 13 ".kot[6:12]"  1 18 18 18 18 18 1;
	setAttr -s 13 ".kix[6:12]"  1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[6:12]"  0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[6:12]"  1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[6:12]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "R_Pata_Trasera_ctrl_translateY";
	rename -uid "D356F540-4CA6-4D15-B5F5-6482CF4F8EA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 -2.6707319135260982e-32 5 0.40835109152728494
		 7 1.4989921412287772 9 0.98343271601370119 11 1.2591051172483525 13 0 14 -2.0877050245228945e-32
		 17 1.3295496908110622 20 1.642385757027554 23 2.1510656694116039 26 2.2503357824233787
		 29 -1.9747186883128467e-32;
	setAttr -s 13 ".kit[6:12]"  1 18 18 18 18 18 1;
	setAttr -s 13 ".kot[6:12]"  1 18 18 18 18 18 1;
	setAttr -s 13 ".kix[6:12]"  1 1 0.0015221741256788034 0.0030431403517591315 
		0.0041972652573219063 1 1;
	setAttr -s 13 ".kiy[6:12]"  0 0 0.99999884149229457 0.99999536963767965 
		0.99999119144338444 0 0;
	setAttr -s 13 ".kox[6:12]"  1 1 0.0015221741256788034 0.0030431403517591315 
		0.0041972652573219063 1 1;
	setAttr -s 13 ".koy[6:12]"  0 0 0.99999884149229457 0.99999536963767965 
		0.99999119144338444 0 0;
createNode animCurveTL -n "R_Pata_Trasera_ctrl_translateZ";
	rename -uid "C1B768EC-4122-2BB2-0733-1DAD26752B68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 2.2875261019982265 3 0.60226809959050898
		 5 -0.9643126620468927 7 -1.5239337019175658 9 -0.70094338558547509 11 0.93687918220967603
		 13 2.2875261019982265 14 0.55502117711622612 17 0.60903051256916396 20 0.084890450408849155
		 23 -0.75685789813420767 26 0.067165148674406663 29 0.37169036506597919;
	setAttr -s 13 ".kit[6:12]"  1 18 18 18 18 18 1;
	setAttr -s 13 ".kot[6:12]"  1 18 18 18 18 18 1;
	setAttr -s 13 ".kix[6:12]"  1 1 1 0.0018303075074611269 1 0.0022152299085985822 
		1;
	setAttr -s 13 ".kiy[6:12]"  0 0 0 -0.99999832498581132 0 0.99999754637521598 
		0;
	setAttr -s 13 ".kox[6:12]"  1 1 1 0.0018303075074611269 1 0.0022152299085985818 
		1;
	setAttr -s 13 ".koy[6:12]"  0 0 0 -0.99999832498581132 0 0.99999754637521587 
		0;
createNode animCurveTU -n "R_Pata_Trasera_ctrl_visibility";
	rename -uid "2993F69C-4E79-920D-6D1B-14A60F8354BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 14 1 17 1
		 20 1 23 1 26 1 29 1;
	setAttr -s 13 ".kit[6:12]"  1 9 9 9 9 9 1;
	setAttr -s 13 ".kot[6:12]"  1 5 5 5 5 5 1;
	setAttr -s 13 ".kix[6:12]"  1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[6:12]"  0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[6:12]"  1 0 0 0 0 0 1;
	setAttr -s 13 ".koy[6:12]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "R_Pata_Trasera_ctrl_rotateX";
	rename -uid "A4BF0F20-433D-118D-7DAD-4F8335520A5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 0 5 45.183898698804043 7 45.183898698804043
		 9 45.183898698804043 11 67.744865405884454 13 0 14 0 17 68.985412695637223 20 68.985412695637223
		 23 68.985412695637223 26 21.8252361743262 29 0;
	setAttr -s 13 ".kit[6:12]"  1 18 18 18 18 18 1;
	setAttr -s 13 ".kot[6:12]"  1 18 18 18 18 18 1;
	setAttr -s 13 ".kix[6:12]"  1 1 1 1 1 0.2033010602763185 1;
	setAttr -s 13 ".kiy[6:12]"  0 0 0 0 0 -0.97911627444881355 0;
	setAttr -s 13 ".kox[6:12]"  1 1 1 1 1 0.20330106027631853 1;
	setAttr -s 13 ".koy[6:12]"  0 0 0 0 0 -0.97911627444881377 0;
createNode animCurveTA -n "R_Pata_Trasera_ctrl_rotateY";
	rename -uid "8F8215EA-4735-5302-9A36-CE9754C533FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 20 0 23 0 26 0 29 0;
	setAttr -s 13 ".kit[6:12]"  1 18 18 18 18 18 1;
	setAttr -s 13 ".kot[6:12]"  1 18 18 18 18 18 1;
	setAttr -s 13 ".kix[6:12]"  1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[6:12]"  0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[6:12]"  1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[6:12]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "R_Pata_Trasera_ctrl_rotateZ";
	rename -uid "979E07D7-4928-55C9-B4BB-F1B3373D7B5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 20 0 23 0 26 0 29 0;
	setAttr -s 13 ".kit[6:12]"  1 18 18 18 18 18 1;
	setAttr -s 13 ".kot[6:12]"  1 18 18 18 18 18 1;
	setAttr -s 13 ".kix[6:12]"  1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[6:12]"  0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[6:12]"  1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[6:12]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "Centro_ctrl_rotateX";
	rename -uid "34365EAD-49C9-74EC-558D-68A8C161656F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -5.8591873546794204 3 1.609624494530294
		 5 -1.1381658289058703 7 11.636879741073713 9 -14.851555675203725 11 -10.355371514941572
		 13 -5.8591873546794204 14 -21.404172500159092 17 -32.148492705165054 23 -19.67384138721879
		 26 6.0630560858518932 29 -5.8591873546794204;
	setAttr -s 12 ".kit[9:11]"  1 18 1;
	setAttr -s 12 ".kot[9:11]"  1 18 1;
	setAttr -s 12 ".kix[9:11]"  1 1 1;
	setAttr -s 12 ".kiy[9:11]"  0 0 0;
	setAttr -s 12 ".kox[9:11]"  1 1 1;
	setAttr -s 12 ".koy[9:11]"  0 0 0;
createNode animCurveTA -n "Centro_ctrl_rotateY";
	rename -uid "6AB7C05F-4CC2-C530-7ADA-E9A40D2C3FED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 23 0 26 0 29 0;
	setAttr -s 12 ".kit[9:11]"  1 18 1;
	setAttr -s 12 ".kot[9:11]"  1 18 1;
	setAttr -s 12 ".kix[9:11]"  1 1 1;
	setAttr -s 12 ".kiy[9:11]"  0 0 0;
	setAttr -s 12 ".kox[9:11]"  1 1 1;
	setAttr -s 12 ".koy[9:11]"  0 0 0;
createNode animCurveTA -n "Centro_ctrl_rotateZ";
	rename -uid "EE054C05-412B-9C2C-B1BA-B690DEB62D08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 23 0 26 0 29 0;
	setAttr -s 12 ".kit[9:11]"  1 18 1;
	setAttr -s 12 ".kot[9:11]"  1 18 1;
	setAttr -s 12 ".kix[9:11]"  1 1 1;
	setAttr -s 12 ".kiy[9:11]"  0 0 0;
	setAttr -s 12 ".kox[9:11]"  1 1 1;
	setAttr -s 12 ".koy[9:11]"  0 0 0;
createNode animCurveTU -n "Centro_ctrl_visibility";
	rename -uid "EB8A3F05-4936-0109-BB4E-7F9FF0973BE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 14 1 17 1
		 23 1 26 1 29 1;
	setAttr -s 12 ".kit[7:11]"  9 9 1 9 1;
	setAttr -s 12 ".kot[7:11]"  5 5 5 5 1;
	setAttr -s 12 ".kix[9:11]"  1 1 1;
	setAttr -s 12 ".kiy[9:11]"  0 0 0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTL -n "Centro_ctrl_translateX";
	rename -uid "0CFBE2ED-4E35-0A10-D2B5-788F138C4F4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 23 0 26 0 29 0;
	setAttr -s 12 ".kit[9:11]"  1 18 1;
	setAttr -s 12 ".kot[9:11]"  1 18 1;
	setAttr -s 12 ".kix[9:11]"  1 1 1;
	setAttr -s 12 ".kiy[9:11]"  0 0 0;
	setAttr -s 12 ".kox[9:11]"  1 1 1;
	setAttr -s 12 ".koy[9:11]"  0 0 0;
createNode animCurveTL -n "Centro_ctrl_translateY";
	rename -uid "2EE2859C-4C63-D6A4-22F1-A39324455849";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 -1.6910817712788162e-16 5 -1.6910817712788162e-16
		 7 -7.0017804360285439e-16 9 -2.991293165898762e-16 11 -9.9801430509091468e-16 13 0
		 14 0 17 -9.156735735681714e-16 23 -9.156735735681714e-16 26 -9.156735735681714e-16
		 29 -1.0286312726817041e-16;
	setAttr -s 12 ".kit[9:11]"  1 18 1;
	setAttr -s 12 ".kot[9:11]"  1 18 1;
	setAttr -s 12 ".kix[9:11]"  1 1 1;
	setAttr -s 12 ".kiy[9:11]"  0 0 0;
	setAttr -s 12 ".kox[9:11]"  1 1 1;
	setAttr -s 12 ".koy[9:11]"  0 0 0;
createNode animCurveTL -n "Centro_ctrl_translateZ";
	rename -uid "B4B96888-445F-FB97-835A-E9927588BA7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -0.29643331047218224 3 -0.55563554872296661
		 5 -0.55563554872296661 7 -0.37614748524303304 9 -0.24486240391503289 11 -0.29944819057604383
		 13 -0.29643331047218224 14 -0.29643331047218224 17 1.1254802718851311 23 1.1254802718851311
		 26 1.1254802718851311 29 -0.70480613965463423;
	setAttr -s 12 ".kit[9:11]"  1 18 1;
	setAttr -s 12 ".kot[9:11]"  1 18 1;
	setAttr -s 12 ".kix[9:11]"  1 1 1;
	setAttr -s 12 ".kiy[9:11]"  0 0 0;
	setAttr -s 12 ".kox[9:11]"  1 1 1;
	setAttr -s 12 ".koy[9:11]"  0 0 0;
createNode animCurveTL -n "L_Pata_ctrl_translateX";
	rename -uid "EEE2BEF8-45C8-CEFD-4591-828267CBB061";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -7.105427357601002e-17 3 -0.036356443634513347
		 5 -0.036356443634513486 7 -0.036356443634513631 9 -0.036356443634513701 11 -0.018178221817257027
		 13 -7.105427357601002e-17 14 -4.263256414560601e-16 17 -4.9737991503207018e-16 23 -5.6843418860808016e-16
		 26 -7.1054273576010023e-16 29 -1.4210854715202004e-16;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTL -n "L_Pata_ctrl_translateY";
	rename -uid "0C0FEA46-4D7E-90FB-D5F2-63B0E04E78A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 1.1484072200753264 3 1.1244167672755538
		 5 0.71143537590791794 7 0.058604084954094721 9 0.058604084954094721 11 0.70908143571072058
		 13 1.1484072200753264 14 1.4397769267730387 17 3.5346926932024774 23 5.1859633716927318
		 26 1.7517763160402795 29 0;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  0.0017106964340643837;
	setAttr -s 12 ".kiy[11]"  0.99999853675778472;
	setAttr -s 12 ".kox[11]"  0.0017106964340643834;
	setAttr -s 12 ".koy[11]"  0.99999853675778472;
createNode animCurveTL -n "L_Pata_ctrl_translateZ";
	rename -uid "B980E2BB-4A16-A4C9-03D0-29A463684C6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -0.60311147435054635 3 2.1941051972719827
		 5 2.1808289159641894 7 0.87448974368326804 9 -0.86915766843286579 11 -1.5681113846992361
		 13 -0.60311147435054635 14 0.64839389173904349 17 -0.00044869786745783903 23 2.5598749246600825
		 26 1.43267969536707 29 -1.0423020840897208;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  0.00056395074467557459;
	setAttr -s 12 ".kiy[11]"  0.99999984097976613;
	setAttr -s 12 ".kox[11]"  0.00056395074467557459;
	setAttr -s 12 ".koy[11]"  0.99999984097976613;
createNode animCurveTU -n "L_Pata_ctrl_visibility";
	rename -uid "7C60A0C3-48E3-AC7A-8235-08912E72909C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 14 1 17 1
		 23 1 26 1 29 1;
	setAttr -s 12 ".kit[7:11]"  9 9 9 9 1;
	setAttr -s 12 ".kot[7:11]"  5 5 5 5 1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTA -n "L_Pata_ctrl_rotateX";
	rename -uid "64C5D9DA-4898-952B-22C4-6C9530B8DCA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 122.48594209683441 3 1.4747096727275666
		 5 -60.159185193503227 7 0 9 0 11 123.53549457380231 13 122.48594209683441 14 56.111487833097726
		 17 56.111487833097726 23 0 26 0 29 0;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  0.8348191798903708;
	setAttr -s 12 ".kiy[11]"  -0.55052423823767194;
	setAttr -s 12 ".kox[11]"  0.83481917989037069;
	setAttr -s 12 ".koy[11]"  -0.55052423823767183;
createNode animCurveTA -n "L_Pata_ctrl_rotateY";
	rename -uid "006EF1EC-48E8-E568-90EA-61904B1DA455";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 23 0 26 0 29 0;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTA -n "L_Pata_ctrl_rotateZ";
	rename -uid "C668ACA1-47FC-2DFC-5D63-9F9E4C2121B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 23 0 26 0 29 0;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTA -n "Cuello_ctrl_rotateX";
	rename -uid "93D5D3AF-4B71-4B85-197D-428A541C26A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 17.361894990550518 3 17.361894990550518
		 5 17.361894990550518 7 17.361894990550518 9 17.361894990550518 11 17.361894990550518
		 13 17.361894990550518 14 17.361894990550518 17 17.361894990550518 29 17.361894990550518;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  1;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[9]"  1;
	setAttr -s 10 ".koy[9]"  0;
createNode animCurveTA -n "Cuello_ctrl_rotateY";
	rename -uid "593F6696-4E38-18F4-DC76-FB9FAFD15189";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 29 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  1;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[9]"  1;
	setAttr -s 10 ".koy[9]"  0;
createNode animCurveTA -n "Cuello_ctrl_rotateZ";
	rename -uid "C92E672F-4BDA-C14F-F198-A98C7A56C096";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 29 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  1;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[9]"  1;
	setAttr -s 10 ".koy[9]"  0;
createNode animCurveTU -n "Cuello_ctrl_visibility";
	rename -uid "6E45951B-49B6-3427-10CD-D4991EB8E578";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 14 1 17 1
		 29 1;
	setAttr -s 10 ".kit[7:9]"  9 9 1;
	setAttr -s 10 ".kot[7:9]"  5 5 1;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[9]"  1;
	setAttr -s 10 ".koy[9]"  0;
createNode animCurveTL -n "R_Pata_ctrl_translateX";
	rename -uid "84DA4449-479F-727A-203B-2B9299157E62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 -1.3520794790531765e-16 5 -1.1125401117528804e-16
		 7 -9.3793513325338483e-19 9 -3.3480234155828739e-16 11 -7.1257399273615304e-16 13 0
		 14 -7.0044692481261234e-16 17 -8.356522093299576e-16 20 -1.1141692064327032e-15 23 -1.2505776563834288e-15
		 26 -1.1795233828074188e-15 29 0;
	setAttr -s 13 ".kit[7:12]"  1 18 18 18 18 1;
	setAttr -s 13 ".kot[7:12]"  1 18 18 18 18 1;
	setAttr -s 13 ".kix[7:12]"  1 1 1 1 1 1;
	setAttr -s 13 ".kiy[7:12]"  0 0 0 0 0 0;
	setAttr -s 13 ".kox[7:12]"  1 1 1 1 1 1;
	setAttr -s 13 ".koy[7:12]"  0 0 0 0 0 0;
createNode animCurveTL -n "R_Pata_ctrl_translateY";
	rename -uid "2E9F7F2E-4449-D1F3-53F1-B6BF79E28FFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1.4380344436497785 3 -0.058007913958554459
		 5 -0.058007913958554459 7 -0.058007913958554459 9 0.80734461963446025 11 1.1375991987658869
		 13 1.4380344436497785 14 1.5947592243217605 17 3.5522625187999131 20 5.2994625541280111
		 23 5.5644644844564652 26 2.1302774288040145 29 0;
	setAttr -s 13 ".kit[7:12]"  1 18 18 18 18 1;
	setAttr -s 13 ".kot[7:12]"  1 18 18 18 18 1;
	setAttr -s 13 ".kix[7:12]"  1 0.00067481771365131087 0.001572313647355154 
		1 0.00044927948676252777 0.0027342620909453414;
	setAttr -s 13 ".kiy[7:12]"  0 0.99999977231050086 0.99999876391413323 
		0 -0.99999989907396625 0.99999626189842239;
	setAttr -s 13 ".kox[7:12]"  1 0.00067481771365131087 0.001572313647355154 
		1 0.00044927948676252782 0.0027342620909453414;
	setAttr -s 13 ".koy[7:12]"  0 0.99999977231050086 0.99999876391413323 
		0 -0.99999989907396625 0.99999626189842228;
createNode animCurveTL -n "R_Pata_ctrl_translateZ";
	rename -uid "3B97FFEB-438F-E4A3-1679-44BA3286BE5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1.8699708788638105 3 1.1678158064716464
		 5 -0.32794207459118946 7 -1.9615809525029551 9 -0.87439771976684466 11 0.60826681518470171
		 13 1.8699708788638105 14 1.1974589108968245 17 0.49527984883850018 20 1.5275773867492919
		 23 2.5598749246600834 26 2.5598749246600834 29 0;
	setAttr -s 13 ".kit[7:12]"  1 18 18 18 18 1;
	setAttr -s 13 ".kot[7:12]"  1 18 18 18 18 1;
	setAttr -s 13 ".kix[7:12]"  1 1 0.0012108903079628382 1 1 1;
	setAttr -s 13 ".kiy[7:12]"  0 0 0.99999926687206231 0 0 0;
	setAttr -s 13 ".kox[7:12]"  1 1 0.0012108903079628382 1 1 1;
	setAttr -s 13 ".koy[7:12]"  0 0 0.99999926687206231 0 0 0;
createNode animCurveTU -n "R_Pata_ctrl_visibility";
	rename -uid "C24FDC05-4F21-9B28-A62F-F0A29E25264A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 14 1 17 1
		 20 1 23 1 26 1 29 1;
	setAttr -s 13 ".kit[7:12]"  1 9 9 9 9 1;
	setAttr -s 13 ".kot[7:12]"  5 5 5 5 5 1;
	setAttr -s 13 ".kix[7:12]"  1 1 1 1 1 1;
	setAttr -s 13 ".kiy[7:12]"  0 0 0 0 0 0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTA -n "R_Pata_ctrl_rotateX";
	rename -uid "A73BD9D9-4B4F-125F-7C43-199DA9DD0FFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 0 5 0 7 0 9 132.03536854616883 11 39.612900603490871
		 13 0 14 56.111487833097726 17 56.111487833097726 20 28.055743916548863 23 0 26 0
		 29 0;
	setAttr -s 13 ".kit[7:12]"  1 18 18 18 18 1;
	setAttr -s 13 ".kot[7:12]"  1 18 18 18 18 1;
	setAttr -s 13 ".kix[7:12]"  1 1 0.24734446089420609 1 1 1;
	setAttr -s 13 ".kiy[7:12]"  0 0 -0.9689276121903817 0 0 0;
	setAttr -s 13 ".kox[7:12]"  1 1 0.24734446089420609 1 1 1;
	setAttr -s 13 ".koy[7:12]"  0 0 -0.9689276121903817 0 0 0;
createNode animCurveTA -n "R_Pata_ctrl_rotateY";
	rename -uid "0E06869F-44A3-D547-B528-FDAC8142212F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 20 0 23 0 26 0 29 0;
	setAttr -s 13 ".kit[7:12]"  1 18 18 18 18 1;
	setAttr -s 13 ".kot[7:12]"  1 18 18 18 18 1;
	setAttr -s 13 ".kix[7:12]"  1 1 1 1 1 1;
	setAttr -s 13 ".kiy[7:12]"  0 0 0 0 0 0;
	setAttr -s 13 ".kox[7:12]"  1 1 1 1 1 1;
	setAttr -s 13 ".koy[7:12]"  0 0 0 0 0 0;
createNode animCurveTA -n "R_Pata_ctrl_rotateZ";
	rename -uid "D0978BF8-46CD-78F2-0D44-649B69A6CDD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 20 0 23 0 26 0 29 0;
	setAttr -s 13 ".kit[7:12]"  1 18 18 18 18 1;
	setAttr -s 13 ".kot[7:12]"  1 18 18 18 18 1;
	setAttr -s 13 ".kix[7:12]"  1 1 1 1 1 1;
	setAttr -s 13 ".kiy[7:12]"  0 0 0 0 0 0;
	setAttr -s 13 ".kox[7:12]"  1 1 1 1 1 1;
	setAttr -s 13 ".koy[7:12]"  0 0 0 0 0 0;
createNode animCurveTA -n "L_Clavicula_ctrl_rotateX";
	rename -uid "02784399-46D8-EBF1-1D19-FBBF20115BB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -21.050261847517849 3 -7.2521756938722746
		 5 -43.790156507384552 7 0 9 0 11 -10.525130923758923 13 -21.050261847517849 14 -21.050261847517849
		 17 -4.6098089292747417 20 -58.746879035069121 29 -21.050261847517849;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[10]"  1;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[10]"  1;
	setAttr -s 11 ".koy[10]"  0;
createNode animCurveTA -n "L_Clavicula_ctrl_rotateY";
	rename -uid "1AF23CC5-4C73-F369-3149-79B999BC0DC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0 20 0
		 29 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  1;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[9]"  1;
	setAttr -s 10 ".koy[9]"  0;
createNode animCurveTA -n "L_Clavicula_ctrl_rotateZ";
	rename -uid "6413FEA3-45A2-558F-A4CE-B58EB86B2249";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0 20 0
		 29 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  1;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[9]"  1;
	setAttr -s 10 ".koy[9]"  0;
createNode animCurveTU -n "L_Clavicula_ctrl_visibility";
	rename -uid "C38379E4-4D37-7EC5-BAB4-BDA588EBF8FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 5 1 7 1 9 1 11 1 13 1 14 1 17 1 20 1
		 29 1;
	setAttr -s 10 ".kit[6:9]"  9 9 9 1;
	setAttr -s 10 ".kot[6:9]"  5 5 5 1;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[9]"  1;
	setAttr -s 10 ".koy[9]"  0;
createNode animCurveTU -n "R_Clavicula_ctrl_visibility";
	rename -uid "DB1B5156-4B05-2478-12E1-8BACA61AEFF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 14 1 17 1
		 20 1 29 1;
	setAttr -s 11 ".kit[7:10]"  9 9 9 1;
	setAttr -s 11 ".kot[7:10]"  5 5 5 1;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[10]"  1;
	setAttr -s 11 ".koy[10]"  0;
createNode animCurveTA -n "R_Clavicula_ctrl_rotateX";
	rename -uid "E6B5376E-4005-602D-358B-AE9D665E6C5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 -27.702269693900483 5 -55.404539387800945
		 7 0 9 0 11 0 13 0 14 0 17 16.440452918243118 20 -37.696617187551347 29 0;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[10]"  1;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[10]"  1;
	setAttr -s 11 ".koy[10]"  0;
createNode animCurveTA -n "R_Clavicula_ctrl_rotateY";
	rename -uid "B39824D5-47FA-CA13-B95E-D6BFBDE08BC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 20 0 29 0;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[10]"  1;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[10]"  1;
	setAttr -s 11 ".koy[10]"  0;
createNode animCurveTA -n "R_Clavicula_ctrl_rotateZ";
	rename -uid "CCF158B5-42D4-48EF-C1AD-4BBFF4C421EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 17 0
		 20 0 29 0;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[10]"  1;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[10]"  1;
	setAttr -s 11 ".koy[10]"  0;
createNode animCurveTU -n "L_Pole_Frontal_ctrl_visibility";
	rename -uid "445DCCE8-4ECE-E50D-23FE-0294AF63BA5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 29 1;
	setAttr -s 3 ".kit[1:2]"  9 1;
	setAttr -s 3 ".kot[1:2]"  5 5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Pole_Frontal_ctrl_translateX";
	rename -uid "94972357-4509-2102-C950-9F97DB5955A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Pole_Frontal_ctrl_translateY";
	rename -uid "427B89FF-4529-5132-5AA0-9E9A6249FD0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Pole_Frontal_ctrl_translateZ";
	rename -uid "3CBD733A-45D8-1531-F1E5-439BFD7A0517";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Pole_Frontal_ctrl_visibility";
	rename -uid "6E3B10FB-4F54-39F9-F16F-7D9794DCB76C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 29 1;
	setAttr -s 3 ".kit[1:2]"  9 1;
	setAttr -s 3 ".kot[1:2]"  5 5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Pole_Frontal_ctrl_translateX";
	rename -uid "3940EB82-49D3-2B35-655F-709A0E10532A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Pole_Frontal_ctrl_translateY";
	rename -uid "C0A4E1E3-47BC-3947-969C-D2A55459C896";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Pole_Frontal_ctrl_translateZ";
	rename -uid "75A6E9E4-4BB3-D8B4-124E-92A836220C53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Columna_ctrl_3_visibility";
	rename -uid "6ED501C0-474F-BD5B-E418-8F8F07A3E203";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 14 1 23 1
		 26 1 29 1;
	setAttr -s 11 ".kit[0:10]"  1 18 18 18 18 18 18 9 
		9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 18 18 18 18 18 18 5 
		5 5 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0 0 0 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Columna_ctrl_3_rotateX";
	rename -uid "C1F46044-4BEB-7DF8-9E16-36B953C30F14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -2.5777077439212293 3 3.6216208748649623
		 5 21.399565362843706 7 21.399565362843706 9 24.183931640891011 11 21.399565362843706
		 13 -2.5777077439212293 14 -2.5777077439212293 20 13.622459832317118 23 9.4224163866256934
		 26 2.0723403566657055 29 19.821978215728858;
	setAttr -s 12 ".kit[0:11]"  1 18 18 18 18 18 18 18 
		18 18 18 1;
	setAttr -s 12 ".kot[0:11]"  1 18 18 18 18 18 18 18 
		18 18 18 1;
	setAttr -s 12 ".kix[0:11]"  1 0.37000031342617079 1 1 1 0.49625246135989654 
		1 1 1 0.77845151740577145 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0.92903162920566673 0 0 0 -0.86817826199130577 
		0 0 0 -0.62770473556334738 0 0;
	setAttr -s 12 ".kox[0:11]"  1 0.37000031342617079 1 1 1 0.49625246135989654 
		1 1 1 0.77845151740577145 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0.92903162920566673 0 0 0 -0.86817826199130577 
		0 0 0 -0.62770473556334738 0 0;
createNode animCurveTA -n "Columna_ctrl_3_rotateY";
	rename -uid "04A8F0EA-4900-07B4-7D9C-5DB09E89B118";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 23 0
		 26 0 29 0;
	setAttr -s 11 ".kit[0:10]"  1 18 18 18 18 18 18 18 
		18 18 1;
	setAttr -s 11 ".kot[0:10]"  1 18 18 18 18 18 18 18 
		18 18 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Columna_ctrl_3_rotateZ";
	rename -uid "06E183D8-4B1E-25D5-D5D8-BC9BC187A9AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 23 0
		 26 0 29 0;
	setAttr -s 11 ".kit[0:10]"  1 18 18 18 18 18 18 18 
		18 18 1;
	setAttr -s 11 ".kot[0:10]"  1 18 18 18 18 18 18 18 
		18 18 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Columna_ctrl_2_visibility";
	rename -uid "57E67184-478D-49BB-D1EE-26B631DA73DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 5 1 7 1 11 1 13 1 14 1 29 1;
	setAttr -s 8 ".kit[6:7]"  9 1;
	setAttr -s 8 ".kot[6:7]"  5 1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTA -n "Columna_ctrl_2_rotateX";
	rename -uid "3981384F-46C0-F037-1E15-4A90CAB2B2FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 5.9348878329159849 5 0 7 0 9 22.997771835399202
		 11 6.2895873106430509 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "Columna_ctrl_2_rotateY";
	rename -uid "2948FE7A-4509-EE0E-200D-63A4A3FB64F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 3 0 5 0 7 0 11 0 13 0 14 0 29 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTA -n "Columna_ctrl_2_rotateZ";
	rename -uid "84B7DE54-4CEC-EE43-5463-0EB493463E6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 3 0 5 0 7 0 11 0 13 0 14 0 29 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTU -n "Columna_ctrl_1_visibility";
	rename -uid "29A53729-4923-5F24-6E4B-0780B050A29E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 29 1;
	setAttr -s 3 ".kit[1:2]"  9 1;
	setAttr -s 3 ".kot[1:2]"  5 5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "Columna_ctrl_1_rotateX";
	rename -uid "4C223684-455B-EEE0-7903-78892659431D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Columna_ctrl_1_rotateY";
	rename -uid "A4DF5A78-48BE-9B6B-879F-F69B414E82A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Columna_ctrl_1_rotateZ";
	rename -uid "5336936F-459A-E19F-AEC9-9E88F1BCE88E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Mandibula_ctrl_rotateX";
	rename -uid "AF4C7CF7-4FC6-DD0A-28BE-A599ACBD09FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -11.928955983147752 14 -11.928955983147752
		 29 -11.928955983147752;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Mandibula_ctrl_rotateY";
	rename -uid "DDA5B8B7-4B0A-1AD6-20BB-B89E1995CB09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Mandibula_ctrl_rotateZ";
	rename -uid "B4DA4C47-4609-E6BD-6C4D-B186C524B6E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Mandibula_ctrl_visibility";
	rename -uid "B4025861-4B07-A50D-1242-0EAC688FABF5";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 14 1 29 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "Cabeza_ctrl_visibility";
	rename -uid "08A38858-44D8-8EB3-62EF-DA9BA16D3DA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 14 1 29 1;
	setAttr -s 9 ".kit[7:8]"  9 1;
	setAttr -s 9 ".kot[7:8]"  5 1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "Cabeza_ctrl_rotateX";
	rename -uid "0D3D2844-4426-113D-CC14-1B8A5BA1734C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 -20.740059754012485 5 -34.800138617858138
		 7 -49.131324430668172 9 -49.131324430668172 11 -36.851838451066897 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "Cabeza_ctrl_rotateY";
	rename -uid "6178537C-4CCD-2FBB-7D9C-1185F69CB4FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "Cabeza_ctrl_rotateZ";
	rename -uid "3F8C37D2-483E-003F-89DC-4E87002E2F38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTU -n "L_Pole_Trasera_ctrl_visibility";
	rename -uid "1E0A6D55-48BA-6EDA-1A19-A49C4965B657";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 29 1;
	setAttr -s 3 ".kit[1:2]"  9 1;
	setAttr -s 3 ".kot[1:2]"  5 5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Pole_Trasera_ctrl_translateX";
	rename -uid "CFAA989E-4534-A304-DAEC-A290B92A49D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Pole_Trasera_ctrl_translateY";
	rename -uid "CD32F093-4F17-F055-E0E9-BC952D284FC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Pole_Trasera_ctrl_translateZ";
	rename -uid "8E623F49-4988-E648-8BD4-AC9DC3E5BFF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Pole_Trasera_ctrl_visibility";
	rename -uid "7E09F789-45C7-DFF6-4CB1-91ACCA8CCAA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 29 1;
	setAttr -s 3 ".kit[1:2]"  9 1;
	setAttr -s 3 ".kot[1:2]"  5 5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Pole_Trasera_ctrl_translateX";
	rename -uid "074BB0FA-4C6F-8711-4487-9CB9D911AA6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Pole_Trasera_ctrl_translateY";
	rename -uid "161D32A1-449C-1B24-D223-BE98ED5AE52B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Pole_Trasera_ctrl_translateZ";
	rename -uid "FD418BAE-4663-8993-03BB-F69A0BB061A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Cadera_ctrl_visibility";
	rename -uid "618CF63D-4C75-EFC6-E17C-0CBA59832EA0";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 29 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "Cadera_ctrl_rotateX";
	rename -uid "1B540917-41A4-9D56-A54D-AAB0B87F966E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Cadera_ctrl_rotateY";
	rename -uid "388227E5-4D55-503D-C81C-2C9CE445F9B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Cadera_ctrl_rotateZ";
	rename -uid "4C4E1B80-4D20-F47B-ED00-50932011EF02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Cola_jnt_3Ctrl_visibility";
	rename -uid "58C22AC6-4F00-C5BD-9EE4-F5BE2A4F6497";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 14 1 29 1;
	setAttr -s 9 ".kit[0:8]"  9 9 9 9 9 9 9 9 
		1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "Cola_jnt_3Ctrl_rotateX";
	rename -uid "FCBB2137-4825-77FE-A6F0-41B2503DB2F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "Cola_jnt_3Ctrl_rotateY";
	rename -uid "8937DD68-4967-A304-F5C5-FE8FCE76F04A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "Cola_jnt_3Ctrl_rotateZ";
	rename -uid "BA06D780-4856-E64E-5CA2-C2823FC71B08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTU -n "Cola_jnt_2Ctrl_visibility";
	rename -uid "FE6B8BBB-4811-3780-DA89-5D9CDB04F01B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 14 1 29 1;
	setAttr -s 9 ".kit[0:8]"  9 9 9 9 9 9 9 9 
		1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "Cola_jnt_2Ctrl_rotateX";
	rename -uid "CE62536D-4995-7699-6B13-47AB857D4F9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "Cola_jnt_2Ctrl_rotateY";
	rename -uid "A7D0FDA0-4049-8E45-A272-A1A18F81A4C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "Cola_jnt_2Ctrl_rotateZ";
	rename -uid "38FF302C-4314-C4B9-EE15-8AA76438057B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTU -n "Cola_jnt_4Ctrl_visibility";
	rename -uid "D1D0DE68-4B6E-A9E1-72D3-8CB8F59F903B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 14 1 29 1;
	setAttr -s 9 ".kit[0:8]"  9 9 9 9 9 9 9 9 
		1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "Cola_jnt_4Ctrl_rotateX";
	rename -uid "C06095FC-44F4-BF31-CC92-E2BE52262E8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "Cola_jnt_4Ctrl_rotateY";
	rename -uid "1F40EBDF-4D1A-5C22-5848-5B80779C2C6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "Cola_jnt_4Ctrl_rotateZ";
	rename -uid "2631B1A2-4225-6B8F-486A-F08EB09C7401";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTU -n "Cola_jnt_5Ctrl_visibility";
	rename -uid "E77FFC4A-4C6F-18F0-D77D-3BA4C9CCCFF8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 14 1 29 1;
	setAttr -s 9 ".kit[0:8]"  9 9 9 9 9 9 9 9 
		1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "Cola_jnt_5Ctrl_rotateX";
	rename -uid "93AA1880-46C4-72D6-F806-DEA83264E742";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "Cola_jnt_5Ctrl_rotateY";
	rename -uid "62F640A9-4383-BB59-8DDF-46BD79355EA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "Cola_jnt_5Ctrl_rotateZ";
	rename -uid "319CB402-4DF2-E64C-85A8-A2A1C5C3A502";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 14 0 29 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode standardSurface -n "standardSurface2";
	rename -uid "747C8395-4F26-CCC9-8FC1-C88CB793363C";
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
createNode shadingEngine -n "PanSG";
	rename -uid "6B360E2E-46EC-DB20-D911-53B91A437E56";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "2DEFCEBB-4992-0429-31CD-8CB3310174A4";
createNode animCurveTL -n "Pan_translateX";
	rename -uid "DE51EB8F-4A01-C05B-2C1A-D4BD64F6591E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0.42587905133884135 1 0.42587905133884135
		 3 0.42587905133884135 5 0.42587905133884135 13 0.42587905133884135 14 0.42587905133884135
		 15 0.42587905133884135 17 0.42587905133884135 18 0.42587905133884135 19 0.42587905133884135
		 20 0.42587905133884135 21 0.42587905133884135 22 0.42587905133884135 23 0.42587905133884135
		 25 0.42587905133884135 26 0.42587905133884135 27 0.42587905133884135 29 0.42587905133884135;
	setAttr -s 18 ".kit[1:17]"  1 18 18 1 18 18 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 18 1 18 18 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Pan_translateY";
	rename -uid "E10B4A40-4B03-3919-70F0-B798FD012A8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 4.3259752756494629 1 4.3259752756494629
		 3 3.0634516004952603 5 3.2409977959481444 6 2.9530415717067728 7 2.5396668215927702
		 9 3.7558890150249282 13 4.3259752756494629 14 6.0087164893147316 15 6.8023304412650818
		 17 8.1098528412235957 18 7.687395346204223 19 7.438753555682049 20 6.8802115298204551
		 21 6.597739860573129 22 6.4164428428891629 23 6.4681142559381763 25 4.8251616083271323
		 26 4.2281418694259401 27 3.7878297313547296 29 2.664411511070929;
	setAttr -s 21 ".kit[1:20]"  1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[1:20]"  1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[1:20]"  1 1 1 0.0011882160856008625 1 0.0013995329563355678 
		1 0.00033651606107218418 0.00059491606894581609 1 0.0010165560822830871 0.0010323954374685744 
		0.00099086724638237445 0.0017968698868770204 1 1 0.00055804250663739449 0.00080334277094197754 
		0.00079937029677184667 1;
	setAttr -s 21 ".kiy[1:20]"  0 0 0 -0.99999929407101784 0 0.99999902065327251 
		0 0.99999994337846865 0.99999982303741974 0 -0.99999948330673227 -0.99999946707968834 
		-0.99999950909092949 -0.99999838562800181 0 0 -0.99999984429426825 -0.99999967732014416 
		-0.99999968050351329 0;
	setAttr -s 21 ".kox[1:20]"  1 1 1 0.0011882160856008623 1 0.0013995329563355678 
		1 0.00033651606107218418 0.00059491606894581598 1 0.0010165560822830871 0.0010323954374685744 
		0.00099086724638237445 0.0017968698868770204 1 1 0.00055804250663739449 0.00080334277094197754 
		0.00079937029677184677 1;
	setAttr -s 21 ".koy[1:20]"  0 0 0 -0.99999929407101784 0 0.99999902065327251 
		0 0.99999994337846865 0.99999982303741974 0 -0.99999948330673227 -0.99999946707968834 
		-0.99999950909092949 -0.99999838562800181 0 0 -0.99999984429426825 -0.99999967732014416 
		-0.99999968050351329 0;
createNode animCurveTL -n "Pan_translateZ";
	rename -uid "1AB08103-4C17-C312-A1E8-5E9537C5C9B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 4.5919195454284436 1 4.5919195454284436
		 3 4.8364202464144777 5 4.945113165029678 6 4.9610102445950028 9 4.9897550737168332
		 13 4.5919195454284436 14 4.1458892305910453 15 3.9855462468472984 17 3.8467722689341661
		 18 4.1083190527132256 19 4.1083190527132256 20 4.2505843395517466 21 4.2924509463971958
		 22 4.3174100207440649 23 4.3540113940926464 25 4.5369959437588356 26 4.5812523606491213
		 27 4.5812523606491213 29 4.5812523606491213;
	setAttr -s 20 ".kit[1:19]"  1 18 18 18 18 1 18 18 
		18 1 18 18 18 18 18 18 18 18 18;
	setAttr -s 20 ".kot[1:19]"  1 18 18 18 18 1 18 18 
		18 1 18 18 18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[1:19]"  1 0.004718794503121999 0.010032403170197598 
		0.037308134836546075 1 1 0.0013742896468828673 0.0041789308047400463 1 0.0030954845141422018 
		1 0.004525695046553784 0.012469286228332458 0.013535590181887901 0.0056924402541474618 
		0.0055006854962624573 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0.99998886642724039 0.99994967417697123 
		0.99930380919669182 0 0 -0.99999905566353731 -0.99999126823054263 0 0.99999520897633443 
		0 0.99998975898973352 0.99992225542836877 0.99990838970299079 0.9999837979307229 
		0.99998487111509404 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 0.004718794503121999 0.0100324031701976 
		0.037308134836546075 1 1 0.0013742896468828673 0.0041789308047400463 1 0.0030954845141422018 
		1 0.0045256950465537849 0.012469286228332458 0.013535590181887901 0.0056924402541474618 
		0.0055006854962624573 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0.99998886642724039 0.99994967417697123 
		0.99930380919669171 0 0 -0.99999905566353731 -0.99999126823054263 0 0.99999520897633443 
		0 0.99998975898973375 0.99992225542836877 0.99990838970299079 0.9999837979307229 
		0.99998487111509404 0 0 0;
createNode animCurveTU -n "Pan_visibility";
	rename -uid "87F928DD-46B9-222D-D13F-E0A1C6186A51";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 1 1 3 1 5 1 13 1 14 1 15 1 17 1 18 1
		 19 1 20 1 21 1 22 1 23 1 25 1 26 1 27 1 29 1;
	setAttr -s 18 ".kit[0:17]"  9 1 9 9 1 9 9 9 
		1 9 9 9 9 9 9 9 9 9;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Pan_rotateX";
	rename -uid "D1E46878-4C78-32F9-D1CB-1E91A4497E28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 0 3 0 5 0 13 0 14 0 15 0 17 0 18 0
		 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 29 0;
	setAttr -s 18 ".kit[1:17]"  1 18 18 1 18 18 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 18 1 18 18 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Pan_rotateY";
	rename -uid "313DE988-4AD3-E7B8-A63D-12A0897938D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 89.999999999999972 1 89.999999999999972
		 3 89.999999999999972 5 89.999999999999972 13 89.999999999999972 14 89.999999999999972
		 15 89.999999999999972 17 89.999999999999972 18 89.999999999999972 19 89.999999999999972
		 20 89.999999999999972 21 89.999999999999972 22 89.999999999999972 23 89.999999999999972
		 25 89.999999999999972 26 89.999999999999972 27 89.999999999999972 29 89.999999999999972;
	setAttr -s 18 ".kit[1:17]"  1 18 18 1 18 18 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 18 1 18 18 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Pan_rotateZ";
	rename -uid "1A6B3970-4AC7-ED16-AA23-DE85EDFC044D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 0 3 0 5 0 13 0 14 0 15 0 17 0 18 0
		 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 29 0;
	setAttr -s 18 ".kit[1:17]"  1 18 18 1 18 18 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 18 1 18 18 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Pan_scaleX";
	rename -uid "FC53C41D-41AF-C6F9-2015-B7974A5CB118";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0.33018695205745052 1 0.33018695205745052
		 3 0.33018695205745052 5 0.33018695205745052 13 0.33018695205745052 14 0.33018695205745052
		 15 0.33018695205745052 17 0.33018695205745052 18 0.33018695205745052 19 0.33018695205745052
		 20 0.33018695205745052 21 0.33018695205745052 22 0.33018695205745052 23 0.33018695205745052
		 25 0.33018695205745052 26 0.33018695205745052 27 0.33018695205745052 29 0.33018695205745052;
	setAttr -s 18 ".kit[1:17]"  1 18 18 1 18 18 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 18 1 18 18 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Pan_scaleY";
	rename -uid "98EEE24C-43F9-04BE-4286-DDBEE9E2FA05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0.33018695205745052 1 0.33018695205745052
		 3 0.33018695205745052 5 0.33018695205745052 13 0.33018695205745052 14 0.33018695205745052
		 15 0.33018695205745052 17 0.33018695205745052 18 0.33018695205745052 19 0.33018695205745052
		 20 0.33018695205745052 21 0.33018695205745052 22 0.33018695205745052 23 0.33018695205745052
		 25 0.33018695205745052 26 0.33018695205745052 27 0.33018695205745052 29 0.33018695205745052;
	setAttr -s 18 ".kit[1:17]"  1 18 18 1 18 18 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 18 1 18 18 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Pan_scaleZ";
	rename -uid "A6129FA1-4739-CE01-EE60-D0A17C3AEB2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0.33018695205745052 1 0.33018695205745052
		 3 0.33018695205745052 5 0.33018695205745052 13 0.33018695205745052 14 0.33018695205745052
		 15 0.33018695205745052 17 0.33018695205745052 18 0.33018695205745052 19 0.33018695205745052
		 20 0.33018695205745052 21 0.33018695205745052 22 0.33018695205745052 23 0.33018695205745052
		 25 0.33018695205745052 26 0.33018695205745052 27 0.33018695205745052 29 0.33018695205745052;
	setAttr -s 18 ".kit[1:17]"  1 18 18 1 18 18 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 18 1 18 18 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "840E4838-47C1-1485-0E7C-E09ADA8B67BA";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ebm" yes;
	setAttr ".ich" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "8D179635-471C-B331-2836-0C94F3E3B4FD";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".eti" 2;
	setAttr -s 2 ".ac";
	setAttr ".ac[0].acn" -type "string" "Run";
	setAttr ".ac[0].acs" 1;
	setAttr ".ac[0].ace" 12;
	setAttr ".ac[1].acn" -type "string" "Jump";
	setAttr ".ac[1].acs" 14;
	setAttr ".ac[1].ace" 29;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "C:/Users/Ryzen/Documents/UNI/El Panadero Sin el Pan/Assets/3D MODELS/Perro/FBX";
	setAttr ".exf" -type "string" "Perro";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "DCD4422E-4F5F-E8F9-D357-B3BF15D5A464";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "6EA31CE8-43C8-0B8C-7F2A-5EB4A4CA1792";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".dli" 1;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Centro_ctrl_translateY.o" "Perro_BindSkin2RN.phl[1]";
connectAttr "Centro_ctrl_translateZ.o" "Perro_BindSkin2RN.phl[2]";
connectAttr "Centro_ctrl_translateX.o" "Perro_BindSkin2RN.phl[3]";
connectAttr "Centro_ctrl_rotateX.o" "Perro_BindSkin2RN.phl[4]";
connectAttr "Centro_ctrl_rotateY.o" "Perro_BindSkin2RN.phl[5]";
connectAttr "Centro_ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[6]";
connectAttr "Centro_ctrl_visibility.o" "Perro_BindSkin2RN.phl[7]";
connectAttr "Columna_ctrl_1_rotateX.o" "Perro_BindSkin2RN.phl[8]";
connectAttr "Columna_ctrl_1_rotateY.o" "Perro_BindSkin2RN.phl[9]";
connectAttr "Columna_ctrl_1_rotateZ.o" "Perro_BindSkin2RN.phl[10]";
connectAttr "Columna_ctrl_1_visibility.o" "Perro_BindSkin2RN.phl[11]";
connectAttr "Columna_ctrl_2_rotateX.o" "Perro_BindSkin2RN.phl[12]";
connectAttr "Columna_ctrl_2_rotateY.o" "Perro_BindSkin2RN.phl[13]";
connectAttr "Columna_ctrl_2_rotateZ.o" "Perro_BindSkin2RN.phl[14]";
connectAttr "Columna_ctrl_2_visibility.o" "Perro_BindSkin2RN.phl[15]";
connectAttr "Columna_ctrl_3_rotateX.o" "Perro_BindSkin2RN.phl[16]";
connectAttr "Columna_ctrl_3_rotateY.o" "Perro_BindSkin2RN.phl[17]";
connectAttr "Columna_ctrl_3_rotateZ.o" "Perro_BindSkin2RN.phl[18]";
connectAttr "Columna_ctrl_3_visibility.o" "Perro_BindSkin2RN.phl[19]";
connectAttr "Cuello_ctrl_rotateX.o" "Perro_BindSkin2RN.phl[20]";
connectAttr "Cuello_ctrl_rotateY.o" "Perro_BindSkin2RN.phl[21]";
connectAttr "Cuello_ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[22]";
connectAttr "Cuello_ctrl_visibility.o" "Perro_BindSkin2RN.phl[23]";
connectAttr "Cabeza_ctrl_rotateX.o" "Perro_BindSkin2RN.phl[24]";
connectAttr "Cabeza_ctrl_rotateY.o" "Perro_BindSkin2RN.phl[25]";
connectAttr "Cabeza_ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[26]";
connectAttr "Cabeza_ctrl_visibility.o" "Perro_BindSkin2RN.phl[27]";
connectAttr "Mandibula_ctrl_rotateX.o" "Perro_BindSkin2RN.phl[28]";
connectAttr "Mandibula_ctrl_rotateY.o" "Perro_BindSkin2RN.phl[29]";
connectAttr "Mandibula_ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[30]";
connectAttr "Mandibula_ctrl_visibility.o" "Perro_BindSkin2RN.phl[31]";
connectAttr "L_Clavicula_ctrl_rotateX.o" "Perro_BindSkin2RN.phl[32]";
connectAttr "L_Clavicula_ctrl_rotateY.o" "Perro_BindSkin2RN.phl[33]";
connectAttr "L_Clavicula_ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[34]";
connectAttr "L_Clavicula_ctrl_visibility.o" "Perro_BindSkin2RN.phl[35]";
connectAttr "R_Clavicula_ctrl_rotateX.o" "Perro_BindSkin2RN.phl[36]";
connectAttr "R_Clavicula_ctrl_rotateY.o" "Perro_BindSkin2RN.phl[37]";
connectAttr "R_Clavicula_ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[38]";
connectAttr "R_Clavicula_ctrl_visibility.o" "Perro_BindSkin2RN.phl[39]";
connectAttr "Cadera_ctrl_rotateX.o" "Perro_BindSkin2RN.phl[40]";
connectAttr "Cadera_ctrl_rotateY.o" "Perro_BindSkin2RN.phl[41]";
connectAttr "Cadera_ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[42]";
connectAttr "Cadera_ctrl_visibility.o" "Perro_BindSkin2RN.phl[43]";
connectAttr "Cola_jnt_1Ctrl_rotateX.o" "Perro_BindSkin2RN.phl[44]";
connectAttr "Cola_jnt_1Ctrl_rotateY.o" "Perro_BindSkin2RN.phl[45]";
connectAttr "Cola_jnt_1Ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[46]";
connectAttr "Cola_jnt_1Ctrl_visibility.o" "Perro_BindSkin2RN.phl[47]";
connectAttr "Cola_jnt_2Ctrl_rotateX.o" "Perro_BindSkin2RN.phl[48]";
connectAttr "Cola_jnt_2Ctrl_rotateY.o" "Perro_BindSkin2RN.phl[49]";
connectAttr "Cola_jnt_2Ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[50]";
connectAttr "Cola_jnt_2Ctrl_visibility.o" "Perro_BindSkin2RN.phl[51]";
connectAttr "Cola_jnt_3Ctrl_rotateX.o" "Perro_BindSkin2RN.phl[52]";
connectAttr "Cola_jnt_3Ctrl_rotateY.o" "Perro_BindSkin2RN.phl[53]";
connectAttr "Cola_jnt_3Ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[54]";
connectAttr "Cola_jnt_3Ctrl_visibility.o" "Perro_BindSkin2RN.phl[55]";
connectAttr "Cola_jnt_4Ctrl_rotateX.o" "Perro_BindSkin2RN.phl[56]";
connectAttr "Cola_jnt_4Ctrl_rotateY.o" "Perro_BindSkin2RN.phl[57]";
connectAttr "Cola_jnt_4Ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[58]";
connectAttr "Cola_jnt_4Ctrl_visibility.o" "Perro_BindSkin2RN.phl[59]";
connectAttr "Cola_jnt_5Ctrl_rotateX.o" "Perro_BindSkin2RN.phl[60]";
connectAttr "Cola_jnt_5Ctrl_rotateY.o" "Perro_BindSkin2RN.phl[61]";
connectAttr "Cola_jnt_5Ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[62]";
connectAttr "Cola_jnt_5Ctrl_visibility.o" "Perro_BindSkin2RN.phl[63]";
connectAttr "L_Pole_Frontal_ctrl_translateX.o" "Perro_BindSkin2RN.phl[64]";
connectAttr "L_Pole_Frontal_ctrl_translateY.o" "Perro_BindSkin2RN.phl[65]";
connectAttr "L_Pole_Frontal_ctrl_translateZ.o" "Perro_BindSkin2RN.phl[66]";
connectAttr "L_Pole_Frontal_ctrl_visibility.o" "Perro_BindSkin2RN.phl[67]";
connectAttr "R_Pole_Frontal_ctrl_translateX.o" "Perro_BindSkin2RN.phl[68]";
connectAttr "R_Pole_Frontal_ctrl_translateY.o" "Perro_BindSkin2RN.phl[69]";
connectAttr "R_Pole_Frontal_ctrl_translateZ.o" "Perro_BindSkin2RN.phl[70]";
connectAttr "R_Pole_Frontal_ctrl_visibility.o" "Perro_BindSkin2RN.phl[71]";
connectAttr "L_Pole_Trasera_ctrl_translateX.o" "Perro_BindSkin2RN.phl[72]";
connectAttr "L_Pole_Trasera_ctrl_translateY.o" "Perro_BindSkin2RN.phl[73]";
connectAttr "L_Pole_Trasera_ctrl_translateZ.o" "Perro_BindSkin2RN.phl[74]";
connectAttr "L_Pole_Trasera_ctrl_visibility.o" "Perro_BindSkin2RN.phl[75]";
connectAttr "R_Pole_Trasera_ctrl_translateX.o" "Perro_BindSkin2RN.phl[76]";
connectAttr "R_Pole_Trasera_ctrl_translateY.o" "Perro_BindSkin2RN.phl[77]";
connectAttr "R_Pole_Trasera_ctrl_translateZ.o" "Perro_BindSkin2RN.phl[78]";
connectAttr "R_Pole_Trasera_ctrl_visibility.o" "Perro_BindSkin2RN.phl[79]";
connectAttr "L_Pata_ctrl_translateX.o" "Perro_BindSkin2RN.phl[80]";
connectAttr "L_Pata_ctrl_translateY.o" "Perro_BindSkin2RN.phl[81]";
connectAttr "L_Pata_ctrl_translateZ.o" "Perro_BindSkin2RN.phl[82]";
connectAttr "L_Pata_ctrl_visibility.o" "Perro_BindSkin2RN.phl[83]";
connectAttr "L_Pata_ctrl_rotateX.o" "Perro_BindSkin2RN.phl[84]";
connectAttr "L_Pata_ctrl_rotateY.o" "Perro_BindSkin2RN.phl[85]";
connectAttr "L_Pata_ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[86]";
connectAttr "R_Pata_ctrl_translateX.o" "Perro_BindSkin2RN.phl[87]";
connectAttr "R_Pata_ctrl_translateZ.o" "Perro_BindSkin2RN.phl[88]";
connectAttr "R_Pata_ctrl_translateY.o" "Perro_BindSkin2RN.phl[89]";
connectAttr "R_Pata_ctrl_rotateX.o" "Perro_BindSkin2RN.phl[90]";
connectAttr "R_Pata_ctrl_rotateY.o" "Perro_BindSkin2RN.phl[91]";
connectAttr "R_Pata_ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[92]";
connectAttr "R_Pata_ctrl_visibility.o" "Perro_BindSkin2RN.phl[93]";
connectAttr "L_Pata_Trasera_ctrl_translateY.o" "Perro_BindSkin2RN.phl[94]";
connectAttr "L_Pata_Trasera_ctrl_translateZ.o" "Perro_BindSkin2RN.phl[95]";
connectAttr "L_Pata_Trasera_ctrl_translateX.o" "Perro_BindSkin2RN.phl[96]";
connectAttr "L_Pata_Trasera_ctrl_visibility.o" "Perro_BindSkin2RN.phl[97]";
connectAttr "L_Pata_Trasera_ctrl_rotateX.o" "Perro_BindSkin2RN.phl[98]";
connectAttr "L_Pata_Trasera_ctrl_rotateY.o" "Perro_BindSkin2RN.phl[99]";
connectAttr "L_Pata_Trasera_ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[100]";
connectAttr "R_Pata_Trasera_ctrl_translateX.o" "Perro_BindSkin2RN.phl[101]";
connectAttr "R_Pata_Trasera_ctrl_translateY.o" "Perro_BindSkin2RN.phl[102]";
connectAttr "R_Pata_Trasera_ctrl_translateZ.o" "Perro_BindSkin2RN.phl[103]";
connectAttr "R_Pata_Trasera_ctrl_visibility.o" "Perro_BindSkin2RN.phl[104]";
connectAttr "R_Pata_Trasera_ctrl_rotateX.o" "Perro_BindSkin2RN.phl[105]";
connectAttr "R_Pata_Trasera_ctrl_rotateY.o" "Perro_BindSkin2RN.phl[106]";
connectAttr "R_Pata_Trasera_ctrl_rotateZ.o" "Perro_BindSkin2RN.phl[107]";
connectAttr "Pan_translateX.o" "Pan.tx";
connectAttr "Pan_translateY.o" "Pan.ty";
connectAttr "Pan_translateZ.o" "Pan.tz";
connectAttr "Pan_visibility.o" "Pan.v";
connectAttr "Pan_rotateX.o" "Pan.rx";
connectAttr "Pan_rotateY.o" "Pan.ry";
connectAttr "Pan_rotateZ.o" "Pan.rz";
connectAttr "Pan_scaleX.o" "Pan.sx";
connectAttr "Pan_scaleY.o" "Pan.sy";
connectAttr "Pan_scaleZ.o" "Pan.sz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "PanSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "PanSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "Perro_BindSkin2RN.sr";
connectAttr "standardSurface2.oc" "PanSG.ss";
connectAttr "PanShape.iog" "PanSG.dsm" -na;
connectAttr "PanSG.msg" "materialInfo1.sg";
connectAttr "standardSurface2.msg" "materialInfo1.m";
connectAttr "standardSurface2.msg" "materialInfo1.t" -na;
connectAttr "PanSG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Perro_Animations_con_pan.ma
