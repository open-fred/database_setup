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
COMMENT ON TABLE supply.vernetzen_wind_potential_area IS '{
    "title": "VerNetzen - Wind potential Area",
    "description": "",
    "language": [ "eng"  ],
    "spatial": {
        "location": "",
        "extend": "Germany",
        "resolution": ""},
    "temporal": {
        "reference_date": "",
        "start": "",
        "end": "",
        "resolution": ""},
    "sources": [
            {"name": "VerNetzen - Projektabschlussbericht",
            "description": "Sozial-\u00f6kologische und technisch-\u00f6konomische Modellierung von Entwicklungspfaden der Energiewende",
            "url": "http://www.uni-flensburg.de/fileadmin/content/abteilungen/industrial/dokumente/downloads/veroeffentlichungen/forschungsergebnisse/vernetzen-2016-endbericht-online.pdf",
            "license": "",
            "copyright": "\u00a9 VerNetzen"},
            {"name": "OpenStreetMap",
            "description": "Geofabrik - Download - OpenStreetMap Data Extracts",
            "url": "http://download.geofabrik.de/europe/germany.html#",
            "license": "",
            "copyright": "\u00a9 OpenStreetMap contributors"},
            {"name": "Bundesamt f\u00fcr Kartographie und Geod\u00e4sie - Verwaltungsgebiete 1:250 000 (VG250)",
            "description": "",
            "url": "http://www.bkg.bund.de",
            "license": "",
            "copyright": "\u00a9 GeoBasis-DE / BKG 2015"},
            {"name": "Bundesamt f\u00fcr Kartographie und Geod\u00e4sie - Digitale Landschaftsmodell 1:250 000 (DLM250)",
            "description": "",
            "url": "http://www.bkg.bund.de",
            "license": "",
            "copyright": "\u00a9 GeoBasis-DE / BKG 2015"},
            {"name": "Schutzgebietsdaten - Bundesamt f\u00fcr Naturschutz, BfN",
            "description": "Datentr\u00e4ger zur Verf\u00fcgung gestellt durch das BfN (30.06.2015)",
            "url": "https://www.bfn.de/karten.html",
            "license": "",
            "copyright": "\u00a9 Bundesamt f\u00fcr Naturschutz (BfN)"}],
    "license": {
        "id": "ODbL-1.0",
        "name": "Open Data Commons Open Database License 1.0",
        "version": "1.0",
        "url": "https://opendatacommons.org/licenses/odbl/1.0/",
        "instruction": "You are free: To Share, To Create, To Adapt; As long as you: Attribute, Share-Alike, Keep open!",
        "copyright": "\u00a9 VerNetzen"},
    "contributors": [
            {"name": "Ludee",
            "email": " ",
            "date": "01.08.2016",
            "comment": "Create table"},
            {"name": "Ludee",
            "email": " ",
            "date": "07.03.2017",
            "comment": "Add metadata"},
            {"name": "Ludee",
            "email": " ",
            "date": "28.03.2017",
            "comment": "Update metadata"},
            {"name": "Kilian Zimmerer",
            "email": "",
            "date": "2017-10-17",
            "comment": "Update metadata to v1.3"}],
    "resources": [
            {"name": "supply.vernetzen_wind_potential_area",
            "format": "PostgreSQL",
            "fields": [
                {"name": "region_key",
                "description": "Unique identifier",
                "unit": ""},
                {"name": "geom",
                "description": "Geometry",
                "unit": ""}]}],
    "metadata_version": "1.3"}';
