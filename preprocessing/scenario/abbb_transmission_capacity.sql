/*
A description of the module (short but could be more than one line).
Modules names should have short, all-lowercase names. 
The module name may have underscores if this improves readability.

__copyright__ 	= "Copyright Reiner Lemoine Institut gGmbH"
__license__ 	= "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__ 	= "https://github.com/openego/data_processing/blob/master/LICENSE"
__author__ 	= "KilianZimmerer"
__contains__	= "url"
*/

-- metadata
COMMENT ON TABLE scenario.abbb_transmission_capacity IS '{
    "title": "Transmission capacities",
    "description": "Transmission capacities",
    "language": [ ""  ],
    "spatial": {
        "location": "",
        "extend": "",
        "resolution": ""},
    "temporal": {
        "reference_date": "",
        "start": "",
        "end": "",
        "resolution": ""},
    "sources": [
            {"name": "",
            "description": "",
            "url": "",
            "license": "",
            "copyright": ""}],
    "license": {
        "id": "",
        "name": "",
        "version": "",
        "url": "",
        "instruction": "",
        "copyright": ""},
    "contributors": [
            {"name": "Ludwig H\u00fclk",
            "email": "ludwig.huelk@rl-institut.de",
            "date": "2016-09-08",
            "comment": "Created table, added description"},
            {"name": "Kilian Zimmerer",
            "email": "",
            "date": "2017-10-17",
            "comment": "Update metadata to v1.3"}],
    "resources": [
            {"name": "scenario.abbb_transmission_capacity",
            "format": "PostgreSQL",
            "fields": [
                {"name": "id",
                "description": "Unique identifier",
                "unit": ""},
                {"name": "scenario",
                "description": "Scenario",
                "unit": ""},
                {"name": "from_region",
                "description": "Region mit Endpunkt einer \u00dcbertragungskapazit\u00e4t",
                "unit": ""},
                {"name": "to_region",
                "description": "Zweite Region mit Endpunkt einer \u00dcbertragungskapazit\u00e4t",
                "unit": ""},
                {"name": "capacity",
                "description": "\u00dcbertragungskapazit\u00e4t",
                "unit": "MW"}]}],
    "metadata_version": "1.3"}';
