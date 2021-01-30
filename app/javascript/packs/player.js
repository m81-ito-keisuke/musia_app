let TARGET = document.getElementById('sound');
    let isPlaying = false;

  function play(){
    if (isPlaying) {
    TARGET.pause()
    TARGET.currentTime = 0;
  } else {
    TARGET.currentTime = 0;
    TARGET.play();
  }

  };
  TARGET.onplaying = function() {
  isPlaying = true;
  };
  TARGET.onpause = function() {
  isPlaying = false;
  }; 

  function Volume(flag) {
      if (0 < flag) {
        if (0.9 < TARGET.volume) {
          TARGET.volume = 1;
        } else {
          TARGET.volume += 0.1;
        }
      } else {
        if (TARGET.volume < 0.1) {
          TARGET.volume = 0;
        }
        else {
          TARGET.volume -= 0.1;
        }
      }
    }