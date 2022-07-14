import sys
import os
from multiprocessing import Pool
import asyncio
# from codetiming import Timer

sys.path.insert(1, os.path.join(sys.path[0], ".."))
from clock import *
from main import *


Timer.set_file("async_log.txt")


def get_max_pages():
    # html = BeautifulSoup(
    #     get_html("https://www.liveinternet.ru/rating/ru/#geo=ru;"),
    #     "lxml"
    # )
    return 4731
    # return 1000
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


# @log_time
def execute(url, index=0):
    # while not urls.empty():
        # url = await urls.get()

    save_sites(url)

    print(f"task {index} save -> {url}")



@log_time
def main():
    url = "https://www.liveinternet.ru/rating/ru//today.tsv?page={}"
    urls = [url.format(str(page + 1)) for page in range(int(get_max_pages()))]
    
    # work_q = asyncio.Queue()
    # [await work_q.put(
    #     url.format(str(page + 1))
    # )
    #     for page in range(int(get_max_pages()))
    # ]
    

    # await asyncio.gather(
    #     *[asyncio.create_task(execute(_+1, work_q))
    #         for _ in range(2)
    #     ]
    # )

    with Pool(30) as pl:
        pl.map(
            execute, urls
        )


if __name__ == "__main__":
    main()
    clean_json(_file_name="sites.json")
    