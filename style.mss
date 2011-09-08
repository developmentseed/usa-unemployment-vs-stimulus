@colorA: #6c4; /* Dark green */
@color0: #ae4; /* Light green */
@color1: #de4; /* Yellow green */
@color2: #fa1; /* Orange */
@color3: #d14; /* Red */

#counties {
  [VALD >= 0 ]   { polygon-fill:@color2; }
  [VALD >= 0.5 ] { polygon-fill:@color3; }
  [VALD < 0 ]    { polygon-fill:@color1; }
  [VALD < -0.5 ] { polygon-fill:@color0; }
  [VALD < -3 ]   { polygon-fill:@colorA; }
  ::pattern {
    [zoom <= 3][PERCAP <= 800] {
      polygon-fill:#fff;
      polygon-opacity:0;
      [PERCAP >= 0][PERCAP <= 200]     { polygon-opacity:.75; }
      [PERCAP > 200 ][PERCAP <= 400 ] { polygon-opacity:.5; }
      [PERCAP > 400 ][PERCAP <= 800 ] { polygon-opacity:.25; }
    }
    [zoom > 3][PERCAP <= 800] {
      polygon-pattern-alignment:global;
      polygon-pattern-file:url(images/0-m2.png);
      [PERCAP >= 0][PERCAP <= 200]     { polygon-pattern-file:url(images/0-m2.png); }
      [PERCAP > 200 ][PERCAP <= 400 ] { polygon-pattern-file:url(images/0-m1.png); }
      [PERCAP > 400 ][PERCAP <= 800 ] { polygon-pattern-file:url(images/0-m0.png); }
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
    [VALD >= 0 ]   { text-halo-fill:darken(@color2,20%); }
    [VALD >= 0.5 ] { text-halo-fill:darken(@color3,20%); }
    [VALD < 0 ]    { text-halo-fill:darken(@color1,20%); }
    [VALD < -0.5 ] { text-halo-fill:darken(@color0,20%); }
    [VALD < -3 ]   { text-halo-fill:darken(@colorA,20%); }
  }
  ::delta[zoom > 7] {
    text-name:"VALD";
    text-face-name:"Arial Bold";
    text-size:9;
    text-fill:#fff;
    text-halo-radius:1;
    text-allow-overlap:true;
    [zoom > 7] { text-size:12; text-halo-radius:1.5; text-dy:2 }
    [zoom > 8] { text-size:15; text-halo-radius:2; }
    /* Delta */
    [VALD >= 0 ]   { text-halo-fill:darken(@color2,20%); }
    [VALD >= 0.5 ] { text-halo-fill:darken(@color3,20%); }
    [VALD < 0 ]    { text-halo-fill:darken(@color1,20%); }
    [VALD < -0.5 ] { text-halo-fill:darken(@color0,20%); }
    [VALD < -3 ]   { text-halo-fill:darken(@colorA,20%); }
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
}
