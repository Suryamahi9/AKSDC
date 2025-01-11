const apiKey = 'your_api_key_here'; // Replace with your OpenWeatherMap API key
const apiUrl = 'https://api.openweathermap.org/data/2.5/weather?q=';

function getWeather() {
    const city = document.getElementById('city').value;
    if (city) {
        const url = `${apiUrl}${city}&appid=${apiKey}&units=metric`;
        
        fetch(url)
            .then(response => response.json())
            .then(data => {
                if (data.cod === 200) {
                    // Display weather data
                    document.getElementById('city-name').innerText = `Weather in ${data.name}`;
                    document.getElementById('temperature').innerText = `Temperature: ${data.main.temp}°C`;
                    document.getElementById('description').innerText = `Condition: ${data.weather[0].description}`;
                    document.getElementById('humidity').innerText = `Humidity: ${data.main.humidity}%`;
                    document.getElementById('wind-speed').innerText = `Wind Speed: ${data.wind.speed} m/s`;

                    // Show weather info
                    document.querySelector('.weather-info').style.display = 'block';
                } else {
                    alert('City not found. Please try again.');
                }
            })
            .catch(error => alert('Error fetching weather data: ' + error));
    } else {
        alert('Please enter a city name.');
    }
}
