import sys
import os
import re

sys.path.insert(1, os.path.join(sys.path[0], ".."))
from main import *

# .find
# .find_all

# .parent
# .parents
# .find_parent
# .find_parents

# .find_next_sibling
# Соседние объекты
# .find_previous_sibling

def get_copywriter(tag):
    whois = tag.find("div", id="whois")
    if "Copywriter" in whois:
        return tag


def get_salary(text: str):
    pattern = r"\d{1,9}"
    return re.search(pattern, text).group()


def get_data(page):
    html = BeautifulSoup(page, "lxml")

    alena = html.find("div", text="Alena").find_parent("div", {"class": "row"})

    persons = html.find_all("div", class_="row")
    copywriters = [person.text for person in persons if get_copywriter(person)]

    rows = html.find_all("div", {"data-set": "salary"}, text=re.compile(r"\d{1,9}"))
    
    for row in rows:
        print(row.text)
        # print(get_salary(row.text))

    return None


def main():
    with open("./index.html") as _file:
        data = get_data(_file.read())

    print(
        data
    )


if __name__ == "__main__":
    main()
