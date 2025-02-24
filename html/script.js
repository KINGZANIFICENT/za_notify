window.addEventListener('message', function(event) {
    if (event.data.action === 'displaySubtitle') {
        let subtitle = document.getElementById('subtitle');
        let audio = document.getElementById('notify-sound');
        subtitle.innerHTML = event.data.text;
        subtitle.classList.remove('hidden');
        // Play the sound when the subtitle is shown
        audio.play();
        // Keep the subtitle visible for the provided duration or default to 8000ms (8 seconds)
        setTimeout(() => {
            subtitle.classList.add('hidden');
        }, event.data.duration || 8000);
    }
});
