## Crowd Sourced City API Server

https://crowdsourcedcity-api.herokuapp.com


## API 


# Get the scanners' information

https://crowdsourcedcity-api.herokuapp.com/api/scanners.json


Sample Data
```json
{
	"success": true,
	"scanners": [{
		"id": 11,
		"device_name": "dylan",
		"coordinates": [9.0, 3.0]
	}, {
		"id": 10,
		"device_name": "sarah",
		"coordinates": [15.0, 11.0]
	}, {
		"id": 12,
		"device_name": "yuchen",
		"coordinates": [20.0, 3.0]
	}]
}
```

# Get the all devices' location according to certain timestamp

https://crowdsourcedcity-api.herokuapp.com/api/devices_scanners.json?timestamp=DATE 

DATE format could be something like this: 
YYYY-mm-dd HH:MM:SS 
2019-05-01 19:06:00

Sample Data
```json
{
	"success": true,
	"result": {
		"timestamp": 1556752085000,
		"devices": [{
			"id": 9546,
			"type": "wifi",
			"mac_address": "9e:25:81:eb:c9:3d",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -83.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -76.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -88.0
			}],
			"coordinates": [4.029123851896091, 20.31798341834824]
		}, {
			"id": 9545,
			"type": "wifi",
			"mac_address": "88:79:7e:0e:1c:dc",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -79.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -74.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -83.0
			}],
			"coordinates": [10.674612331883115, 10.936447396151213]
		}, {
			"id": 9538,
			"type": "bluetooth",
			"mac_address": "46:f2:d2:00:0c:92",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -84.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -92.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -87.0
			}],
			"coordinates": [1.1557240092740322, -63.151042537009275]
		}, {
			"id": 9521,
			"type": "bluetooth",
			"mac_address": "64:ea:77:9b:12:b3",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -95.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -90.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -92.0
			}],
			"coordinates": [62.77033797493283, 65.11450442482263]
		}, {
			"id": 9518,
			"type": "bluetooth",
			"mac_address": "4f:f7:b2:d2:16:7c",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -88.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -97.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752075152,
				"strength": -89.0
			}],
			"coordinates": [7.258841570802272, -171.69339864551586]
		}, {
			"id": 9505,
			"type": "bluetooth",
			"mac_address": "4d:c1:7f:81:d4:d3",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -97.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -88.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -90.0
			}],
			"coordinates": [131.29184496959363, 99.78038374021895]
		}, {
			"id": 9494,
			"type": "bluetooth",
			"mac_address": "73:31:96:68:62:aa",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -95.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -97.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -86.0
			}],
			"coordinates": [111.57195544574994, -132.07549551148145]
		}, {
			"id": 9492,
			"type": "bluetooth",
			"mac_address": "57:d1:af:a5:0b:d3",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -87.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -91.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -89.0
			}],
			"coordinates": [1.1098625030982703, -28.681193422155474]
		}, {
			"id": 9491,
			"type": "bluetooth",
			"mac_address": "4b:fe:db:b1:ce:2d",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -89.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -92.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -89.0
			}],
			"coordinates": [14.5, -36.39943098456567]
		}, {
			"id": 9489,
			"type": "bluetooth",
			"mac_address": "2c:41:a1:e3:6d:51",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -82.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -80.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -79.0
			}],
			"coordinates": [20.119626363733502, 6.505809806993344]
		}, {
			"id": 9481,
			"type": "bluetooth",
			"mac_address": "60:c7:2b:27:c4:df",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -95.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -98.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -95.0
			}],
			"coordinates": [14.5, -99.42074357260339]
		}, {
			"id": 9468,
			"type": "bluetooth",
			"mac_address": "2c:41:a1:e3:7c:ee",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -80.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -92.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -95.0
			}],
			"coordinates": [-100.55001964902243, -0.40954756510638646]
		}, {
			"id": 9463,
			"type": "bluetooth",
			"mac_address": "5e:94:52:a0:8a:bc",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -78.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -82.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -95.0
			}],
			"coordinates": [-103.39284886377796, 84.04021689775114]
		}, {
			"id": 9460,
			"type": "bluetooth",
			"mac_address": "3a:7e:64:9a:4a:46",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -84.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -80.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -78.0
			}],
			"coordinates": [27.188511230624233, 9.146429348851283]
		}, {
			"id": 9451,
			"type": "bluetooth",
			"mac_address": "58:5d:85:2d:16:a3",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -77.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -93.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -93.0
			}],
			"coordinates": [-69.87955763619796, -47.61222352262372]
		}, {
			"id": 9422,
			"type": "bluetooth",
			"mac_address": "7b:77:45:af:20:21",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -91.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -99.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752075152,
				"strength": -84.0
			}],
			"coordinates": [59.73430984151271, -262.3115781021971]
		}, {
			"id": 9411,
			"type": "bluetooth",
			"mac_address": "53:e1:82:04:fb:13",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -97.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -95.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -103.0
			}],
			"coordinates": [-244.95115395076442, 264.1098943902423]
		}, {
			"id": 9403,
			"type": "wifi",
			"mac_address": "02:1a:11:fe:91:d5",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -82.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -86.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -90.0
			}],
			"coordinates": [-4.477337071862209, 10.506508258094149]
		}, {
			"id": 9381,
			"type": "bluetooth",
			"mac_address": "58:8f:ff:bd:48:ba",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -101.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -91.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752075152,
				"strength": -84.0
			}],
			"coordinates": [313.86330636014173, 130.02989044300858]
		}, {
			"id": 9335,
			"type": "bluetooth",
			"mac_address": "88:c6:26:5e:34:c1",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -89.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -95.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752075152,
				"strength": -99.0
			}],
			"coordinates": [-173.82596596920322, 38.473328776804095]
		}, {
			"id": 9262,
			"type": "bluetooth",
			"mac_address": "41:b2:c9:be:e9:e9",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -98.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -93.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -85.0
			}],
			"coordinates": [192.01451137137238, 24.094531360844414]
		}, {
			"id": 9249,
			"type": "bluetooth",
			"mac_address": "5f:9a:7a:f7:b4:19",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -97.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -102.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752075152,
				"strength": -95.0
			}],
			"coordinates": [61.33383921975926, -304.2236429429431]
		}, {
			"id": 9174,
			"type": "bluetooth",
			"mac_address": "64:66:c8:2d:bc:2c",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -88.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -96.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752075152,
				"strength": -89.0
			}],
			"coordinates": [7.258841570802272, -137.0844039231098]
		}, {
			"id": 9133,
			"type": "bluetooth",
			"mac_address": "6f:20:28:e4:ed:75",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -96.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -76.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -97.0
			}],
			"coordinates": [-10.670177979931706, 218.59942008065477]
		}, {
			"id": 8939,
			"type": "bluetooth",
			"mac_address": "72:a7:4f:17:ee:a9",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -46.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -71.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -95.0
			}],
			"coordinates": [-109.40876762621609, 96.07673494317291]
		}, {
			"id": 8700,
			"type": "bluetooth",
			"mac_address": "73:fb:9a:bc:4e:d9",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -73.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -82.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -79.0
			}],
			"coordinates": [9.384868144160235, -5.798943660033415]
		}, {
			"id": 6379,
			"type": "wifi",
			"mac_address": "00:6b:f1:66:49:44",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -83.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -82.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -89.0
			}],
			"coordinates": [0.6803547674317165, 17.169715162640255]
		}, {
			"id": 6378,
			"type": "wifi",
			"mac_address": "00:6b:f1:66:49:43",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -82.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -81.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -91.0
			}],
			"coordinates": [-9.095152104042459, 24.231767060971304]
		}, {
			"id": 6377,
			"type": "wifi",
			"mac_address": "00:6b:f1:66:49:42",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -83.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -82.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -90.0
			}],
			"coordinates": [-3.2555325349792668, 20.121630639448494]
		}, {
			"id": 6376,
			"type": "wifi",
			"mac_address": "00:6b:f1:66:49:41",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -83.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -81.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -90.0
			}],
			"coordinates": [-3.2555325349792668, 21.532033622387956]
		}, {
			"id": 6375,
			"type": "wifi",
			"mac_address": "00:6b:f1:66:49:40",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -83.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -82.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -90.0
			}],
			"coordinates": [-3.2555325349792668, 20.121630639448494]
		}, {
			"id": 6352,
			"type": "wifi",
			"mac_address": "5c:dc:96:ba:75:83",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -80.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -74.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -79.0
			}],
			"coordinates": [15.218463988886754, 8.51644663811777]
		}, {
			"id": 3874,
			"type": "wifi",
			"mac_address": "ac:07:5f:f5:2a:aa",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -84.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -61.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -83.0
			}],
			"coordinates": [15.95238731504732, 15.869503612791192]
		}, {
			"id": 3744,
			"type": "bluetooth",
			"mac_address": "6d:07:36:45:7d:ab",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -57.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -75.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -88.0
			}],
			"coordinates": [-23.640900291654976, 29.2602265755529]
		}, {
			"id": 2547,
			"type": "bluetooth",
			"mac_address": "b8:e8:56:46:49:8b",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -70.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752092111,
				"strength": -72.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752090034,
				"strength": -87.0
			}],
			"coordinates": [-16.38656980043571, 27.4411439527112]
		}, {
			"id": 9527,
			"type": "wifi",
			"mac_address": "64:a2:f9:ec:17:f5",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -86.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752075569,
				"strength": -83.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752075152,
				"strength": -89.0
			}],
			"coordinates": [5.896000809314235, 18.749512700602786]
		}, {
			"id": 9509,
			"type": "bluetooth",
			"mac_address": "74:49:52:4f:02:85",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -98.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752075569,
				"strength": -77.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752075152,
				"strength": -98.0
			}],
			"coordinates": [14.5, 273.25230663914584]
		}, {
			"id": 9470,
			"type": "bluetooth",
			"mac_address": "7a:78:78:ce:c0:cf",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -95.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752075569,
				"strength": -85.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752075152,
				"strength": -91.0
			}],
			"coordinates": [74.47002779164103, 99.68418871930287]
		}, {
			"id": 9461,
			"type": "bluetooth",
			"mac_address": "4c:72:f2:34:6a:5f",
			"signal_strengths": [{
				"scanner_id": 11,
				"scanner_name": "dylan",
				"timestamp": 1556752086689,
				"strength": -97.0
			}, {
				"scanner_id": 10,
				"scanner_name": "sarah",
				"timestamp": 1556752075569,
				"strength": -92.0
			}, {
				"scanner_id": 12,
				"scanner_name": "yuchen",
				"timestamp": 1556752075152,
				"strength": -100.0
			}],
			"coordinates": [-87.6426378137929, 212.50022200304628]
		}]
	}
}
```