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
		"id": 1,
		"device_name": "DEVICE_1",
		"coordinates": [10.0, 5.0]
	}, {
		"id": 2,
		"device_name": "DEVICE_2",
		"coordinates": [2.0, 15.0]
	}, {
		"id": 3,
		"device_name": "DEVICE_3",
		"coordinates": [12.0, 15.0]
	}]
}
```

# Get the all devices' location according to certain timestamp

https://crowdsourcedcity-api.herokuapp.com/api/devices_scanners/wifi.json?timestamp=DATE (all wifi signals)
https://crowdsourcedcity-api.herokuapp.com/api/devices_scanners/furniture.json?timestamp=DATE (all furniture signals)


DATE format could be something like this: 
YYYY-mm-dd HH:MM:SS 
2019-04-15 12:23:12

Sample Data
```json
{
	"success": true,
	"result": {
		"timestamp": 1556027368000,
		"devices": [{
			"id": 13,
			"mac_address": "dc:fe:07:79:aa:c3",
			"signal_strengths": [{
				"scanner_id": 1,
				"scanner_name": "DEVICE_1",
				"timestamp": 1556027399000,
				"strength": -34.0
			}, {
				"scanner_id": 2,
				"scanner_name": "DEVICE_2",
				"timestamp": 1556027394000,
				"strength": -32.0
			}, {
				"scanner_id": 3,
				"scanner_name": "DEVICE_3",
				"timestamp": 1556027399000,
				"strength": -24.0
			}],
			"coordinates": [7.000000241852127, 10.800000766518192]
		}, {
			"id": 12,
			"mac_address": "dc:fe:07:79:aa:c0",
			"signal_strengths": [{
				"scanner_id": 1,
				"scanner_name": "DEVICE_1",
				"timestamp": 1556027399000,
				"strength": -67.0
			}, {
				"scanner_id": 2,
				"scanner_name": "DEVICE_2",
				"timestamp": 1556027394000,
				"strength": -12.0
			}, {
				"scanner_id": 3,
				"scanner_name": "DEVICE_3",
				"timestamp": 1556027399000,
				"strength": -87.0
			}],
			"coordinates": [-9.340046710129391, -1.9572589193474075]
		}, {
			"id": 11,
			"mac_address": "ac:9e:17:7f:38:a4",
			"signal_strengths": [{
				"scanner_id": 1,
				"scanner_name": "DEVICE_1",
				"timestamp": 1556027399000,
				"strength": -24.0
			}, {
				"scanner_id": 2,
				"scanner_name": "DEVICE_2",
				"timestamp": 1556027394000,
				"strength": -21.0
			}, {
				"scanner_id": 3,
				"scanner_name": "DEVICE_3",
				"timestamp": 1556027399000,
				"strength": -54.0
			}],
			"coordinates": [6.991492441085808, 10.7931939535848]
		}, {
			"id": 10,
			"mac_address": "9e:0f:6f:e7:2b:80",
			"signal_strengths": [{
				"scanner_id": 1,
				"scanner_name": "DEVICE_1",
				"timestamp": 1556027399000,
				"strength": -12.0
			}, {
				"scanner_id": 2,
				"scanner_name": "DEVICE_2",
				"timestamp": 1556027394000,
				"strength": -83.0
			}, {
				"scanner_id": 3,
				"scanner_name": "DEVICE_3",
				"timestamp": 1556027399000,
				"strength": -22.0
			}],
			"coordinates": [14.950618917402295, 9.209876216384524]
		}, {
			"id": 9,
			"mac_address": "96:0f:6f:e7:2b:78",
			"signal_strengths": [{
				"scanner_id": 1,
				"scanner_name": "DEVICE_1",
				"timestamp": 1556027399000,
				"strength": -22.0
			}, {
				"scanner_id": 2,
				"scanner_name": "DEVICE_2",
				"timestamp": 1556027394000,
				"strength": -58.0
			}, {
				"scanner_id": 3,
				"scanner_name": "DEVICE_3",
				"timestamp": 1556027399000,
				"strength": -12.0
			}],
			"coordinates": [7.035521364708813, 10.792895727193251]
		}, {
			"id": 8,
			"mac_address": "92:0f:6f:e7:2b:80",
			"signal_strengths": [{
				"scanner_id": 1,
				"scanner_name": "DEVICE_1",
				"timestamp": 1556027399000,
				"strength": -32.0
			}, {
				"scanner_id": 2,
				"scanner_name": "DEVICE_2",
				"timestamp": 1556027394000,
				"strength": -59.0
			}, {
				"scanner_id": 3,
				"scanner_name": "DEVICE_3",
				"timestamp": 1556027399000,
				"strength": -92.0
			}],
			"coordinates": [-31.459642784479854, -20.01879577384235]
		}, {
			"id": 7,
			"mac_address": "8c:0f:6f:e7:2b:80",
			"signal_strengths": [{
				"scanner_id": 1,
				"scanner_name": "DEVICE_1",
				"timestamp": 1556027399000,
				"strength": -25.0
			}, {
				"scanner_id": 2,
				"scanner_name": "DEVICE_2",
				"timestamp": 1556027394000,
				"strength": -55.0
			}, {
				"scanner_id": 3,
				"scanner_name": "DEVICE_3",
				"timestamp": 1556027399000,
				"strength": -85.0
			}],
			"coordinates": [-4.4313308482199645, 1.6426557417920984]
		}, {
			"id": 6,
			"mac_address": "8c:0f:6f:e7:2b:78",
			"signal_strengths": [{
				"scanner_id": 1,
				"scanner_name": "DEVICE_1",
				"timestamp": 1556027399000,
				"strength": -52.0
			}, {
				"scanner_id": 2,
				"scanner_name": "DEVICE_2",
				"timestamp": 1556027394000,
				"strength": -12.0
			}, {
				"scanner_id": 3,
				"scanner_name": "DEVICE_3",
				"timestamp": 1556027399000,
				"strength": -52.0
			}],
			"coordinates": [6.996000583406162, 10.800799883318767]
		}, {
			"id": 5,
			"mac_address": "88:d7:f6:a7:2a:4c",
			"signal_strengths": [{
				"scanner_id": 1,
				"scanner_name": "DEVICE_1",
				"timestamp": 1556027399000,
				"strength": -43.0
			}, {
				"scanner_id": 2,
				"scanner_name": "DEVICE_2",
				"timestamp": 1556027394000,
				"strength": -33.0
			}, {
				"scanner_id": 3,
				"scanner_name": "DEVICE_3",
				"timestamp": 1556027399000,
				"strength": -53.0
			}],
			"coordinates": [6.994146523832626, 10.795406162152299]
		}, {
			"id": 4,
			"mac_address": "70:4d:7b:11:3a:c8",
			"signal_strengths": [{
				"scanner_id": 1,
				"scanner_name": "DEVICE_1",
				"timestamp": 1556027399000,
				"strength": -33.0
			}, {
				"scanner_id": 2,
				"scanner_name": "DEVICE_2",
				"timestamp": 1556027394000,
				"strength": -23.0
			}, {
				"scanner_id": 3,
				"scanner_name": "DEVICE_3",
				"timestamp": 1556027399000,
				"strength": -83.0
			}],
			"coordinates": [-0.9506189172088494, 4.439505314865408]
		}, {
			"id": 3,
			"mac_address": "20:25:64:b7:91:40",
			"signal_strengths": [{
				"scanner_id": 1,
				"scanner_name": "DEVICE_1",
				"timestamp": 1556027399000,
				"strength": -25.0
			}, {
				"scanner_id": 2,
				"scanner_name": "DEVICE_2",
				"timestamp": 1556027394000,
				"strength": -55.0
			}, {
				"scanner_id": 3,
				"scanner_name": "DEVICE_3",
				"timestamp": 1556027399000,
				"strength": -25.0
			}],
			"coordinates": [7.0122795796319295, 10.797544084073614]
		}]
	}
}
```