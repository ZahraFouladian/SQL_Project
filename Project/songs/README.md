Songs

You are welcome to collaborate with one or two classmates on this lab, though it is expected that every student in any such group contribute equally to the lab.

Write SQL queries to answer questions about a database of songs.

Getting Started
Open VS Code.

Start by clicking inside your terminal window, then execute cd by itself. You should find that its “prompt” resembles the below.

$
Click inside of that terminal window and then execute

wget https://cdn.cs50.net/2022/fall/labs/7/songs.zip
followed by Enter in order to download a ZIP called songs.zip in your codespace. Take care not to overlook the space between wget and the following URL, or any other character for that matter!

Now execute

unzip songs.zip
to create a folder called songs. You no longer need the ZIP file, so you can execute

rm songs.zip
and respond with “y” followed by Enter at the prompt to remove the ZIP file you downloaded.

Now type

cd songs
followed by Enter to move yourself into (i.e., open) that directory. Your prompt should now resemble the below.

songs/ $
If all was successful, you should execute

ls
and you should see 8 .sql files, songs.db, and answers.txt.

If you run into any trouble, follow these same steps again and see if you can determine where you went wrong!

Understanding
Provided to you is a file called songs.db, a SQLite database that stores data from Spotify about songs and their artists. This dataset contains the top 100 streamed songs on Spotify in 2018. In a terminal window, run sqlite3 songs.db so that you can begin executing queries on the database.

First, when sqlite3 prompts you to provide a query, type .schema and press enter. This will output the CREATE TABLE statements that were used to generate each of the tables in the database. By examining those statements, you can identify the columns present in each table.

Notice that every artist has an id and a name. Notice, too, that every song has a name, an artist_id (corresponding to the id of the artist of the song), as well as values for the danceability, energy, key, loudness, speechiness (presence of spoken words in a track), valence, tempo, and duration of the song (measured in milliseconds).

The challenge ahead of you is to write SQL queries to answer a variety of different questions by selecting data from one or more of these tables. After you do so, you’ll reflect on the ways Spotify might use this same data in their annual Spotify Wrapped campaign to characterize listeners’ habits.

Implementation Details
For each of the following problems, you should write a single SQL query that outputs the results specified by each problem. Your response must take the form of a single SQL query, though you may nest other queries inside of your query. You should not assume anything about the ids of any particular songs or artists: your queries should be accurate even if the id of any particular song or person were different. Finally, each query should return only the data necessary to answer the question: if the problem only asks you to output the names of songs, for example, then your query should not also output each song’s tempo.

In 1.sql, write a SQL query to list the names of all songs in the database.
Your query should output a table with a single column for the name of each song. 

In 2.sql, write a SQL query to list the names of all songs in increasing order of tempo.
Your query should output a table with a single column for the name of each song.

In 3.sql, write a SQL query to list the names of the top 5 longest songs, in descending order of length.
Your query should output a table with a single column for the name of each song.

In 4.sql, write a SQL query that lists the names of any songs that have danceability, energy, and valence greater than 0.75.
Your query should output a table with a single column for the name of each song.

In 5.sql, write a SQL query that returns the average energy of all the songs.
Your query should output a table with a single column and a single row containing the average energy.

In 6.sql, write a SQL query that lists the names of songs that are by Post Malone.
Your query should output a table with a single column for the name of each song.
You should not make any assumptions about what Post Malone’s artist_id is.

In 7.sql, write a SQL query that returns the average energy of songs that are by Drake.
Your query should output a table with a single column and a single row containing the average energy.
You should not make any assumptions about what Drake’s artist_id is.

In 8.sql, write a SQL query that lists the names of the songs that feature other artists.
Songs that feature other artists will include “feat.” in the name of the song.
Your query should output a table with a single column for the name of each song.
