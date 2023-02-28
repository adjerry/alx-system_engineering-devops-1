#!/usr/bin/python3
"""
query Reddit API and prints the titles of the 
first 10 hot posts listed
"""

import requests


def top_ten(subreddit):
    """
    titles of the first 10
    """
    url = "https://www.reddit.com/r/{}/hot.json?limit=10".format(subreddit)
    headers = requests.utils.default_headers()
    headers.update({'User-Agent': 'My User Agent 1.0'})
    r = requests.get(url, headers=headers).json()
    tp_ten = r.get('data', {}).get('children', [])
    if not tp_ten:
        print(None)
    for t in tp_ten:
        print(t.get('data').get('title'))
