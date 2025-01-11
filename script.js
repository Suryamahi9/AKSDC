// Get the video player iframe element
const videoPlayer = document.getElementById("video-player");

// Get all video thumbnails
const videoThumbnails = document.querySelectorAll(".video");

// Add event listeners to video thumbnails to update the video player
videoThumbnails.forEach(video => {
  video.addEventListener("click", function() {
    const videoId = this.getAttribute("data-video-id"); // Get the video ID from data attribute
    // Update the iframe src to load the clicked video
    videoPlayer.src = `https://www.youtube.com/embed/${videoId}`;
  });
});
