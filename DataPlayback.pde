import java.io.*;

ArrayList<BodySerialized> data = new ArrayList<BodySerialized>();
int dataIndex;

void setup() {
  size(400, 400, FX2D);
  strokeWeight(5);
  stroke(255);
  data = readObject();
}
void draw() {
  background(0);
  translate(width/2, height/2);

  if (dataIndex >= data.size()-1) {
    dataIndex = 0;
  }
  if (dataIndex < data.size()-1) {
    PVector hd = data.get(dataIndex).hd;
    PVector hdr = data.get(dataIndex).hdr;
    PVector hdl = data.get(dataIndex).hdl;
    PVector ebr = data.get(dataIndex).ebr;
    PVector ebl = data.get(dataIndex).ebl;
    PVector sdr = data.get(dataIndex).sdr;
    PVector sdl = data.get(dataIndex).sdl;

    ellipse(hd.x, hd.y, 15, 15);
    ellipse(hdr.x, hdr.y, 8, 8);
    ellipse(hdl.x, hdl.y, 8, 8);
    ellipse(ebr.x, ebr.y, 8, 8);
    ellipse(ebl.x, ebl.y, 8, 8);    
    ellipse(sdr.x, sdr.y, 8, 8);
    ellipse(sdl.x, sdl.y, 8, 8);

    line(hdr.x, hdr.y, ebr.x, ebr.y);
    line(hdl.x, hdl.y, ebl.x, ebl.y);
    line(sdr.x, sdr.y, ebr.x, ebr.y);
    line(sdl.x, sdl.y, ebl.x, ebl.y);
  }
  dataIndex++;
}
