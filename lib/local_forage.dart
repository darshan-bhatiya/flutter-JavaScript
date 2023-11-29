@JS()
library local_forage;

import 'package:js/js.dart';

@JS('localforage.setItem')
external Object setItem(String key, String val);

@JS('localforage.getItem')
external Object getItem(String key);
 
