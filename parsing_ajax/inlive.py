import sys
import os

sys.path.insert(1, os.path.join(sys.path[0], ".."))
from clock import *
from main import *


Timer.set_file("web_log.txt")


def get_max_pages():
    html = BeautifulSoup(
        get_html("https://www.liveinternet.ru/rating/ru/#geo=ru;"),
        "lxml"
    )
    return 4686
    # return html.find("div", id="paging", class_="paging")


@log_time
def save_sites(url):
    page = get_html(url)

    # data sctruct
    # name: {
    #     url: nul,
    #     description: nul,
    #     traffic: nul,
    #     percent: nul,
    #     data_type: nul
    # }
    data = dict()

    for row in page.strip().split("\n")[1:]:
        columns = row.replace("&quote;", "").replace("&quot;", "").split("\t")
        data[columns[0]] = {
            "url": columns[1],
            "description": columns[2],
            "traffic": columns[3],
            "percent": columns[4],
            "data_type": columns[5]
        }

    to_csv(data=data, _file_name="sites.csv", open_type="at")
    to_json(data=data, _file_name="sites.json", open_type="at")


@log_time
def main():
    clean_json(_file_name="sites.json")
    
    # for page_index in range(1, int(get_max_pages()) + 1):
    #     url = f"https://www.liveinternet.ru/rating/ru//today.tsv?page={page_index}"
    #     save_sites(url=url)

    #     print("save ->", url)


if __name__ == "__main__":
    # clean_json(_file_name="sites.json")
    main()
