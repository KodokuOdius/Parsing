import sys
import os

sys.path.insert(1, os.path.join(sys.path[0], ".."))
from main import *
from clock import log_time


def get_cy(cit: str):
    return cit.split()[-1]


def get_data(page):
    html = BeautifulSoup(page, "lxml")
    list_items = html.find(
        "div", class_="yaca-list").find_all("li", class_="yaca-snippet")

    for item in list_items:
        item = item.find("div", class_="yaca-snippet__description")
        name = link = text = cy = ""
        try:
            name = item.find("h2")
            link = name.find("a").get("href")
            text = item.find("div", class_="yaca-snippet__text")
            cy = get_cy(item.find("div", class_="yaca-snippet__cy").text)

        except Exception as ex:
            print(ex)

        data = {
            name.text.strip(): {
                "link": link,
                "text": text.text.strip(),
                "cy": cy
            }
        }
        # to_json(data, _file_name="sites.json", open_type="a")
        to_csv(data, _file_name="sites.csv", open_type="a")

    links = html.find("div", class_="b-pager i-bem b-pager_js_inited").find_all("span")
    if not links[1].find_all("a"):
        return None
    return links[1].find("a", class_="b-pager__next").get("href")


@log_time
def main():
    url = "https://yacca.ru"
    new_url = "/cat/Entertainment"
    counter = 1
    while True:
        page = url + new_url

        print(counter, "page", page)

        new_url = get_data(get_html(page))

        counter += 1

        if not new_url or counter == 20:
            break


if __name__ == "__main__":
    main()
