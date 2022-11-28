import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _lastAudio = prefs.getString('ff_lastAudio')?.ref ?? _lastAudio;
    _currentOfflineAudio =
        prefs.getString('ff_currentOfflineAudio') ?? _currentOfflineAudio;
    _cacheAudios = prefs.getStringList('ff_cacheAudios') ?? _cacheAudios;
    _titleAudios = prefs.getStringList('ff_titleAudios') ?? _titleAudios;
  }

  late SharedPreferences prefs;

  DocumentReference? _lastAudio;
  DocumentReference? get lastAudio => _lastAudio;
  set lastAudio(DocumentReference? _value) {
    if (_value == null) {
      return;
    }
    _lastAudio = _value;
    prefs.setString('ff_lastAudio', _value.path);
  }

  String? _currentOfflineAudio;
  String? get currentOfflineAudio => _currentOfflineAudio;
  set currentOfflineAudio(String? _value) {
    if (_value == null) {
      return;
    }
    _currentOfflineAudio = _value;
    prefs.setString('ff_currentOfflineAudio', _value);
  }

  List<String> _cacheAudios = [];
  List<String> get cacheAudios => _cacheAudios;
  set cacheAudios(List<String> _value) {
    _cacheAudios = _value;
    prefs.setStringList('ff_cacheAudios', _value);
  }

  void addToCacheAudios(String _value) {
    _cacheAudios.add(_value);
    prefs.setStringList('ff_cacheAudios', _cacheAudios);
  }

  void removeFromCacheAudios(String _value) {
    _cacheAudios.remove(_value);
    prefs.setStringList('ff_cacheAudios', _cacheAudios);
  }

  List<String> _titleAudios = [];
  List<String> get titleAudios => _titleAudios;
  set titleAudios(List<String> _value) {
    _titleAudios = _value;
    prefs.setStringList('ff_titleAudios', _value);
  }

  void addToTitleAudios(String _value) {
    _titleAudios.add(_value);
    prefs.setStringList('ff_titleAudios', _titleAudios);
  }

  void removeFromTitleAudios(String _value) {
    _titleAudios.remove(_value);
    prefs.setStringList('ff_titleAudios', _titleAudios);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
