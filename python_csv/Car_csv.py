# -*- coding: utf-8 -*-
"""
Created on Mon Oct 18 23:04:33 2021

@author: valer
"""

import requests

url = 'https://en.wikipedia.org/wiki/Comma-separated_values'

wiki = requests.get(url)

print(wiki.content)

from bs4 import BeautifulSoup

soup = BeautifulSoup(wiki.content, 'html5lib')

table = soup.find('div', attrs ={'id':'content'})

print(table.prettify())

