const apiKey =
    'pk.eyJ1IjoiZGViYWp5b3RpMTQiLCJhIjoiY2wyejB2MWhjMDBtcjNjang5YTNzZHVmMCJ9.F4TZQm92a3myeRe_vrn7fg';

class LocationHelper {
  static String generateLocationImage({double latitude, double longitude}) {
    // return 'https://api.mapbox.com/styles/v1/debajyoti14/cl2z14o4z000714pfm1teppkq/tiles/256/$longitude,$latitude/600x300?access_token=pk.eyJ1IjoiZGViYWp5b3RpMTQiLCJhIjoiY2wyejB2MWhjMDBtcjNjang5YTNzZHVmMCJ9.F4TZQm92a3myeRe_vrn7fg';
    return 'https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/pin-l($longitude,$latitude)/$longitude,$latitude,14.25,0,0/600x300?access_token=$apiKey';
  }
}
