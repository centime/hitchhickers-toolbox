from json import loads, dump
from urllib.request import urlopen

API = 'http://hitchwiki.org/maps/api/'

"""
http://hitchwiki.org/maps/
http://hitchwiki.org/maps/api/?countries&coordinates
http://hitchwiki.org/maps/api/?bounds=44.9211366226808,47.61642320521966,-4.316802978515591,8.701995849609363
http://hitchwiki.org/maps/api/?place=20778
http://hitchwiki.org/maps/ajax/place.php?id=20778&lang=en_UK

http://wiki.openstreetmap.org/wiki/OSM_XML
"""

response = urlopen(API+'?bounds=44.9211366226808,47.61642320521966,-4.316802978515591,8.701995849609363')
spots = loads(response.readall().decode('utf-8'))

for spot in spots:
	spot.update(loads(urlopen(API+'?place='+spot['id']).readall().decode('utf-8')))

with open('spots_fr.json', 'w') as outfile:
    xdump(spots, outfile)