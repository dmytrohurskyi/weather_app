import 'package:location/location.dart';

class LocationService {
  /*LocationService();

  final Location location = Location();
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  late LocationData _locationData;*/

  /*Future<LocationData> getCurrentLocationData() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
    } else {
      _permissionGranted = await location.hasPermission();
      if (_permissionGranted == PermissionStatus.denied) {
        _permissionGranted = await location.requestPermission();
      } else {
        return await location.getLocation();
      }
    }
    return ;
  }*/
}
