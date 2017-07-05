boolean box1 = true;   // top
boolean box2 = true;
boolean box3 = true;
boolean box4 = true;   // bottom


int xmax = 1200;
int ymax = 850;
PFont f;
PFont fbold;
PFont fbig;
PFont fmedium;
int leftmargin = 50;
int topmargin = 175;
int linelength = xmax - leftmargin - 50;
int spacing = 200;
float line3y = topmargin + 3 * spacing;
float line2y = topmargin + 2 * spacing;
float line1y = topmargin + 1 * spacing;
float line0y = topmargin + 0 * spacing;
float topboxheight = 180;
float botboxheight = 35;
float boxlength = linelength / 10 / 2; // half box length
float box3center = 109;
float box2center = 567;
float box1center = 296;
float box3left;
float box2left;
float box1left;
float box3right;
float box2right;
float box1right;
float rho;
float rho3L;
float rho3R;
float rho2L;
float rho2R;
float rho1L;
float rho1R;
float rho0L;
float rho0R;
int botbez = 75;  // Bezier control point offset
int topbez = 75;  // Bezier control point offset

String[] materials = {

"Hydrogen",
"Helium",
"Neon",
"Nitrogen",
"Oxygen",
"Fluorine",
"Argon",
"Chlorine",
"Krypton",
"Xenon",
"Radon",
"Lithium",
"Potassium",
"Sodium",
"Rubidium",
"Calcium",
"Magnesium",
"Phosphorus",
"Beryllium",
"Francium",
"Caesium",
"Sulphur",
"Carbon",
"Silicon",
"Boron",
"Strontium",
"Aluminium",
"Scandium",
"Bromine",
"Barium",
"Yttrium",
"Titanium",
"Selenium",
"Iodine",
"Europium",
"Germanium",
"Radium",
"Arsenic",
"Gallium",
"Vanadium",
"Lanthanum",
"Tellurium",
"Zirconium",
"Antimony",
"Cerium",
"Praseodymium",
"Ytterbium",
"Astatine",
"Neodymium",
"Zinc",
"Chromium",
"Promethium",
"Tin",
"Indium",
"Manganese",
"Samarium",
"Iron",
"Gadolinium",
"Terbium",
"Dysprosium",
"Niobium",
"Cadmium",
"Holmium",
"Cobalt",
"Nickel",
"Copper",
"Erbium",
"Polonium",
"Thulium",
"Bismuth",
"Lutetium",
"Actinium",
"Molybdenum",
"Silver",
"Lead",
"Technetium",
"Thorium",
"Thallium",
"Palladium",
"Ruthenium",
"Rhodium",
"Hafnium",
"Einsteinium",
"Curium",
"Mercury",
"Americium",
"Berkelium",
"Californium",
"Protactinium",
"Tantalum",
"Rutherfordium",
"Uranium",
"Tungsten",
"Gold",
"Plutonium",
"Neptunium",
"Rhenium",
"Platinum",
"Iridium",
"Osmium",
"Polybutylene",
"Polymethylpentene",
"Ethylene-propylene",
"Propylene",
"LDPE",
"HDPE",
"Polybutene",
"Natural rubber",
"Butyl rubber",
"Styrene-butadiene",
"Polystyrene",
"Polyacrylonitrile",
"Polyvinyl acetate",
"Polycarbonate",
"Polychloroprene rubber",
"Polysulphone",
"Polyethylene terephtalate",
"PVC",
"PTFE Teflon",
"Water",
"Red blood cell (RBC)",
"Malaria-infected RBC",
"Lymphocyte",
"Apoptotic lymphocyte",
"Trichlorotrifluoroethane",
"Trichlorobenzene",
"Dioxane",
"Methoxyethanol",
"Acetic Acid",
"Acetone",
"Acetonitrile",
"Alcohol, ethyl",
"Alcohol, methyl",
"Alcohol, propyl",
"Ammonia (aqua)",
"Analine",
"Benzene",
"Benzil",
"Brine",
"Butyric Acid",
"Butane",
"n-Butyl Acetate",
"n-Butyl Alcohol",
"n-Butyl Chloride",
"Caproic acid",
"Carbolic acid",
"Carbon disulfide",
"Carbon tetrachloride",
"Carene",
"Castor oil",
"Chloride",
"Chlorobenzene",
"Chloroform",
"Chloroform",
"Citric acid",
"Coconut oil",
"Cotton seed oil",
"Cresol",
"Creosote",
"Crude oil, 48 API",
"Crude oil, 40 API",
"Crude oil, 35.6 API",
"Crude oil, 32.6 API",
"Crude oil, California",
"Crude oil, Mexican",
"Crude oil, Texas",
"Cumene",
"Cyclohexane",
"Cyclopentane",
"Decane",
"Diethyl ether",
"Dichlorobenzene",
"Dichloromethane",
"Diethylene glycol",
"Dichloromethane",
"Dimethyl Acetamide",
"Dimethylformamide",
"Dodecane",
"Ethane",
"Ether",
"Ethylamine",
"Ethyl Acetate",
"Ethyl Alcohol",
"Ethyl Ether",
"Ethylene Dichloride",
"Ethylene glycol",
"R12 refrigerant",
"Formaldehyde",
"Freon 11",
"Freon 21",
"Fuel oil",
"Furan",
"Furforol",
"Gasoline, natural",
"Gasoline, Vehicle",
"Gas oils",
"Glycerin",
"Glyme",
"Glycerol",
"Heptane",
"Hexane",
"Hexanol",
"Hexene",
"Hydrazine",
"Iodine",
"Ionene",
"Isobutyl Alcohol",
"Iso-Octane",
"Isopropyl Alcohol",
"Isopropyl Myristate",
"Kerosene",
"Linolenic Acid",
"Linseed oil",
"Methane",
"Methanol",
"Methyl Isoamyl Ketone",
"Methyl Isobutyl Ketone",
"Methyl n-Propyl Ketone",
"Methyl t-Butyl Ether",
"N-Methylpyrrolidone",
"Methyl Ethyl Ketone",
"MEK",
"Naphtha",
"Naphtha, wood",
"Napthalene",
"Ocimene",
"Octane",
"Olive oil",
"Palmitic Acid",
"Pentane",
"Pentane",
"Petroleum Ether",
"Gasoline",
"Phenol",
"Phosgene",
"Phytadiene",
"Pinene",
"Propane",
"Propane, R-290",
"Propanol",
"Propylene Carbonate",
"Propylene",
"Propyl Alcohol",
"Propylene glycol",
"Pyridine",
"Pyrrole",
"Rape seed oil",
"Resorcinol",
"Rosin oil",
"Sabiname",
"Sea water",
"Silane",
"Sodium Hydroxide",
"Sorbaldehyde",
"Soya bean oil",
"Stearic Acid",
"Sulphuric Acid",
"Sunflower oil",
"Styrene",
"Terpinene",
"Tetrahydrofuran",
"Toluene",
"Toluene",
"Triethylamine",
"Trifluoroacetic Acid",
"Turpentine",
"Sea water",
"Whale oil",
"o-Xylene",
  
};

