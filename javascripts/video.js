// video = document.querySelector('video');
videos = document.querySelectorAll('video');
// console.log(videos);

function togglePlay() {
  console.log(this);
  if (this.paused) {
    this.play();
  } else {
    this.pause();
  };
};

// video.addEventListener('click', togglePlay);

videos.forEach(video => {
  video.addEventListener('click', togglePlay);
});

// videos.forEach(function(video) {
//   video.addEventListener('click', function() {
//     if (video.paused) {
//       video.play();
//     } else {
//       video.pause();
//     };
//   });
// });



