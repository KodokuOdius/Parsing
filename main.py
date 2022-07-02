import requests as req
from bs4 import BeautifulSoup
import json
import csv
from typing import *


def to_json(data, _file_name="data.json", open_type="wt"):
    with open(f"./{_file_name}", open_type, encoding="utf-8") as _json:
        json.dump(
            data, _json
        )


def to_csv(data, _file_name="data.csv", open_type="wt"):
    with open(f"./{_file_name}", open_type, encoding="utf-8") as _file:
        writer = csv.writer(_file)
        for key in data.keys():
            writer.writerow([
                key,
                *data[key].values()
            ])


def get_html(url: str):
    response = req.get(url)
    if response.ok:
        return response.text
    print(response.status_code)


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
