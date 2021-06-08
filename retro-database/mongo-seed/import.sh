#! /bin/bash

mongoimport --host mongodb --db retro-database --collection retro-collection --type json --file /mongo-seed/retro-collection.json --jsonArray