float[] densities = {

0.00008988,
0.0001785,
0.0008999,
0.0012506,
0.001429,
0.001696,
0.0017837,
0.003214,
0.003733,
0.005887,
0.00973,
0.534,
0.862,
0.971,
1.532,
1.54,
1.738,
1.82,
1.85,
1.87,
1.873,
2.067,
2.267,
2.3296,
2.34,
2.64,
2.698,
2.989,
3.122,
3.594,
4.469,
4.54,
4.809,
4.93,
5.243,
5.323,
5.5,
5.776,
5.907,
6.11,
6.145,
6.232,
6.506,
6.685,
6.77,
6.773,
6.965,
7,
7.007,
7.134,
7.15,
7.26,
7.287,
7.31,
7.44,
7.52,
7.874,
7.895,
8.229,
8.55,
8.57,
8.69,
8.795,
8.86,
8.912,
8.96,
9.066,
9.32,
9.321,
9.807,
9.84,
10.07,
10.22,
10.501,
11.342,
11.5,
11.72,
11.85,
12.02,
12.37,
12.41,
13.31,
13.5,
13.51,
13.5336,
13.69,
14.79,
15.1,
15.37,
16.654,
18.1,
18.95,
19.25,
19.282,
19.84,
20.45,
21.02,
21.46,
22.56,
22.61,
0.6,
0.83,
0.86,
0.91,
0.91,
0.96,
0.915,
0.91,
0.92,
0.93,
1.05,
1.17,
1.19,
1.2,
1.23,
1.24,
1.36,
1.38,
2.27,
1,
1.11,
1.1,
1.08,
1.09,
1.564,
1.454,
1.0336,
0.9646,
1.0491,
0.78458,
0.7822,
0.78506,
0.78651,
0.79996,
0.82335,
1.01893,
0.87381,
1.07964,
1.23,
0.959,
0.59909,
0.8796,
0.8097,
0.8862,
0.92106,
0.9563,
1.26097,
1.58439,
0.85699,
0.95614,
1.55988,
1.1058,
1.4892,
1.46473,
1.65951,
0.92427,
0.92587,
1.02358,
1.06683,
0.79,
0.825,
0.847,
0.862,
0.915,
0.973,
0.873,
0.86019,
0.7785,
0.7454,
0.72628,
0.714,
1.3058,
1.326,
1.12,
1.326,
0.9415,
0.9487,
0.75463,
0.57026,
0.07272,
0.68078,
0.9006,
0.7892,
0.7133,
1.253,
1.09678,
1.31095,
0.81214,
1.49,
1.37,
0.89013,
1.41603,
1.15493,
0.71122,
0.73722,
0.89,
1.25937,
0.8691,
1.1261,
0.6795,
0.65483,
0.81053,
0.67117,
0.79452,
4.92728,
0.93227,
0.8016,
0.6919,
0.7854,
0.8532,
0.81715,
0.89864,
0.92907,
0.46454,
0.7913,
0.888,
0.8008,
0.8082,
0.7405,
1.0304,
0.8049,
0.80252,
0.66477,
0.95951,
0.82015,
0.79772,
0.91786,
0.86,
0.85058,
0.6262,
0.62482,
0.64,
0.73722,
1.07228,
1.37759,
0.82335,
0.85699,
0.58307,
0.49353,
0.80413,
1.2006,
0.51435,
0.8037,
0.96527,
0.97873,
0.96591,
0.92,
1.26866,
0.98,
0.81214,
1.02518,
0.71763,
1.25,
0.89543,
0.926,
0.89063,
1.839,
0.92,
0.90344,
0.84738,
0.888,
0.8669,
0.86227,
0.7276,
1.489,
0.8682,
1.02198,
0.925,
0.8802,
  
};

