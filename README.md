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

```