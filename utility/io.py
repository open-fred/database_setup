"""Database IO
This script contains functions for the database connection
"""

__copyright__   = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = "https://www.gnu.org/licenses/agpl-3.0.en.html"
__author__      = "Ludee"

import os
import sys
import time
from sqlalchemy import create_engine
import getpass
import logging
import urllib.request
import zipfile


def database_session(section):
    """
    Get SQLAlchemy session object with valid connection to OEDB

    Parameters
    ----------
    section : str
        section (database) in config file

    Returns
    -------
    conn : SQLAlchemy connection object
    """

    # get session object by oemof.db tools (requires .oemof/config.ini)
    try:
        from oemof import db
        conn = db.connection(section=section)

    except:
        print('Please provide connection parameters to database:\n' +
              'Hit [Enter] to take defaults')

        host = input('host (default 141.44.24.88): ') or 'oe.iws.cs.ovgu.de'
        port = input('port (default 5432): ') or '5432'
        database = input("database name (default 'oedb'): ") or 'oedb'
        user = input('user (default postgres): ')
        # password = input('password: ')
        password = getpass.getpass(prompt='password: ',
                                   stream=sys.stderr)
        conn = create_engine(
            'postgresql://' + '%s:%s@%s:%s/%s' % (user,
                                                  password,
                                                  host,
                                                  port,
                                                  database)).connect()

    return conn


def logger():
    """
    Configure logging in console and log file

    Parameters
    ----------
    None

    Returns
    -------
    Logging in console and file
    """

    # set root logger (rl)
    rl = logging.getLogger('PreProcessingLogger')
    rl.setLevel(logging.INFO)
    rl.propagate = False

    # format
    formatter = logging.Formatter('%(asctime)s %(levelname)s %(message)s',
                                    datefmt='%Y-%m-%d %H:%M:%S')

    # console handler (ch)
    ch = logging.StreamHandler()
    ch.setLevel(logging.INFO)
    ch.setFormatter(formatter)
    rl.addHandler(ch)

    # file handler (fh)
    fh = logging.FileHandler(r'openfred_preprocessing.log')
    fh.setLevel(logging.INFO)
    fh.setFormatter(formatter)
    rl.addHandler(fh)


def download(links, download_files):
    # TODO: https downloads not possbile yet
    """Download files from links.


    :param links: list
    :param download_files: list

    :return:
    """

    # directory in that data is downloaded
    target = './download_data/'

    # create directory if not existent
    if not os.path.exists(target):
        os.mkdir(target)

    # perform download
    for i, link in enumerate(links):
        urllib.request.urlretrieve(link, target + download_files[i])

def extraction(files):
    # TODO: return
    """Decompresses files and exctract relevant files

    :param files: list of strings

    :return:
    """

    # download directory
    download_dir = './download_data/'


    # unzip files
    for f in files:
        if f.endswith('.zip'):
            zip_ref = zipfile.ZipFile(download_dir + f, 'r')
            zip_ref.extractall(download_dir + 'unzip/')
            zip_ref.close()
        else:
            raise NotImplementedError('This file format not implemented')

    # go through directory and find files

    # return these files in a list

def write_to_db(file):
    # TODO: shapefile to database, csv to database, xlsx to database
    """Write file to database using dataframe to sql from pandas

    :return:
    """

    # write file to database

