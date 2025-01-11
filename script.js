// Get all video thumbnails
const videoThumbnails = document.querySelectorAll('.video-thumbnail');

// Get the iframe element for the video player
const videoPlayer = document.getElementById('videoPlayer');

// Add click event listener to each thumbnail
videoThumbnails.forEach(thumbnail => {
    thumbnail.addEventListener('click', function() {
        const videoId = this.getAttribute('data-video-id');
        changeVideo(videoId);
    });
});

// Function to change the video source in the iframe
function changeVideo(videoId) {
    videoPlayer.src = `https://www.youtube.com/embed/${videoId}`;
}
