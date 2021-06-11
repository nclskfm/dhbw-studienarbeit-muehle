#! /bin/bash

mongoimport --host mongodb --db retro-database --collection retro-collection --type json --file /mongo-seed/retro-collection-1.json --jsonArray
mongoimport --host mongodb --db retro-database --collection retro-collection --type json --file /mongo-seed/retro-collection-2.json --jsonArray
