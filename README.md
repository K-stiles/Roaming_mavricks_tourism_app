# Roaming_mavricks_tourism_app

An HTML, CSS and java application for tourist

## Landing Page

<img width="1440" alt="Home Page" src="https://github.com/K-stiles/Roaming_mavricks_tourism_app/assets/80682692/405a8f2d-758f-4c44-8253-9dca475d15d0">

### Summary

"Our tourism application is a comprehensive and user-friendly platform designed to assist travelers in planning, organizing, and enhancing their travel experiences. With our app, users can explore a wide range of destinations, browse through detailed information about attractions, landmarks, and local services. They can also discover personalized recommendations, create itineraries, and book accommodations, transportation, and tours directly through the app. Our goal is to provide travelers with a seamless and convenient tool that enriches their journey, making it easier to discover new destinations and make the most out of their travel adventures."

---

## Dockerfile

The project has a docker-compose file in its root. To run the project with docker, do the following in the project terminal:

- run command

```
    1. docker-compose up -d
    2. docker exec -it db_tourism_container /bin/bash
```

- using mysql tourism_db:

```
    1. mysql -proot
    2. use tourism_db;
```

- pull down docker processes:

```
     docker-compose down --rmi all -v
```
