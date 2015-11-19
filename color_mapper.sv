module  color_mapper ( input        [9:0] BallX, BallY, DrawX,
                                            DrawY, Ball_size,
                        output logic [7:0]  Red, Green, Blue );
   int idx; 
    logic on_sprite; 
    
   assign on_sprite = (DrawY > BallY) & (DrawX > BallX) & (DrawY - BallY < 20)
                        & (DrawX - BallX < 20)
/* now we generate the idx */ 
   always_comb
    begin
        idx = 999 
        case(on_sprite)
        1:
            idx = (DrawY - BallY)*20 + (DrawX - BallX);
        default:;
        endcase;
    end
   always_comb
    begin
    Red = 255;
    Green = 255;
    Blue = 255; 
    case(idx)
           0: 
        begin 
            Red =235;
            Green =252;
            Blue =255;
        end 

       1: 
        begin 
            Red =240;
            Green =255;
            Blue =255;
        end 

       2: 
        begin 
            Red =237;
            Green =255;
            Blue =250;
        end 

       3: 
        begin 
            Red =245;
            Green =255;
            Blue =216;
        end 

       4: 
        begin 
            Red =248;
            Green =255;
            Blue =194;
        end 

       5: 
        begin 
            Red =249;
            Green =255;
            Blue =206;
        end 

       6: 
        begin 
            Red =255;
            Green =254;
            Blue =253;
        end 

       7: 
        begin 
            Red =226;
            Green =212;
            Blue =247;
        end 

       8: 
        begin 
            Red =173;
            Green =159;
            Blue =172;
        end 

       9: 
        begin 
            Red =191;
            Green =188;
            Blue =137;
        end 

       10: 
        begin 
            Red =174;
            Green =178;
            Blue =81;
        end 

       11: 
        begin 
            Red =190;
            Green =194;
            Blue =109;
        end 

       12: 
        begin 
            Red =239;
            Green =235;
            Blue =210;
        end 

       13: 
        begin 
            Red =247;
            Green =236;
            Blue =255;
        end 

       14: 
        begin 
            Red =255;
            Green =243;
            Blue =255;
        end 

       15: 
        begin 
            Red =255;
            Green =245;
            Blue =255;
        end 

       16: 
        begin 
            Red =255;
            Green =249;
            Blue =253;
        end 

       17: 
        begin 
            Red =255;
            Green =251;
            Blue =255;
        end 

       18: 
        begin 
            Red =244;
            Green =240;
            Blue =255;
        end 

       20: 
        begin 
            Red =227;
            Green =234;
            Blue =255;
        end 

       21: 
        begin 
            Red =247;
            Green =252;
            Blue =255;
        end 

       22: 
        begin 
            Red =225;
            Green =230;
            Blue =250;
        end 

       23: 
        begin 
            Red =254;
            Green =255;
            Blue =234;
        end 

       24: 
        begin 
            Red =255;
            Green =255;
            Blue =195;
        end 

       25: 
        begin 
            Red =202;
            Green =205;
            Blue =126;
        end 

       26: 
        begin 
            Red =133;
            Green =126;
            Blue =80;
        end 

       27: 
        begin 
            Red =133;
            Green =116;
            Blue =108;
        end 

       28: 
        begin 
            Red =171;
            Green =150;
            Blue =145;
        end 

       29: 
        begin 
            Red =188;
            Green =174;
            Blue =129;
        end 

       30: 
        begin 
            Red =181;
            Green =174;
            Blue =86;
        end 

       31: 
        begin 
            Red =147;
            Green =142;
            Blue =50;
        end 

       32: 
        begin 
            Red =125;
            Green =117;
            Blue =55;
        end 

       33: 
        begin 
            Red =151;
            Green =140;
            Blue =118;
        end 

       34: 
        begin 
            Red =188;
            Green =176;
            Blue =176;
        end 

       35: 
        begin 
            Red =255;
            Green =250;
            Blue =255;
        end 

       36: 
        begin 
            Red =255;
            Green =254;
            Blue =246;
        end 

       37: 
        begin 
            Red =232;
            Green =226;
            Blue =236;
        end 

       38: 
        begin 
            Red =255;
            Green =251;
            Blue =255;
        end 

       40: 
        begin 
            Red =255;
            Green =252;
            Blue =255;
        end 

       41: 
        begin 
            Red =245;
            Green =238;
            Blue =255;
        end 

       42: 
        begin 
            Red =255;
            Green =248;
            Blue =255;
        end 

       43: 
        begin 
            Red =250;
            Green =240;
            Blue =228;
        end 

       44: 
        begin 
            Red =120;
            Green =114;
            Blue =40;
        end 

       45: 
        begin 
            Red =134;
            Green =129;
            Blue =11;
        end 

       46: 
        begin 
            Red =214;
            Green =203;
            Blue =87;
        end 

       47: 
        begin 
            Red =255;
            Green =238;
            Blue =155;
        end 

       48: 
        begin 
            Red =246;
            Green =220;
            Blue =161;
        end 

       49: 
        begin 
            Red =249;
            Green =224;
            Blue =158;
        end 

       50: 
        begin 
            Red =240;
            Green =221;
            Blue =127;
        end 

       51: 
        begin 
            Red =255;
            Green =248;
            Blue =130;
        end 

       52: 
        begin 
            Red =251;
            Green =240;
            Blue =122;
        end 

       53: 
        begin 
            Red =217;
            Green =205;
            Blue =103;
        end 

       54: 
        begin 
            Red =140;
            Green =130;
            Blue =45;
        end 

       55: 
        begin 
            Red =128;
            Green =116;
            Blue =44;
        end 

       56: 
        begin 
            Red =224;
            Green =217;
            Blue =188;
        end 

       57: 
        begin 
            Red =255;
            Green =254;
            Blue =246;
        end 

       58: 
        begin 
            Red =248;
            Green =244;
            Blue =255;
        end 

       60: 
        begin 
            Red =244;
            Green =236;
            Blue =213;
        end 

       61: 
        begin 
            Red =255;
            Green =252;
            Blue =244;
        end 

       62: 
        begin 
            Red =246;
            Green =227;
            Blue =229;
        end 

       63: 
        begin 
            Red =148;
            Green =127;
            Blue =106;
        end 

       64: 
        begin 
            Red =200;
            Green =182;
            Blue =108;
        end 

       65: 
        begin 
            Red =255;
            Green =255;
            Blue =125;
        end 

       66: 
        begin 
            Red =237;
            Green =223;
            Blue =62;
        end 

       67: 
        begin 
            Red =241;
            Green =222;
            Blue =66;
        end 

       68: 
        begin 
            Red =249;
            Green =225;
            Blue =93;
        end 

       69: 
        begin 
            Red =247;
            Green =220;
            Blue =103;
        end 

       70: 
        begin 
            Red =238;
            Green =214;
            Blue =92;
        end 

       71: 
        begin 
            Red =255;
            Green =242;
            Blue =103;
        end 

       72: 
        begin 
            Red =244;
            Green =231;
            Blue =77;
        end 

       73: 
        begin 
            Red =245;
            Green =234;
            Blue =82;
        end 

       74: 
        begin 
            Red =255;
            Green =250;
            Blue =108;
        end 

       75: 
        begin 
            Red =211;
            Green =201;
            Blue =69;
        end 

       76: 
        begin 
            Red =135;
            Green =129;
            Blue =71;
        end 

       77: 
        begin 
            Red =238;
            Green =229;
            Blue =198;
        end 

       78: 
        begin 
            Red =242;
            Green =233;
            Blue =234;
        end 

       80: 
        begin 
            Red =255;
            Green =255;
            Blue =207;
        end 

       81: 
        begin 
            Red =255;
            Green =247;
            Blue =206;
        end 

       82: 
        begin 
            Red =172;
            Green =157;
            Blue =128;
        end 

       83: 
        begin 
            Red =116;
            Green =94;
            Blue =70;
        end 

       84: 
        begin 
            Red =175;
            Green =150;
            Blue =110;
        end 

       85: 
        begin 
            Red =196;
            Green =171;
            Blue =91;
        end 

       86: 
        begin 
            Red =255;
            Green =234;
            Blue =106;
        end 

       87: 
        begin 
            Red =240;
            Green =221;
            Blue =56;
        end 

       88: 
        begin 
            Red =241;
            Green =221;
            Blue =48;
        end 

       89: 
        begin 
            Red =252;
            Green =229;
            Blue =71;
        end 

       90: 
        begin 
            Red =255;
            Green =231;
            Blue =97;
        end 

       91: 
        begin 
            Red =206;
            Green =184;
            Blue =64;
        end 

       92: 
        begin 
            Red =164;
            Green =145;
            Blue =27;
        end 

       93: 
        begin 
            Red =168;
            Green =152;
            Blue =31;
        end 

       94: 
        begin 
            Red =222;
            Green =210;
            Blue =88;
        end 

       95: 
        begin 
            Red =240;
            Green =230;
            Blue =107;
        end 

       96: 
        begin 
            Red =182;
            Green =175;
            Blue =84;
        end 

       97: 
        begin 
            Red =133;
            Green =123;
            Blue =64;
        end 

       98: 
        begin 
            Red =255;
            Green =251;
            Blue =235;
        end 

       100: 
        begin 
            Red =255;
            Green =255;
            Blue =221;
        end 

       101: 
        begin 
            Red =200;
            Green =197;
            Blue =156;
        end 

       102: 
        begin 
            Red =80;
            Green =71;
            Blue =40;
        end 

       103: 
        begin 
            Red =185;
            Green =165;
            Blue =164;
        end 

       104: 
        begin 
            Red =204;
            Green =174;
            Blue =202;
        end 

       105: 
        begin 
            Red =22;
            Green =0;
            Blue =9;
        end 

       106: 
        begin 
            Red =136;
            Green =103;
            Blue =68;
        end 

       107: 
        begin 
            Red =252;
            Green =231;
            Blue =116;
        end 

       108: 
        begin 
            Red =254;
            Green =239;
            Blue =76;
        end 

       109: 
        begin 
            Red =255;
            Green =241;
            Blue =84;
        end 

       110: 
        begin 
            Red =195;
            Green =174;
            Blue =67;
        end 

       111: 
        begin 
            Red =155;
            Green =130;
            Blue =74;
        end 

       112: 
        begin 
            Red =214;
            Green =189;
            Blue =159;
        end 

       113: 
        begin 
            Red =129;
            Green =108;
            Blue =81;
        end 

       114: 
        begin 
            Red =36;
            Green =20;
            Blue =0;
        end 

       115: 
        begin 
            Red =184;
            Green =171;
            Blue =126;
        end 

       116: 
        begin 
            Red =255;
            Green =251;
            Blue =128;
        end 

       117: 
        begin 
            Red =161;
            Green =149;
            Blue =65;
        end 

       118: 
        begin 
            Red =197;
            Green =184;
            Blue =150;
        end 

       120: 
        begin 
            Red =240;
            Green =246;
            Blue =236;
        end 

       121: 
        begin 
            Red =149;
            Green =155;
            Blue =127;
        end 

       122: 
        begin 
            Red =87;
            Green =87;
            Blue =61;
        end 

       123: 
        begin 
            Red =255;
            Green =245;
            Blue =255;
        end 

       124: 
        begin 
            Red =242;
            Green =214;
            Blue =255;
        end 

       125: 
        begin 
            Red =23;
            Green =0;
            Blue =75;
        end 

       126: 
        begin 
            Red =62;
            Green =29;
            Blue =58;
        end 

       127: 
        begin 
            Red =205;
            Green =184;
            Blue =117;
        end 

       128: 
        begin 
            Red =228;
            Green =218;
            Blue =84;
        end 

       129: 
        begin 
            Red =241;
            Green =230;
            Blue =102;
        end 

       130: 
        begin 
            Red =148;
            Green =131;
            Blue =62;
        end 

       131: 
        begin 
            Red =216;
            Green =192;
            Blue =190;
        end 

       132: 
        begin 
            Red =255;
            Green =244;
            Blue =255;
        end 

       133: 
        begin 
            Red =150;
            Green =130;
            Blue =167;
        end 

       134: 
        begin 
            Red =7;
            Green =0;
            Blue =19;
        end 

       135: 
        begin 
            Red =98;
            Green =86;
            Blue =106;
        end 

       136: 
        begin 
            Red =236;
            Green =224;
            Blue =76;
        end 

       137: 
        begin 
            Red =234;
            Green =222;
            Blue =114;
        end 

       138: 
        begin 
            Red =122;
            Green =106;
            Blue =57;
        end 

       140: 
        begin 
            Red =222;
            Green =234;
            Blue =220;
        end 

       141: 
        begin 
            Red =120;
            Green =134;
            Blue =98;
        end 

       142: 
        begin 
            Red =131;
            Green =142;
            Blue =99;
        end 

       143: 
        begin 
            Red =249;
            Green =246;
            Blue =237;
        end 

       144: 
        begin 
            Red =255;
            Green =245;
            Blue =255;
        end 

       145: 
        begin 
            Red =255;
            Green =240;
            Blue =255;
        end 

       146: 
        begin 
            Red =191;
            Green =169;
            Blue =171;
        end 

       147: 
        begin 
            Red =161;
            Green =149;
            Blue =67;
        end 

       148: 
        begin 
            Red =251;
            Green =244;
            Blue =112;
        end 

       149: 
        begin 
            Red =224;
            Green =217;
            Blue =100;
        end 

       150: 
        begin 
            Red =128;
            Green =117;
            Blue =53;
        end 

       151: 
        begin 
            Red =255;
            Green =252;
            Blue =237;
        end 

       152: 
        begin 
            Red =249;
            Green =237;
            Blue =239;
        end 

       153: 
        begin 
            Red =255;
            Green =252;
            Blue =255;
        end 

       154: 
        begin 
            Red =255;
            Green =254;
            Blue =255;
        end 

       155: 
        begin 
            Red =138;
            Green =137;
            Blue =142;
        end 

       156: 
        begin 
            Red =218;
            Green =205;
            Blue =38;
        end 

       157: 
        begin 
            Red =245;
            Green =229;
            Blue =107;
        end 

       158: 
        begin 
            Red =164;
            Green =145;
            Blue =87;
        end 

       160: 
        begin 
            Red =192;
            Green =207;
            Blue =164;
        end 

       161: 
        begin 
            Red =131;
            Green =148;
            Blue =80;
        end 

       162: 
        begin 
            Red =132;
            Green =145;
            Blue =63;
        end 

       163: 
        begin 
            Red =133;
            Green =138;
            Blue =72;
        end 

       164: 
        begin 
            Red =161;
            Green =153;
            Blue =116;
        end 

       165: 
        begin 
            Red =158;
            Green =142;
            Blue =106;
        end 

       166: 
        begin 
            Red =119;
            Green =103;
            Blue =25;
        end 

       167: 
        begin 
            Red =193;
            Green =183;
            Blue =51;
        end 

       168: 
        begin 
            Red =244;
            Green =234;
            Blue =85;
        end 

       169: 
        begin 
            Red =231;
            Green =219;
            Blue =97;
        end 

       170: 
        begin 
            Red =133;
            Green =118;
            Blue =35;
        end 

       171: 
        begin 
            Red =149;
            Green =136;
            Blue =68;
        end 

       172: 
        begin 
            Red =160;
            Green =154;
            Blue =76;
        end 

       173: 
        begin 
            Red =154;
            Green =157;
            Blue =68;
        end 

       174: 
        begin 
            Red =149;
            Green =153;
            Blue =76;
        end 

       175: 
        begin 
            Red =108;
            Green =112;
            Blue =51;
        end 

       176: 
        begin 
            Red =228;
            Green =215;
            Blue =38;
        end 

       177: 
        begin 
            Red =252;
            Green =235;
            Blue =105;
        end 

       178: 
        begin 
            Red =189;
            Green =169;
            Blue =106;
        end 

       180: 
        begin 
            Red =180;
            Green =187;
            Blue =135;
        end 

       181: 
        begin 
            Red =170;
            Green =177;
            Blue =99;
        end 

       182: 
        begin 
            Red =224;
            Green =229;
            Blue =126;
        end 

       183: 
        begin 
            Red =197;
            Green =194;
            Blue =89;
        end 

       184: 
        begin 
            Red =228;
            Green =215;
            Blue =123;
        end 

       185: 
        begin 
            Red =241;
            Green =220;
            Blue =129;
        end 

       186: 
        begin 
            Red =235;
            Green =209;
            Blue =96;
        end 

       187: 
        begin 
            Red =255;
            Green =237;
            Blue =100;
        end 

       188: 
        begin 
            Red =255;
            Green =230;
            Blue =97;
        end 

       189: 
        begin 
            Red =255;
            Green =231;
            Blue =125;
        end 

       190: 
        begin 
            Red =255;
            Green =230;
            Blue =147;
        end 

       191: 
        begin 
            Red =229;
            Green =204;
            Blue =114;
        end 

       192: 
        begin 
            Red =227;
            Green =212;
            Blue =97;
        end 

       193: 
        begin 
            Red =223;
            Green =215;
            Blue =90;
        end 

       194: 
        begin 
            Red =202;
            Green =199;
            Blue =86;
        end 

       195: 
        begin 
            Red =215;
            Green =210;
            Blue =118;
        end 

       196: 
        begin 
            Red =243;
            Green =228;
            Blue =51;
        end 

       197: 
        begin 
            Red =255;
            Green =253;
            Blue =121;
        end 

       198: 
        begin 
            Red =163;
            Green =143;
            Blue =80;
        end 

       200: 
        begin 
            Red =204;
            Green =190;
            Blue =164;
        end 

       201: 
        begin 
            Red =164;
            Green =154;
            Blue =93;
        end 

       202: 
        begin 
            Red =234;
            Green =222;
            Blue =122;
        end 

       203: 
        begin 
            Red =157;
            Green =139;
            Blue =31;
        end 

       204: 
        begin 
            Red =160;
            Green =128;
            Blue =41;
        end 

       205: 
        begin 
            Red =136;
            Green =92;
            Blue =31;
        end 

       206: 
        begin 
            Red =181;
            Green =129;
            Blue =72;
        end 

       207: 
        begin 
            Red =163;
            Green =106;
            Blue =39;
        end 

       208: 
        begin 
            Red =183;
            Green =125;
            Blue =52;
        end 

       209: 
        begin 
            Red =140;
            Green =82;
            Blue =18;
        end 

       210: 
        begin 
            Red =179;
            Green =121;
            Blue =71;
        end 

       211: 
        begin 
            Red =162;
            Green =110;
            Blue =60;
        end 

       212: 
        begin 
            Red =165;
            Green =120;
            Blue =61;
        end 

       213: 
        begin 
            Red =161;
            Green =123;
            Blue =58;
        end 

       214: 
        begin 
            Red =169;
            Green =135;
            Blue =74;
        end 

       215: 
        begin 
            Red =199;
            Green =168;
            Blue =114;
        end 

       216: 
        begin 
            Red =255;
            Green =243;
            Blue =75;
        end 

       217: 
        begin 
            Red =239;
            Green =221;
            Blue =97;
        end 

       218: 
        begin 
            Red =182;
            Green =162;
            Blue =103;
        end 

       220: 
        begin 
            Red =254;
            Green =225;
            Blue =227;
        end 

       221: 
        begin 
            Red =130;
            Green =106;
            Blue =62;
        end 

       222: 
        begin 
            Red =242;
            Green =219;
            Blue =125;
        end 

       223: 
        begin 
            Red =127;
            Green =95;
            Blue =0;
        end 

       224: 
        begin 
            Red =80;
            Green =31;
            Blue =0;
        end 

       225: 
        begin 
            Red =87;
            Green =18;
            Blue =21;
        end 

       226: 
        begin 
            Red =117;
            Green =35;
            Blue =73;
        end 

       227: 
        begin 
            Red =97;
            Green =11;
            Blue =38;
        end 

       228: 
        begin 
            Red =90;
            Green =5;
            Blue =0;
        end 

       229: 
        begin 
            Red =124;
            Green =43;
            Blue =13;
        end 

       230: 
        begin 
            Red =101;
            Green =23;
            Blue =3;
        end 

       231: 
        begin 
            Red =83;
            Green =6;
            Blue =16;
        end 

       232: 
        begin 
            Red =122;
            Green =46;
            Blue =82;
        end 

       233: 
        begin 
            Red =79;
            Green =9;
            Blue =46;
        end 

       234: 
        begin 
            Red =64;
            Green =1;
            Blue =20;
        end 

       235: 
        begin 
            Red =123;
            Green =64;
            Blue =66;
        end 

       236: 
        begin 
            Red =246;
            Green =229;
            Blue =77;
        end 

       237: 
        begin 
            Red =245;
            Green =227;
            Blue =115;
        end 

       238: 
        begin 
            Red =172;
            Green =152;
            Blue =101;
        end 

       240: 
        begin 
            Red =255;
            Green =244;
            Blue =246;
        end 

       241: 
        begin 
            Red =143;
            Green =119;
            Blue =71;
        end 

       242: 
        begin 
            Red =246;
            Green =222;
            Blue =122;
        end 

       243: 
        begin 
            Red =194;
            Green =161;
            Blue =54;
        end 

       244: 
        begin 
            Red =75;
            Green =24;
            Blue =0;
        end 

       245: 
        begin 
            Red =135;
            Green =58;
            Blue =90;
        end 

       246: 
        begin 
            Red =122;
            Green =26;
            Blue =113;
        end 

       247: 
        begin 
            Red =126;
            Green =25;
            Blue =101;
        end 

       248: 
        begin 
            Red =135;
            Green =40;
            Blue =62;
        end 

       249: 
        begin 
            Red =148;
            Green =60;
            Blue =38;
        end 

       250: 
        begin 
            Red =120;
            Green =34;
            Blue =19;
        end 

       251: 
        begin 
            Red =112;
            Green =21;
            Blue =62;
        end 

       252: 
        begin 
            Red =114;
            Green =21;
            Blue =112;
        end 

       253: 
        begin 
            Red =123;
            Green =36;
            Blue =130;
        end 

       254: 
        begin 
            Red =112;
            Green =36;
            Blue =85;
        end 

       255: 
        begin 
            Red =116;
            Green =51;
            Blue =55;
        end 

       256: 
        begin 
            Red =244;
            Green =226;
            Blue =92;
        end 

       257: 
        begin 
            Red =255;
            Green =241;
            Blue =146;
        end 

       258: 
        begin 
            Red =130;
            Green =111;
            Blue =69;
        end 

       260: 
        begin 
            Red =255;
            Green =242;
            Blue =236;
        end 

       261: 
        begin 
            Red =214;
            Green =197;
            Blue =154;
        end 

       262: 
        begin 
            Red =150;
            Green =133;
            Blue =45;
        end 

       263: 
        begin 
            Red =255;
            Green =234;
            Blue =131;
        end 

       264: 
        begin 
            Red =116;
            Green =72;
            Blue =7;
        end 

       265: 
        begin 
            Red =82;
            Green =15;
            Blue =24;
        end 

       266: 
        begin 
            Red =114;
            Green =27;
            Blue =96;
        end 

       267: 
        begin 
            Red =124;
            Green =30;
            Blue =106;
        end 

       268: 
        begin 
            Red =120;
            Green =29;
            Blue =60;
        end 

       269: 
        begin 
            Red =103;
            Green =17;
            Blue =2;
        end 

       270: 
        begin 
            Red =134;
            Green =50;
            Blue =39;
        end 

       271: 
        begin 
            Red =151;
            Green =64;
            Blue =106;
        end 

       272: 
        begin 
            Red =113;
            Green =24;
            Blue =114;
        end 

       273: 
        begin 
            Red =109;
            Green =28;
            Blue =107;
        end 

       274: 
        begin 
            Red =89;
            Green =23;
            Blue =35;
        end 

       275: 
        begin 
            Red =148;
            Green =95;
            Blue =45;
        end 

       276: 
        begin 
            Red =255;
            Green =255;
            Blue =143;
        end 

       277: 
        begin 
            Red =154;
            Green =135;
            Blue =56;
        end 

       278: 
        begin 
            Red =185;
            Green =166;
            Blue =134;
        end 

       280: 
        begin 
            Red =254;
            Green =246;
            Blue =255;
        end 

       281: 
        begin 
            Red =255;
            Green =250;
            Blue =241;
        end 

       282: 
        begin 
            Red =126;
            Green =115;
            Blue =70;
        end 

       283: 
        begin 
            Red =221;
            Green =203;
            Blue =131;
        end 

       284: 
        begin 
            Red =193;
            Green =163;
            Blue =91;
        end 

       285: 
        begin 
            Red =81;
            Green =32;
            Blue =2;
        end 

       286: 
        begin 
            Red =108;
            Green =39;
            Blue =68;
        end 

       287: 
        begin 
            Red =121;
            Green =40;
            Blue =99;
        end 

       288: 
        begin 
            Red =121;
            Green =38;
            Blue =84;
        end 

       289: 
        begin 
            Red =225;
            Green =144;
            Blue =161;
        end 

       290: 
        begin 
            Red =255;
            Green =179;
            Blue =192;
        end 

       291: 
        begin 
            Red =251;
            Green =173;
            Blue =215;
        end 

       292: 
        begin 
            Red =233;
            Green =157;
            Blue =222;
        end 

       293: 
        begin 
            Red =112;
            Green =47;
            Blue =81;
        end 

       294: 
        begin 
            Red =69;
            Green =22;
            Blue =0;
        end 

       295: 
        begin 
            Red =239;
            Green =206;
            Blue =90;
        end 

       296: 
        begin 
            Red =237;
            Green =218;
            Blue =116;
        end 

       297: 
        begin 
            Red =112;
            Green =93;
            Blue =24;
        end 

       298: 
        begin 
            Red =255;
            Green =250;
            Blue =226;
        end 

       300: 
        begin 
            Red =252;
            Green =250;
            Blue =255;
        end 

       301: 
        begin 
            Red =246;
            Green =241;
            Blue =255;
        end 

       302: 
        begin 
            Red =232;
            Green =221;
            Blue =227;
        end 

       303: 
        begin 
            Red =112;
            Green =98;
            Blue =63;
        end 

       304: 
        begin 
            Red =234;
            Green =213;
            Blue =148;
        end 

       305: 
        begin 
            Red =178;
            Green =140;
            Blue =91;
        end 

       306: 
        begin 
            Red =70;
            Green =14;
            Blue =17;
        end 

       307: 
        begin 
            Red =89;
            Green =16;
            Blue =69;
        end 

       308: 
        begin 
            Red =222;
            Green =141;
            Blue =210;
        end 

       309: 
        begin 
            Red =255;
            Green =200;
            Blue =255;
        end 

       310: 
        begin 
            Red =255;
            Green =203;
            Blue =246;
        end 

       311: 
        begin 
            Red =255;
            Green =195;
            Blue =245;
        end 

       312: 
        begin 
            Red =229;
            Green =162;
            Blue =213;
        end 

       313: 
        begin 
            Red =152;
            Green =100;
            Blue =104;
        end 

       314: 
        begin 
            Red =213;
            Green =178;
            Blue =96;
        end 

       315: 
        begin 
            Red =240;
            Green =219;
            Blue =66;
        end 

       316: 
        begin 
            Red =125;
            Green =106;
            Blue =12;
        end 

       317: 
        begin 
            Red =229;
            Green =209;
            Blue =148;
        end 

       318: 
        begin 
            Red =255;
            Green =252;
            Blue =232;
        end 

       320: 
        begin 
            Red =255;
            Green =255;
            Blue =248;
        end 

       321: 
        begin 
            Red =237;
            Green =238;
            Blue =230;
        end 

       322: 
        begin 
            Red =255;
            Green =255;
            Blue =246;
        end 

       323: 
        begin 
            Red =221;
            Green =219;
            Blue =207;
        end 

       324: 
        begin 
            Red =115;
            Green =109;
            Blue =95;
        end 

       325: 
        begin 
            Red =154;
            Green =148;
            Blue =126;
        end 

       326: 
        begin 
            Red =192;
            Green =186;
            Blue =154;
        end 

       327: 
        begin 
            Red =92;
            Green =83;
            Blue =42;
        end 

       328: 
        begin 
            Red =141;
            Green =133;
            Blue =84;
        end 

       329: 
        begin 
            Red =167;
            Green =157;
            Blue =104;
        end 

       330: 
        begin 
            Red =161;
            Green =152;
            Blue =97;
        end 

       331: 
        begin 
            Red =129;
            Green =119;
            Blue =68;
        end 

       332: 
        begin 
            Red =147;
            Green =136;
            Blue =91;
        end 

       333: 
        begin 
            Red =205;
            Green =192;
            Blue =157;
        end 

       334: 
        begin 
            Red =189;
            Green =178;
            Blue =150;
        end 

       335: 
        begin 
            Red =115;
            Green =103;
            Blue =79;
        end 

       336: 
        begin 
            Red =216;
            Green =216;
            Blue =216;
        end 

       337: 
        begin 
            Red =241;
            Green =241;
            Blue =241;
        end 

       338: 
        begin 
            Red =255;
            Green =255;
            Blue =255;
        end 

       340: 
        begin 
            Red =254;
            Green =255;
            Blue =250;
        end 

       341: 
        begin 
            Red =255;
            Green =255;
            Blue =250;
        end 

       342: 
        begin 
            Red =247;
            Green =246;
            Blue =241;
        end 

       343: 
        begin 
            Red =255;
            Green =254;
            Blue =247;
        end 

       344: 
        begin 
            Red =254;
            Green =250;
            Blue =239;
        end 

       345: 
        begin 
            Red =180;
            Green =173;
            Blue =155;
        end 

       346: 
        begin 
            Red =128;
            Green =121;
            Blue =93;
        end 

       347: 
        begin 
            Red =161;
            Green =153;
            Blue =117;
        end 

       348: 
        begin 
            Red =164;
            Green =155;
            Blue =112;
        end 

       349: 
        begin 
            Red =146;
            Green =136;
            Blue =87;
        end 

       350: 
        begin 
            Red =160;
            Green =150;
            Blue =101;
        end 

       351: 
        begin 
            Red =181;
            Green =170;
            Blue =124;
        end 

       352: 
        begin 
            Red =157;
            Green =148;
            Blue =109;
        end 

       353: 
        begin 
            Red =133;
            Green =122;
            Blue =92;
        end 

       354: 
        begin 
            Red =167;
            Green =155;
            Blue =131;
        end 

       355: 
        begin 
            Red =222;
            Green =209;
            Blue =192;
        end 

       356: 
        begin 
            Red =238;
            Green =238;
            Blue =238;
        end 

       357: 
        begin 
            Red =252;
            Green =252;
            Blue =252;
        end 

       358: 
        begin 
            Red =255;
            Green =255;
            Blue =255;
        end 

       default: ;
        endcase    
    end
endmodule
