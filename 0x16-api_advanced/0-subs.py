#!/usr/bin/python3
""" Module for storing the number_of_subscribers function. """
from requests import get


def number_of_subscribers(subreddit):
    """ Returns the number of subscribers on a given subbreddit. """

    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    headers = {'User-Agent': 'HolbertonSchool'}

    r = get(url, headers=headers)

    if r.status_code == 200:
        return r.json()['data']['subscribers']
    else:
        return 0