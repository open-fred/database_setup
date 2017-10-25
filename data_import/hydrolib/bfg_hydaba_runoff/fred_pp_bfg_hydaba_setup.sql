/*
BFG HYDABA runoff measurement data

__copyright__   = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = ""
__author__      = "Ludee"
*/


-- BFG HYDABA timeseries
DROP TABLE IF EXISTS    hydrolib.bfg_hydaba_runoff;
CREATE TABLE            hydrolib.bfg_hydaba_runoff (
    id          serial,
    station     text,
    "type"      varchar(1),
    year        smallint,
    time_series real[],
    CONSTRAINT bfg_hydaba_runoff_pkey PRIMARY KEY (id));

-- grant (oeuser)
ALTER TABLE hydrolib.bfg_hydaba_runoff OWNER TO oeuser;


-- metadata
COMMENT ON TABLE hydrolib.bfg_hydaba_runoff IS '{
    "title": "Bundesanstalt f�r Gew�sserkunde (BfG) - gauge height and runoff measurement data",
    "description": "Extract from Gew�sserkundliche Datenbank HYDABA",
    "language": [ "eng", "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal": 
        {"reference_date": "yearly",
        "start": "01-01",
        "end": "12-31",
        "resolution": "1 d"},
    "sources": [
        {"name": "Bundesanstalt f�r Gew�sserkunde (BfG)", "description": "Daten wurden von dem Bundesanstalt f�r Gew�sserkunde (Wilfried Wiechmann) bereitgestellt.", "url": "http://www.bafg.de/DE/08_Ref/M1/03_Pegelwesen/HYDABA/hydaba_node.html", "license": "none", "copyright": ""} ],
    "license": 
        {"id": "none",
        "name": "none",
        "version": "none",
        "url": "none",
        "instruction": "Datenquelle: Wasserstra�en- und Schifffahrtsverwaltung des Bundes (WSV), bereitgestellt durch die Bundesanstalt f�r Gew�sserkunde (BfG)",
        "copyright": "none"},
    "contributors": [
        {"name": "Ludee", "email": "none", "date": "2017-08-09", "comment": "Create table"},
        {"name": "Ludee", "email": "none", "date": "2017-08-10", "comment": "Add data and metadata"} ],
    "resources": [
        {"name": "hydrolib.bfg_hydaba_runoff",
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none"},
            {"name": "station", "description": "Unique identifier", "unit": "none"},
            {"name": "type", "description": "[W] gauge height in cm; [Q] runoff in m�/s", "unit": "cm or m�/s"},
            {"name": "year", "description": "Reference year", "unit": "none"},
            {"name": "time_series", "description": "Example value", "unit": "cm or m�/s"} ] } ],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('hydrolib.bfg_hydaba_runoff' ::regclass) ::json;
