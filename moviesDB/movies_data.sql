INSERT INTO movies
    (title, rating, year, user_rating, run_time)
    VALUES ("Shawshank Redemption", 4, 1994, 9, "2:22:00"), ("Dune", 3, 1984, 7, "2:17:00"), ("Doom", 4, 2005, 5, "1:45:00"), ("The Room", 4, 2003, 3, "1:39:00"), ("Titanic", 3, 1997, 8, "3:14:00"), ("Scott Pilgrim vs. the World", 3, 2010, 8, "1:52:00"), ("Shin Godzilla", 10, 2016, 7, "2:00:00"), ("The Mist", 4, 2007, 7, "2:06:00"), ("The Lighthouse", 4, 2019, 8, "1:49:00"), ("Tenet", 3, 2020, 7, "2:30:00"), ("Pan's Labyrinth", 4, 2006, 8, "1:58:00"), ("Baby Driver", 4, 2017, 8, "1:53:00"), ("Cats", 2, 2019, 3, "1:50:00"), ("Pacific Rim", 3, 2013, 7, "2:11:00"), ("Hellboy", 3, 2004, 7, "2:02:00"), ("Hellboy II: The Golden Army", 3, 2008, 7, "2:00:00"), ("The Shape of Water", 4, 2017, 7, "2:03:00"), ("The Cabin in the Woods", 4, 2011, 7, "1:35:00"), ("Resident Evil", 4, 2002, 7, "1:40:00"), ("Silent Hill", 4, 2006, 7, "2:05:00");

INSERT INTO movie_to_genre
    (movie_id, genre_id)
    VALUES (1, 7), (2, 1), (2, 2), (2, 12), (3, 1), (3, 9), (3, 12), (4, 7), (5, 7), (5, 11), (6, 1), (6, 4), (6, 8), (7, 1), (7, 7), (7, 9), (8, 9), (8, 12), (8, 14), (9, 7), (9, 8), (9, 9), (10, 1), (10, 12), (10, 14), (11, 7), (11, 8), (11, 15), (12, 1), (12, 5), (12, 7), (13, 4), (13, 7), (13, 10), (14, 1), (14, 2), (14, 12), (15, 1), (15, 2), (15, 8), (16, 1), (16, 2), (16, 8), (17, 7), (17, 8), (17, 11), (18, 4), (18, 9), (18, 14), (19, 1), (19, 9), (19, 12), (20, 7), (20, 9), (20, 13);

INSERT INTO movie_to_director
    (movie_id, director_id)
    VALUES (1, 3), (2, 4), (3, 1), (4, 5), (5, 2), (6, 6), (7, 7), (7, 8), (8, 3), (9, 9), (10, 10), (11, 11), (12, 6), (13, 12), (14, 11), (15, 11), (16, 11), (17, 11), (18, 13), (19, 14), (20, 15);

INSERT INTO movie_to_producer
    (movie_id, producer_id)
    VALUES (1, 1), (1, 2), (1, 3), (2, 4), (2, 5), (2, 6), (3, 7), (3, 8), (3, 9), (4, 10), (4, 11), (4, 12), (5, 13), (5, 14), (5, 15), (6, 16), (6, 17), (6, 18), (7, 19), (7, 20), (7, 21), (8, 22), (8, 1), (8, 23), (9, 24), (9, 25), (9, 26), (10, 27), (10, 28), (10, 29), (11, 30), (11, 31), (11, 32), (12, 33), (12, 34), (12, 17), (13, 33), (13, 35), (13, 36), (14, 30), (14, 37), (14, 38), (15, 39), (15, 40), (15, 41), (16, 39), (16, 40), (16, 41), (17, 30), (17, 42), (17, 43), (18, 44), (18, 45), (18, 46), (19, 47), (19, 48), (19, 49), (20, 50), (20, 51), (20, 52);

INSERT INTO movie_to_performer
    (movie_id, performer_id)
    VALUES (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (2, 6), (2, 7), (2, 8), (2, 9), (2, 10), (3, 11), (3, 12), (3, 13), (3, 14), (3, 15), (4, 16), (4, 17), (4, 18), (4, 19), (4, 20), (5, 21), (5, 22), (5, 23), (5, 24), (5, 25), (6, 26), (6, 27), (6, 28), (6, 29), (6, 30), (7, 31), (7, 32), (7, 33), (7, 34), (7, 35), (8, 36), (8, 37), (8, 38), (8, 39), (8, 40), (9, 41), (9, 42), (9, 43), (10, 44), (10, 41), (10, 45), (10, 46), (10, 47), (11, 48), (11, 49), (11, 50), (11, 51), (11, 52), (12, 53), (12, 54), (12, 55), (12, 56), (12, 57), (13, 58), (13, 59), (13, 60), (13, 61), (13, 62), (14, 63), (14, 64), (14, 65), (14, 66), (14, 59), (15, 66), (15, 67), (15, 51), (15, 68), (15, 69), (16, 66), (16, 67), (16, 51), (16, 68), (16, 70), (17, 51), (17, 71), (17, 72), (17, 73), (17, 74), (18, 75), (18, 76), (18, 77), (18, 78), (18, 73), (19, 79), (19, 80), (19, 81), (19, 82), (19, 83), (20, 84), (20, 85), (20, 38), (20, 86), (20, 87);