import 'package:geocoding/geocoding.dart' as geocoding;
import 'package:location/location.dart';

class LocationService {
  LocationService();

  final Location location = Location();
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  String lastKnownLocation = '';

  Future<LocationData?> getCurrentLocationData() async {
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
    return null;
  }

  Future<String> getLocationName() async {
    var _locationData = await getCurrentLocationData();
    List<geocoding.Placemark> locationPlacemarks =
        await geocoding.placemarkFromCoordinates(
            _locationData!.latitude!, _locationData.longitude!);
    lastKnownLocation = '${locationPlacemarks.first.administrativeArea}, '
        '${locationPlacemarks.first.isoCountryCode}';
    return lastKnownLocation;
  }
}
