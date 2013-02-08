Map {
  background-color: #f6f6f6;
}
 
#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}

#countries::fill {
  polygon-fill:@land;
  polygon-gamma:0.75;
  [ADM0_A3='USA'] { polygon-fill:lighten(@land, 7); }
}

#country-border::glow {
  [zoom>2] {
    line-color:#85c5d3;
    line-opacity:0.2;
    line-width:3;
  }
}
#country-border {
  [zoom>2] {
    line-dasharray:2,2,10,2;
    line-width:0.2;
  }
}

#state-line::glow[ADM0_A3='USA'] {
  [zoom>2] {
    line-color:#85c5d3;
    line-opacity:0.2;
    line-width:3;
  }
}
#state-line[ADM0_A3='USA'] {
  [zoom>2] {
    line-dasharray:2,2,10,2;
    line-width:0.2;
  }
}
#counties {
  [zoom>=7] {
  line-color: #ccc;
  line-width: 0.5;
    }
}

#coastline::glow_outer {
   line-color: #85c5d3;
   line-opacity: 0.2;
   line-width: 1;
}

@land: #e9e9e9;
@water: #f6f6f6;
@waterline: #b8dee6;

#lake[zoom>=0][ScaleRank<=1],
#lake[zoom>=1][ScaleRank=1],
#lake[zoom>=2][ScaleRank=1],
#lake[zoom>=3][ScaleRank=1],
#lake[zoom>=4][ScaleRank=1],
#lake[zoom>=5][ScaleRank=7],
#lake[zoom>=6][ScaleRank=8],
#lake[zoom>=7][ScaleRank=9] {
  ::outline { line-color:@waterline; }
  ::fill { polygon-fill:@water; }
}

#test {
  marker-width:3;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
}