//String[] materials = new String[1000];
//float[] densities = new float[1000];




String[] filein;
int materials_length = 0;

void setup() {
  smooth();
  size(1200, 850);
  background(255);
  rectMode(CORNERS);
  f = loadFont("SansSerif.plain-12.vlw");
  fbold = loadFont("SansSerif.bold-12.vlw");
  fbig = loadFont("SansSerif.bold-30.vlw");
  fmedium = loadFont("SansSerif.plain-18.vlw");
  
  
  //filein = loadStrings("density_data.txt");
  //for (int i = 0; i < filein.length; i++) {
  //  // println(filein[i]);
  //  materials[i] = split(filein[i], TAB)[0];
  //  densities[i] = Float.parseFloat(split(filein[i], TAB)[1]);
  //}
  
  

  
  //for (int i = 0; i < materials.length; i++) {
  //  if (materials[i] == null) {
  //    materials_length = i;
  //    break;
  //  }
  //}
  
  materials_length = materials.length;
}

void draw() {
  background(255);



  strokeWeight(4);

  fill(0, 0, 0);

  box3left = box3center - boxlength;
  box3right = box3center + boxlength;
  box2left = box2center - boxlength;
  box2right = box2center + boxlength;
  box1left = box1center - boxlength;
  box1right = box1center + boxlength;


  //  rect(box3left, line3y-topboxheight, box3right, line3y+botboxheight);
  //  rect(box2left, line2y-topboxheight, box2right, line2y+botboxheight);
  //  rect(box1left, line1y-topboxheight, box1right, line1y+botboxheight);
  //  
  //  noFill();
  //
  // 
  //  bezier(box3left,  line3y-topboxheight, box3left,  line3y-topboxheight-botbez, leftmargin,            line2y+topbez, leftmargin,            line2y);
  //  bezier(box3right, line3y-topboxheight, box3right, line3y-topboxheight-botbez, leftmargin+linelength, line2y+topbez, leftmargin+linelength, line2y);
  //  bezier(box2left,  line2y-topboxheight, box2left,  line2y-topboxheight-botbez, leftmargin,            line1y+topbez, leftmargin,            line1y);
  //  bezier(box2right, line2y-topboxheight, box2right, line2y-topboxheight-botbez, leftmargin+linelength, line1y+topbez, leftmargin+linelength, line1y);
  //  bezier(box1left,  line1y-topboxheight, box1left,  line1y-topboxheight-botbez, leftmargin,            line0y+topbez, leftmargin,            line0y);
  //  bezier(box1right, line1y-topboxheight, box1right, line1y-topboxheight-botbez, leftmargin+linelength, line0y+topbez, leftmargin+linelength, line0y);
  //  
  //  line(box3left,  line3y-topboxheight, leftmargin,            line2y);
  //  line(box3right, line3y-topboxheight, leftmargin+linelength, line2y);
  //  line(box2left,  line2y-topboxheight, leftmargin,            line1y);
  //  line(box2right, line2y-topboxheight, leftmargin+linelength, line1y);
  //  line(box1left,  line1y-topboxheight, leftmargin,            line0y);
  //  line(box1right, line1y-topboxheight, leftmargin+linelength, line0y);

  //  noStroke();

  stroke(255);

  if (box4) {
    fill(255*.50);          // BOTTOM
    beginShape();
    vertex(leftmargin-20, line3y+55);
    vertex(leftmargin-20, line3y-150);
    vertex(leftmargin+20+linelength, line3y-150);
    vertex(leftmargin+20+linelength, line3y+55);
    endShape(CLOSE);
  }

  if (box3) {
    fill(255*0.65);
    beginShape();
    vertex(box3left, line3y+65);  // this one is different
    vertex(box3left, line3y-165);
    vertex(leftmargin-20, line3y-165);
    vertex(leftmargin-20, line2y-150);
    vertex(leftmargin+20+linelength, line2y-150);
    vertex(leftmargin+20+linelength, line3y-165);
    vertex(box3right, line3y-165);
    vertex(box3right, line3y+65);  // this one is different
    endShape(CLOSE);
  }

  if (box2) {
    fill(255*0.80);
    beginShape();
    vertex(box2left, line2y+45);
    vertex(box2left, line2y-165);
    vertex(leftmargin-20, line2y-165);
    vertex(leftmargin-20, line1y-150);
    vertex(leftmargin+20+linelength, line1y-150);
    vertex(leftmargin+20+linelength, line2y-165);
    vertex(box2right, line2y-165);
    vertex(box2right, line2y+45);
    endShape(CLOSE);
  }

  if (box1) {
    fill(255*0.90);         // TOP
    beginShape();
    vertex(box1left, line1y+45);
    vertex(box1left, line1y-165);
    vertex(leftmargin-20, line1y-165);
    vertex(leftmargin-20, line0y-150);
    vertex(leftmargin+20+linelength, line0y-150);
    vertex(leftmargin+20+linelength, line1y-165);
    vertex(box1right, line1y-165);
    vertex(box1right, line1y+45);
    endShape(CLOSE);
  }

  strokeWeight(1);

  // ADD THE MATERIAL NAMES

  fill(0);
  textFont(f, 12);

  translate(leftmargin, line0y - 5);
  rotate(-HALF_PI);
  textAlign(LEFT, CENTER);
  if (box1) {
    for (int i = 0; i < materials_length; i++) {
      if (rho0L <= densities[i] && densities[i] <= rho0R) {
        text(materials[i], 0, (densities[i]-rho0L) * linelength / 0.023);
      }
    }
  }
  translate(-spacing, 0);
  if (box2) {
    for (int i = 0; i < materials_length; i++) {
      if (rho1L <= densities[i] && densities[i] <= rho1R) {
        text(materials[i], 0, (densities[i]-rho1L) * linelength / 0.23);
      }
    }
  }

  fill(0);
  translate(-spacing, 0);
  if (box3) {
    for (int i = 0; i < materials_length; i++) {
      if (rho2L <= densities[i] && densities[i] <= rho2R) {
        text(materials[i], 0, (densities[i]-rho2L) * linelength / 2.3);
      }
    }
  }

  translate(-spacing, 0);
  if (box4) {
    for (int i = 0; i < materials_length; i++) {
      if (rho3L <= densities[i] && densities[i] <= rho3R) {
        text(materials[i], 0, (densities[i]-rho3L) * linelength / 23.0);
      }
    }
  }




  rotate(HALF_PI);
  translate(-leftmargin, -line3y + 5);

  noFill();

  stroke(0);
  if (box4) {
    line(leftmargin, line3y, leftmargin + linelength, line3y); // line 3
  }
  if (box3) {
    line(leftmargin, line2y, leftmargin + linelength, line2y); // line 2
  }
  stroke(0);
  if (box2) {
    line(leftmargin, line1y, leftmargin + linelength, line1y); // line 1
  }
  if (box1) {
    line(leftmargin, line0y, leftmargin + linelength, line0y); // line 0
  }


  fill(0);
  strokeWeight(1);

  textAlign(RIGHT, CENTER);

  fill(0);
  textFont(fbig, 30);
  if (box1) {
    text("1000x", xmax*.96, line0y - 120);
  }
  if (box2) {
    text("100x", xmax*.96, line1y - 120);
  }
  fill(0);
  if (box3) {
    text("10x", xmax*.96, line2y - 120);
  }
  if (box4) {
    text("1x", xmax*.96, line3y - 120);
  }

  fill(0);
  textFont(fbold, 12);
  if (box4) {
    text("Density (g/mL)", leftmargin + linelength/2, ymax-35);
  }

  stroke(0);
  fill(0);
  rho3L = 0;
  rho3R = 23;
  rho = floor(rho3L);
  if (box4) {
    while (rho <= ceil (rho3R)) {
      line(leftmargin + rho * linelength / 23, line3y, leftmargin + rho * linelength / 23, line3y+10);
      textAlign(CENTER, CENTER);
      text(nf(rho, 0, 0), leftmargin + rho * linelength / 23, line3y+20);
      rho += 1;
    }
  }

  rho2L = (box3left - leftmargin) * 23 / linelength;
  rho2R = (box3right - leftmargin) * 23 / linelength;
  rho = ceil(rho2L * 10) / 10.0;
  if (box3) {
    while (rho < ceil (rho2R * 10) / 10.0) {
      line(leftmargin + (rho-rho2L) * linelength / 2.3, line2y, leftmargin + (rho-rho2L) * linelength / 2.3, line2y+10);
      textAlign(CENTER, CENTER);
      text(nf(rho, 0, 1), leftmargin + (rho-rho2L) * linelength / 2.3, line2y+20);
      rho += 0.1;
    }
  }

  stroke(0);
  fill(0);
  rho1L = (box2left - leftmargin) * 2.3 / linelength + rho2L;
  rho1R = (box2right - leftmargin) * 2.3 / linelength + rho2L;
  rho = ceil(rho1L * 100) / 100.0;
  if (box2) {
    while (rho < ceil (rho1R * 100) / 100.0) {
      line(leftmargin + (rho-rho1L) * linelength / 0.23, line1y, leftmargin + (rho-rho1L) * linelength / 0.23, line1y+10);
      textAlign(CENTER, CENTER);
      text(nf(rho, 0, 2), leftmargin + (rho-rho1L) * linelength / 0.23, line1y+20);
      rho += 0.01;
    }
  }

  rho0L = (box1left - leftmargin) * 0.23 / linelength + rho1L;
  rho0R = (box1right - leftmargin) * 0.23 / linelength + rho1L;
  rho = ceil(rho0L * 1000) / 1000.0;
  if (box1) {
    while (rho < ceil (rho0R * 1000) / 1000.0) {
      line(leftmargin + (rho-rho0L) * linelength / 0.023, line0y, leftmargin + (rho-rho0L) * linelength / 0.023, line0y+10);
      textAlign(CENTER, CENTER);
      text(nf(rho, 0, 3), leftmargin + (rho-rho0L) * linelength / 0.023, line0y+20);
      rho += 0.001;
    }
  }


  strokeWeight(3.0);
  stroke(255, 0, 0);
  if (box1) {
    line(166, 150, 213, 150);
    line(166, 150, 166, 160);
    line(        213, 150, 213, 160);
    line((166+213)/2, 150, (166+213)/2, 140);
  }
  fill(255, 0, 0);
  textFont(fmedium, 18);
  if (box1) {
    text("Current resolution of", (166+213)/2, 78);
    text("vibrating tube sensors", (166+213)/2, 100);
    text("(0.001 g/mL)", (166+213)/2, 122);
  }
}

void mouseDragged() {
  // println(mouseX);
  if (line3y - 150 < mouseY && mouseY < line3y + 50) {
    box3center = mouseX;
  }
  if (line2y - 150 < mouseY && mouseY < line2y + 50) {
    box2center = mouseX;
  }
  if (line1y - 150 < mouseY && mouseY < line1y + 50) {
    box1center = mouseX;
  }
}

//void mouseClicked() {
//  if (mouseX < 20 && mouseY < 20) {
//    save("out.png");
//  }
//}