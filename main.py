import requests as req
from bs4 import BeautifulSoup
import json
import csv
# import re
from typing import *


def to_json(data, _file_name="data.json", open_type="wt"):
    with open(f"./{_file_name}", open_type, encoding="utf-8") as _json:
        json.dump(
            data, _json
        )

async def ato_json(data, _file_name="data.json", open_type="wt"):
    with open(f"./{_file_name}", open_type, encoding="utf-8") as _json:
        json.dump(
            data, _json
        )


def from_json(_file_name: str):
    with open(f"./{_file_name}", "rt", encoding="utf-8") as _json:
        output = json.load(_json)
    return output


def clean_json(_file_name):
    with open(f"./{_file_name}", "rt", encoding="utf-8") as _in:
        data_json = _in.readlines()

    with open(f"./{_file_name}", "wt", encoding="utf-8") as _out:
        for line in data_json:
            _out.write(line.replace("}{", ","))

    print(_file_name, "DONE!")


def to_csv(data, _file_name="data.csv", open_type="wt"):
    with open(f"./{_file_name}", open_type, encoding="utf-8") as _file:
        writer = csv.writer(_file,
            delimiter=","
        )
        for key in data.keys():
            writer.writerow([
                key,
                *data[key].values()
            ])

async def ato_csv(data, _file_name="data.csv", open_type="wt"):
    with open(f"./{_file_name}", open_type, encoding="utf-8") as _file:
        writer = csv.writer(_file,
            delimiter=","
        )
        for key in data.keys():
            writer.writerow([
                key,
                *data[key].values()
            ])            


def from_csv(_file_name: str):
    with open(f"./{_file_name}", "rt") as _data:
        reader = csv.reader(_data)
    return reader


def get_html(url: str, **kwargs):
    response = req.get(url, **kwargs)
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
