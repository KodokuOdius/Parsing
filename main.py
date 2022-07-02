import requests as req
from bs4 import BeautifulSoup
from typing import *


def get_html(url: str):
    resp = req.get(url)
    return resp.text


def get_data(html: str):
    html = BeautifulSoup(html, "lxml")
    body = html.find("body")
    header = body.find("header", id="masthead")
    title = header.find("p")
    return title


def main(*args: Any, **kwargs: Any):
    url = "https://wordpress.org/"
    data = get_data(get_html(url))
    print(data)


if __name__ == "__main__":
    main()
