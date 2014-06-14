/* @pjs preload="001.jpg, 002.jpg, 003.jpg, 004.jpg, 005.jpg, 006.jpg, 007.jpg, 008.jpg, 009.jpg, 010.jpg, 011.jpg, 012.jpg, 013.jpg, 014.jpg, 
015.jpg, 016.jpg, 017.jpg, 018.jpg, 019.jpg, 020.jpg, 021.jpg, 022.jpg, 023.jpg, 024.jpg, 025.jpg, 026.jpg, 027.jpg, 028.jpg, 029.jpg, 030.jpg, 
031.jpg, 032.jpg, 033.jpg, 034.jpg, 035.jpg, 036.jpg, 037.jpg, 038.jpg, 039.jpg, 040.jpg, 041.jpg, 042.jpg, 043.jpg, 044.jpg, 045.jpg, 046.jpg, 
047.jpg, 048.jpg, 049.jpg, 050.jpg, 051.jpg, 052.jpg, 053.jpg, 054.jpg, 055.jpg, 056.jpg, 057.jpg, 058.jpg, 059.jpg, 060.jpg, 061.jpg, 062.jpg, 
063.jpg, 064.jpg, 065.jpg, 066.jpg, 067.jpg, 068.jpg, 069.jpg, 070.jpg, 071.jpg, 072.jpg, 073.jpg, 074.jpg, 075.jpg, 076.jpg, 077.jpg, 078.jpg, 
079.jpg, 080.jpg, 081.jpg, 082.jpg, 083.jpg, 084.jpg, 085.jpg, 086.jpg, 087.jpg, 088.jpg, 089.jpg, 090.jpg, 091.jpg, 092.jpg, 093.jpg, 094.jpg, 
095.jpg, 096.jpg, 097.jpg, 098.jpg, 099.jpg, 100.jpg, 101.jpg, 102.jpg, 103.jpg, 104.jpg, 105.jpg, 106.jpg, 107.jpg, 108.jpg, 109.jpg, 110.jpg, 
111.jpg, 112.jpg, 113.jpg, 114.jpg, 115.jpg, 116.jpg, 117.jpg, 118.jpg, 119.jpg, 120.jpg, 121.jpg, 122.jpg, 123.jpg, 124.jpg, 125.jpg, 126.jpg, 
127.jpg, 128.jpg, 129.jpg, 130.jpg, 131.jpg, 132.jpg, 133.jpg, 134.jpg, 135.jpg, 136.jpg, 137.jpg, 138.jpg, 139.jpg, 140.jpg, 141.jpg, 142.jpg, 
143.jpg, 144.jpg, 145.jpg, 146.jpg, 147.jpg, 148.jpg, 149.jpg, 150.jpg, 151.jpg, 152.jpg, 153.jpg, 154.jpg, 155.jpg, 156.jpg, 157.jpg, 158.jpg, 
159.jpg, 160.jpg, 161.jpg, 162.jpg, 163.jpg, 164.jpg, 165.jpg, 166.jpg, 167.jpg, 168.jpg, 169.jpg, 170.jpg, 171.jpg, 172.jpg, 173.jpg, 174.jpg, 
175.jpg, 176.jpg, 177.jpg, 178.jpg, 179.jpg, 180.jpg, 181.jpg, 182.jpg, 183.jpg, 184.jpg, 185.jpg, 186.jpg, 187.jpg, 188.jpg, 189.jpg, 190.jpg, 
191.jpg, 192.jpg, 193.jpg, 194.jpg, 195.jpg, 196.jpg, 197.jpg, 198.jpg, 199.jpg, 200.jpg, 201.jpg, 202.jpg, 203.jpg, 204.jpg, 205.jpg, 206.jpg, 
207.jpg, 208.jpg, 209.jpg, 210.jpg, 211.jpg, 212.jpg, 213.jpg, 214.jpg, 215.jpg, 216.jpg, 217.jpg, 218.jpg, 219.jpg, 220.jpg, 221.jpg, 222.jpg, 
223.jpg, 224.jpg, 225.jpg, 226.jpg, 227.jpg, 228.jpg, 229.jpg, 230.jpg, 231.jpg, 232.jpg, 233.jpg, 234.jpg, 235.jpg, 236.jpg, 237.jpg, 238.jpg, 
239.jpg, 240.jpg, 241.jpg, 242.jpg, 243.jpg, 244.jpg, 245.jpg, 246.jpg, 247.jpg, 248.jpg, 249.jpg, 250.jpg, 251.jpg, 252.jpg, 253.jpg, 254.jpg, 
255.jpg, 256.jpg, 257.jpg, 258.jpg, 259.jpg, 260.jpg, 261.jpg, 262.jpg, 263.jpg, 264.jpg, 265.jpg, 266.jpg, 267.jpg, 268.jpg, 269.jpg, 270.jpg, 
271.jpg, 272.jpg, 273.jpg, 274.jpg, 275.jpg, 276.jpg, 277.jpg, 278.jpg, 279.jpg, 280.jpg, 281.jpg, 282.jpg, 283.jpg, 284.jpg, 285.jpg, 286.jpg, 
287.jpg, 288.jpg, 289.jpg, 290.jpg, 291.jpg, 292.jpg, 293.jpg, 294.jpg, 295.jpg, 296.jpg, 297.jpg, 298.jpg, 299.jpg, 300.jpg, 301.jpg, 302.jpg, 
303.jpg, 304.jpg, 305.jpg, 306.jpg, 307.jpg, 308.jpg, 309.jpg, 310.jpg, 311.jpg, 312.jpg, 313.jpg, 314.jpg, 315.jpg, 316.jpg, 317.jpg, 318.jpg, 
319.jpg, 320.jpg"; */ 

// Created by Gerben Neven (www.gerbyzation.nl) 
// Photo's are curtesy of fellow Communication & Multimedia Design students at Avans Breda
// Copyright 2014 - All Rights Served - You're not allowed to reuse the photos in any possible way

// Number of images present
int maxImages = 319;

// Variable to store the random chosen imageIndex value
int imageIndex;

// Creating a image array called portret
PImage[] portret = new PImage[maxImages];

// ammount of rows and columns
int ammountRows = 8;
int ammountColumns = 8;

void setup() {
  background(255);
  size(1000,1000);
  
  // Loading all the pictures in an array
  for ( int i = 1; i<portret.length; i ++) { 
    portret[i] = loadImage(nf(i,3) + ".jpg"); 
  }
}

void draw() {
  // Choosing a random imageIndex number
  imageIndex = floor(random(1,maxImages));
  
  // Picking a random rectangle
  int locX = floor(random(ammountRows))* 125;
  int locY = floor(random(ammountColumns))* 125;

  // Converting to grayscale colorspace
  portret[imageIndex].filter(GRAY);
  
  // Copy and pasting part of the  random chosen image
  copy(portret[imageIndex],locX,locY,250,125,locX,locY,250,125);  
}

