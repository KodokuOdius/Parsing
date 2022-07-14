import sys
import os
from multiprocessing import Pool

sys.path.insert(1, os.path.join(sys.path[0], ".."))
from main import *
from clock import *


@log_time
def get_data(page: str) -> list:
    html = BeautifulSoup(page, "lxml")
    traxers = html.find("div", class_="module_row_3").find_all("article", class_="post")
    return traxers


@log_time
def data_processing(data: list) -> None:
    processed_data = dict()
    for post in data["traxers"]:
        content = post.find("div", class_="testimonial-content")
        title = content.find("h2").text.strip()
        text = content.find("div", class_="entry-content").text
        if not text:
            text = content.find("p").find("span").text
        else:
            text += sub_text.text if (sub_text := content.find("span", class_="coll-hidden")) else ""

        category = content.find("span", class_="testimonial-category").text

        author_details = post.find("div", class_="author-details")
        author = author_details.find("p", class_="testimonial-author")
        acc_name = author.find("span").text
        since = author_details.find("p", class_="traxer-since").text.split()[-1]
        author = author.text.strip()

        processed_data[author] = {
            "since": int(since),
            "account_name": acc_name.strip(),
            "category": category.strip(),
            "post": {
                "title": title.strip(),
                "text": text.strip()
            }
        }

    to_json(data=processed_data, _file_name="traxers.json", open_type="at")
    to_csv(data=processed_data, _file_name="traxers.csv", open_type="at")

    return print("save posts from ->", data["url"])


def enter_pool(data):
    data_processing(data)


@log_time
def main(*args, **kwargs) -> None:
    page_inx = 1
    data = []

    while True:
        page = get_html(
            url := f"https://catertrax.com/why-catertrax/traxers/page/{page_inx}",
            headers={
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36"
            }
        )
        traxers = {
            "url": url,
            "traxers": get_data(page)
        }
        if not traxers["traxers"]:
            break
        else:
            data_processing(traxers)

        page_inx += 1

    return print("data processing DONE!")


if __name__ == "__main__":
    Timer.set_file("traxers_log.txt")
    main()
    clean_json("traxers.json")
