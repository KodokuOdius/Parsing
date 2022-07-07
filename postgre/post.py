import sys
import os
from peewee import *
import csv

sys.path.insert(1, os.path.join(sys.path[0], ".."))
from main import *

db = PostgresqlDatabase(
    database="test",
    user="postgres",
    password="29032004Ad_[]",
    host="localhost"
)

class Coin(Model):
    coin = CharField()
    link = TextField()
    symbols = CharField()
    price = CharField()

    class Meta:
        database = db



def main():
    db.connect()
    db.create_tables([Coin])

    with open("./coins.csv", "rt", encoding="utf-8") as _file:
        order = ["coin", "link", "symbols", "price"]
        reader = csv.DictReader(_file, fieldnames=order)

        # i = 1
        # for row in list(reader):
        #     print(i)
        #     coin = Coin(
        #         coin=row["coin"],
        #         link=row["link"],
        #         symbols=row["symbols"],
        #         price=row["price"]
        #     )
        #     coin.save()
        #     i += 1

        coins = list(reader)

        with db.atomic():
            # for coin in list(reader):
            #     Coin.create(**coin)

            step = 100
            for index in range(0, len(coins), step):
                Coin.insert_many(coins[index:index + step]).execute()


if __name__ == "__main__":
    main()

