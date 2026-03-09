void setup() {
  size(480, 720);  // wider + taller
  noLoop();
}

void draw() {
  background(240);
  stroke(0);
  noFill();

  float x = 0;
  float y = 0;
  float w = width;
  float h = height;

  drawRecordPlayerScreen(x, y, w, h);
}

void drawRecordPlayerScreen(float x, float y, float w, float h) {
  // Outer border
  rect(x + 15, y + 15, w - 30, h - 30);

  // SPLIT LINE at 4/7 height (buttons above, playlist below)
  float splitY = y + 15 + (h - 30) * (4.0/7.0);
  line(x + 15, splitY, x + w - 15, splitY);

  // TOP SECTION (smaller record player + modules) - above split line
  float topSectionH = splitY - (y + 15) - 20;  // space above split
  float recordPanelW = w * 0.7;                 // smaller section
  rect(x + 20, y + 25, recordPanelW, topSectionH);

  // RECORD (two circles) - smaller
  float recordCx = x + 20 + recordPanelW * 0.65;
  float recordCy = y + 25 + topSectionH * 0.45;
  float outerR = topSectionH * 0.5;    // much smaller
  float innerR = outerR * 0.55;
  ellipse(recordCx, recordCy, outerR, outerR);
  ellipse(recordCx, recordCy, innerR, innerR);

  // FOUR MODULE SQUARES - closer to record
  float sqSize = 32;
  float sqGap  = 6;
  float sqLeftMargin = 12;
  float startX = x + 20 + sqLeftMargin;     // closer to record
  float startY = y + 35;

  for (int i = 0; i < 4; i++) {
    float sx = startX;
    float sy = startY + i * (sqSize + sqGap);
    rect(sx, sy, sqSize, sqSize);
  }

  // BUTTONS AREA (right side above split line)
  float btnAreaX = x + 20 + recordPanelW + 15;
  float btnAreaW = w - 35 - (x + 20 + recordPanelW + 15);
  float btnAreaH = topSectionH;
  rect(btnAreaX, y + 25, btnAreaW, btnAreaH);

  // BOTTOM SECTION (playlist) - below split line
  float listTop = splitY + 10;
  float listW = w - 40;
  float listH = (h - listTop - 25) / 5.0;  // room for 5 songs
  for (int i = 0; i < 5; i++) {
    float ry = listTop + i * (listH + 8);
    rect(x + 20, ry, listW, listH);
  }
}
