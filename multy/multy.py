import requests as req
from bs4 import BeautifulSoup
import json
# import csv
import time


class Timer:
    @staticmethod
    def get_time():
        return time.time(), time.process_time()

    def __enter__(self) -> None:
        self.real, self.cpu = self.get_time()

    def __exit__(self, exc_type, exc_val, exc_tb) -> None:
        time, cpu = self.get_time()
        real_time = time - self.real
        cpu_time = cpu - self.cpu

        print(f"CPU time: {cpu_time:.2f} s, Real time: {real_time:.2f} s")



def log_time(function, _file=None):
    def timer(*args, **kwargs):
        start_real, start_cpu = Timer.get_time()

        return_value = function(*args, **kwargs)

        end_real, end_cpu = Timer.get_time()

        cpu_time = end_cpu - start_cpu
        real_time = end_real - start_real

        print(f"[{function.__name__}] -> CPU time: {cpu_time:.4f} s, Real time: {real_time:.4f} s")

        return return_value
    return timer



@log_time
def get_html(url: str):
    return req.get(url).text

@log_time
def get_data(html: str):
    html = BeautifulSoup(html, "lxml")
    sections = html.find_all("section")

    data = {
        datum.find("header").find("h2").text:
            datum.find_all("article")
        for datum in sections
    }
    # for datum in sections:
    #     h2 = datum.find("header").find("h2").text
    #     data[h2] = datum.find_all("article")

    return data

@log_time
def get_number_rating(rating: str):
    number = rating.split(" ")[0].replace(",", "")
    return number[1:]

@log_time
def get_text_link(html: BeautifulSoup):
    title = html.text
    link = html.find("a").get("href")
    return title, link

@log_time
def collect_data(data: dict):
    for title in data.keys():
        article_data = []
        for article in data[title]:
            entry = article.find("div", class_="entry")
            sub_title, link = get_text_link(
                entry.find(
                    "header", class_="entry-header").find("h3", class_="entry-title")
            )
            plugin = {
                "title": sub_title,
                "link": link,
                "rating": get_number_rating(
                    entry.find(
                        "div", class_="plugin-rating").find("span", class_="rating-count").text
                )
            }
            article_data.append(plugin)
        data[title] = article_data
    return data

@log_time
def to_json(data: dict):
    with open("multy\collect_data.json", "wt", encoding="utf-8") as _file:
        json.dump(data, fp=_file)

@log_time
def main(*args, **kwargs):
    url = "https://wordpress.org/plugins/"
    data = get_data(get_html(url))
    collection = collect_data(data)

    to_json(collection)

    print("DONE!")


if __name__ == "__main__":
    main()
