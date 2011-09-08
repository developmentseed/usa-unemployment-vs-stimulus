@colorA: #4c2; /* Dark green */
@color0: #ae4; /* Light green */
@color1: #ee6; /* Yellow green */
@color2: #fa1; /* Orange */
@color3: #e42; /* Red */

#counties {
  [D11_10 >= 1.5 ]                  { polygon-fill:@color3; }
  [D11_10 <  1.5 ][D11_10 >=  0.5 ] { polygon-fill:@color2; }
  [D11_10 <  0.5 ][D11_10 >= -0.5 ] { polygon-fill:@color1; }
  [D11_10 < -0.5 ][D11_10 >= -1.5 ] { polygon-fill:@color0; }
  [D11_10 < -1.5 ]                  { polygon-fill:@colorA; }
  ::pattern {
    [zoom <= 3][SUMTOTAL <= 10000000] {
      polygon-fill:#fff;
      polygon-opacity:0.75;
    }
    [zoom > 3][SUMTOTAL <= 10000000] {
      polygon-pattern-alignment:global;
      polygon-pattern-file:url(images/0-m2.png);
    }
  }
  ::line[zoom > 2] {
    line-color: #fff;
    line-opacity:1;
    [zoom = 3] { line-width:.1; }
    [zoom = 4] { line-width:.25; }
    [zoom = 5] { line-width:.5; }
    [zoom = 6] { line-width:1; }
    [zoom = 7] { line-width:2; }
    [zoom = 8] { line-width:3; }
    [zoom = 9] { line-width:4; }
  }
}

#labels[zoom > 6][PERCAP > 0] {
  ::name {
    text-name:"NAME10";
    text-face-name:"Arial Bold";
    text-size:9;
    text-fill:#fff;
    text-halo-radius:1;
    text-allow-overlap:true;
    [zoom > 7] { text-size:12; text-halo-radius:1.5; text-dy:-2 }
    [zoom > 8] { text-size:15; text-halo-radius:2; }
    /* Delta */
    [D11_10 >= 1.5 ]                  { text-halo-fill:darken(@color3,20%); }
    [D11_10 <  1.5 ][D11_10 >=  0.5 ] { text-halo-fill:darken(@color2,20%); }
    [D11_10 <  0.5 ][D11_10 >= -0.5 ] { text-halo-fill:darken(@color1,20%); }
    [D11_10 < -0.5 ][D11_10 >= -1.5 ] { text-halo-fill:darken(@color0,20%); }
    [D11_10 < -1.5 ]                  { text-halo-fill:darken(@colorA,20%); }
  }
  ::delta[zoom > 7] {
    text-name:"D11_10";
    text-face-name:"Arial Bold";
    text-size:9;
    text-fill:#fff;
    text-halo-radius:1;
    text-allow-overlap:true;
    [zoom > 7] { text-size:12; text-halo-radius:1.5; text-dy:2 }
    [zoom > 8] { text-size:15; text-halo-radius:2; }
    /* Delta */
    [D11_10 >= 1.5 ]                  { text-halo-fill:darken(@color3,20%); }
    [D11_10 <  1.5 ][D11_10 >=  0.5 ] { text-halo-fill:darken(@color2,20%); }
    [D11_10 <  0.5 ][D11_10 >= -0.5 ] { text-halo-fill:darken(@color1,20%); }
    [D11_10 < -0.5 ][D11_10 >= -1.5 ] { text-halo-fill:darken(@color0,20%); }
    [D11_10 < -1.5 ]                  { text-halo-fill:darken(@colorA,20%); }
  }
}

#states[ISO="USA"][zoom > 3] {
  line-color: #fff;
  line-opacity:1;
  [zoom = 4] { line-width:1; }
  [zoom = 5] { line-width:2; }
  [zoom = 6] { line-width:4; }
  [zoom = 7] { line-width:6; }
  [zoom = 8] { line-width:12; }
  [zoom = 9] { line-width:18; }
  ::label[zoom < 7] {
    text-name:"Postal";
    text-face-name:"Arial Bold";
    text-size:9;
    text-fill:#fff;
    text-halo-radius:1;
    text-halo-fill:darken(@color1,30%);
    text-allow-overlap:true;
    [Postal = "CA"],
    [Postal = "SD"],
    [Postal = "TX"],
    [Postal = "AR"],
    [Postal = "AL"],
    [Postal = "SC"] { text-halo-fill:darken(@color2,20%); }
    [Postal = "RI"],
    [Postal = "VT"],
    [Postal = "OH"],
    [Postal = "PA"],
    [Postal = "CO"],
    [Postal = "OR"],
    [Postal = "NV"],
    [Postal = "WY"],
    [Postal = "OK"],
    [Postal = "IL"],
    [Postal = "MI"],
    [Postal = "IN"],
    [Postal = "WV"],
    [Postal = "MA"],
    [Postal = "VA"] { text-halo-fill:darken(@color0,20%); }
    [zoom > 4] { text-size:12; text-halo-radius:1.5; }
    [zoom > 5] { text-size:15; text-halo-radius:2; }
  }
}
