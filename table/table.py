import requests as req
from bs4 import BeautifulSoup
import csv
import json

from clock.clock import *
Timer.set_file("log.txt")


@log_time
def to_csv(data, _file_name="coins.csv"):
    with open(_file_name, "wt", encoding="utf-8") as _file:
        writer = csv.writer(_file)
        for coin in data.keys():
            writer.writerow([
                coin,
                data[coin]["symbol"],
                data[coin]["link"],
                data[coin]["price"]
            ])


@log_time
def to_json(data, _file_name="coins.json"):
    with open(_file_name, "wt", encoding="utf-8") as _file:
        json.dump(data, _file)


@log_time
def get_html(url):
    return req.get(url).text


@log_time
def get_data(html):
    html = BeautifulSoup(html, "lxml")
    table_rows = html.find(
        "table", class_="cmc-table").find("tbody").find_all("tr")
    return table_rows


@log_time
def current_data(data: list):
    clear_data = dict()

    for row in data:
        coin, price = row.find_all("td")[2:4]
        coin = coin.find("a", class_="cmc-link")

        if not coin.find("span"):
            name = coin.find("p").text
            coin_symbol = coin.find("p", class_="coin-item-symbol").text
        else:
            name = coin.find("span", class_="").text
            coin_symbol = coin.find("span", class_="crypto-symbol").text

        clear_data[name] = {
            "link": "https://coinmarketcap.com" + coin.get("href"),
            "symbol": coin_symbol,
            "price": price.text
        }

    return clear_data


@log_time
def main():
    url = "https://coinmarketcap.com/"
    data = get_data(get_html(url))
    clear = current_data(data)
    to_csv(clear)
    to_json(clear)


if __name__ == "__main__":
    main()
