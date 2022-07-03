import sys
import os

sys.path.insert(1, os.path.join(sys.path[0], ".."))
from main import *
from clock import log_time, Timer

Timer.set_file("coinslog.txt")

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
def get_data(page: str):
    html = BeautifulSoup(page, "lxml")
    table_rows = html.find(
        "table", class_="cmc-table").find("tbody").find_all("tr") 

    next_link = html.find("ul", class_="pagination").find("li", class_="next").find("a", class_="chevron").get("href")

    return table_rows, next_link

@log_time
def main():
    url = "https://coinmarketcap.com"
    next_link = ""

    # while True:
    #     data, next_link = get_data(get_html(url + next_link))
    #     clear = current_data(data)
    #     to_csv(clear, "coins.csv", open_type="a")
    #     to_json(clear, "coins.json", open_type="a")

    #     if not next_link:
    #         break

    #     print("save data ->", url + next_link)

    print("done!")
    clean_json("coins.json")


if __name__ == "__main__":
    main()
