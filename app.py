# PIP Packages
# MYSQL Connector
# Pandas Packages
import streamlit as st
import mysql.connector
import pandas as pd

# Database 
# Changed

host = 'localhost'
user = 'root'
password = '8148'
database = 'Cricbuzz'  

# Class 
class Database:
    def __init__(self, host, user, password, database):
        self.host = host
        self.user = user
        self.password = password
        self.database = database

    def fetch(self, query):
        conn = mysql.connector.connect(
            host=self.host, user=self.user, password=self.password, database=self.database
        )
        cursor = conn.cursor(dictionary=True)
        cursor.execute(query)
        data = pd.DataFrame(cursor.fetchall())
        cursor.close()
        conn.close()
        return data

    def execute(self, query, values=None):
        conn = mysql.connector.connect(
            host=self.host, user=self.user, password=self.password, database=self.database
        )
        cursor = conn.cursor()
        if values:
            cursor.execute(query, values)
        else:
            cursor.execute(query)
        conn.commit()
        cursor.close()
        conn.close()


class Cricbuzz:
    def __init__(self, db):
        self.db = db

db = Database(host, user, password, database)
app = Cricbuzz(db)

#  Sidebar 
st.sidebar.title("Cricbuzz Cricket🏏")

# Match session
match_session = st.sidebar.selectbox(
    "Choose Match Session:", ['Live Match', 'Upcoming Match', 'Recent Match']
)

#  Live Match Stats 
if match_session == 'Live Match':
    st.title('Live Match')
    st.write('No Live Matches are Availabel.')

elif match_session == 'Upcoming Match':
    st.title('Upcoming Match')
    st.write('No Upcoming Matches are Availabel.')

elif match_session == 'Recent Match':
    st.title("Reacent Matches")
    df = app.db.fetch(" select seriesName, team1, team2, venue, city,status from reasent; ")
    st.dataframe(df)




# Player stats
option_stat = st.sidebar.selectbox(
    "Choose Statics:", ['Select it','Batting Players', 'Bowling Players', 'International Players']
)

# SQL queries
option_query = st.sidebar.selectbox(
    "Choose SQL Query:", ['Select Querys.','Query1', 'Query2', 'Query3', 'Query4', 'Query5', 'Query6', 'Query7', 'Query8', 'Query9', 'Query10', 'Query11',
                          'Query12', 'Query13', 'Query14', 'Query15']
)

# CRUD operations
crud_option = st.sidebar.selectbox("Choose CRUD Operation:", ['Create', 'Read', 'Update', 'Delete'])

#  Live Match Stats 
if option_stat == 'Batting Players':
    st.title("Batting Players")
    df = app.db.fetch("SELECT `rank`, name, country, rating, points FROM batsman")
    st.dataframe(df)

elif option_stat == 'Bowling Players':
    st.title("Bowling Players")
    df = app.db.fetch("SELECT `rank`, name, country, rating, points FROM bowlers WHERE rating >= 600")
    st.dataframe(df)

elif option_stat == 'International Players':
    st.title("International Players")
    df = app.db.fetch("SELECT matchType, seriesname, team1_name, team2_name, venue_ground FROM international")
    st.dataframe(df)

#  SQL Queries 
if option_query == 'Query1':
    st.title("Indian Players")
    df = app.db.fetch("SELECT id, full_name, role, country, batting_style, bowling_style FROM q1 WHERE country='India'")
    st.dataframe(df)

elif option_query == 'Query2':
    st.title("Last 30 Days Cricket Matches")
    df = app.db.fetch("SELECT match_description, teams, venue, city, match_date from q2 ")
    st.dataframe(df)

elif option_query == 'Query3':
    st.title("50,000 Seating Capacity Venues")
    df = app.db.fetch("SELECT  `Venue Name`, `Venue ID`, `Capacity`, Country, City from q4 where  `Capacity` > 50000 ")
    st.dataframe(df)

elif option_query == 'Query4':
    st.title("Total Number of Wins")
    df = app.db.fetch("SELECT `Team Name`, `Format` ,  `Total Wins`,   `Total Losses` from q5; ")
    st.dataframe(df)

elif option_query == 'Query5':
    st.title("Playing Role")
    df = app.db.fetch("SELECT  q6.id, q6.`Player Name`, q6.Team, q6.Runs, q6.Wickets, q5.`Total Wins` FROM q6 INNER JOIN q5 ON q6.Team = q5.`Team Name` ")
    st.dataframe(df)

elif option_query == 'Query6':
    st.title("Players ")
    df = app.db.fetch(""" SELECT  q6.`Player Name`,q6.Team,q7.`Match ID`,q7.Format,q7.`Date`,q7.Runs FROM q6 LEFT JOIN q7 ON q6.Team = q7.Team """)
    st.dataframe(df)

elif option_query == 'Query7':
    st.title("Highest Individual Batting Score (Overall)")
    df = app.db.fetch(""" SELECT  q6.`Player Name`,q6.Team,q7.`Match ID`,q7.Format,q7.`Date`,q7.Runs FROM q6 LEFT JOIN q7 ON q6.Team = q7.Team """)
    st.dataframe(df)

elif option_query == 'Query8':
    st.title("Date, Team Playes List")
    df = app.db.fetch(""" SELECT  q7.Sixes,  q7.Team, q7.Overs, q7.Player,  q7.Runs, q8.`Total Matches`, q8.`Series Name` FROM q8 RIGHT JOIN q7 ON q7.Team = q7.player; """)
    st.dataframe(df)

elif option_query == 'Query9':
    st.title("Series Name and Host Country")
    df = app.db.fetch(""" SELECT  q8.id, q8.`Series Name`, q8.`Host Country` FROM q8 LEFT JOIN q9 ON q8.`Series Name` = q9.`Player Name` """)
    st.dataframe(df)

elif option_query == 'Query10':
    st.title("Date, Team Playes List")
    df = app.db.fetch(""" SELECT  q7.Sixes,  q7.Team, q7.Overs, q7.Player,  q7.Runs, q8.`Total Matches`, q8.`Series Name` FROM q8 RIGHT JOIN q7 ON q7.Team = q7.player; """)
    st.dataframe(df)

elif option_query == 'Query11':
    st.title("ODI And T20I Players")
    df = app.db.fetch(""" select t20i.id,   t20i.Runs, t20i.`Wickets`, odi.`Player Name` from t20i left join odi on t20i.`Player Name` = odi.`Player Name`  """)
    st.dataframe(df)

elif option_query == 'Query12':
    st.title("ODI And T20I Players")
    df = app.db.fetch(""" SELECT icc_stands.`rank` AS icc_rank, icc_stands.team, icc_stands.pct, player_rank.id, player_rank.name,
    player_rank.country, player_rank.rating, player_rank.points, player_rank.countryId
    FROM icc_stands
    LEFT JOIN player_rank ON icc_stands.`rank` = player_rank.`rank`   """)
    st.dataframe(df)

elif option_query == 'Query13':
    st.title("ODI And T20I Players")
    df = app.db.fetch(""" select p.`rank`, p.country, p.name, p.country, i.team, i.`rank` from player_rank p inner join icc_stands i 
                      where i.`rank` >= 4 order by p.country desc   """)
    st.dataframe(df)


elif option_query == 'Query14':
    st.title("ODI And T20I Players")
    df = app.db.fetch(""" SELECT q.id AS question_id, q.full_name, q.playing_role, q.batting_style, l.team1, l.team2, l.id AS match_id
                      FROM Questions_1 q
                      LEFT JOIN last_30_days l
                      ON q.id = l.id LIMIT 5    """)
    st.dataframe(df)


# CREATE Operation
if crud_option == 'Create':
    st.title(" Create Player")
    with st.form("create_form_unique"):
        full_name = st.text_input("Full Name")
        role = st.text_input("Role")
        country = st.text_input("Country")
        runs = st.number_input("Runs", min_value=0)
        matches = st.number_input("Matches", min_value=0)
        venue = st.text_input("Venue")
        city = st.text_input("City")

        submitted = st.form_submit_button("Insert Player")
        if submitted:
            if full_name and role and country and runs and matches and venue and city:
                app.db.execute(
                    """
                    INSERT INTO crud_operation 
                    (full_name, role, country, runs, matches, venue, city)
                    VALUES (%s, %s, %s, %s, %s, %s, %s)
                    """,
                    (full_name, role, country, runs, matches, venue, city)
                )
                st.success(f" Player '{full_name}' added successfully!")
            else:
                st.error(" Please fill all fields.")


# READ Operation
elif crud_option == 'Read':
    st.title("Read Players")
    df = app.db.fetch(
        "SELECT id, full_name, role, country, runs, matches FROM sample_players ORDER BY  id LIMIT 35"
    )
    st.dataframe(df)



# UPDATE Operation
elif crud_option == 'Update':
    st.title(" Update Player Role")
    with st.form("update_form_unique"):
        player_id = st.number_input("Player ID", min_value=1, step=1)
        new_role = st.text_input("New Role")
        submitted = st.form_submit_button("Update Player")
        if submitted:
            if new_role:
                app.db.execute(
                    "UPDATE crud_operation SET role=%s WHERE id=%s",
                    (new_role, player_id)
                )
                st.success(f" Player ID {player_id} updated successfully!")
            else:
                st.error(" Please enter a new role.")


# DELETE Operation
elif crud_option == 'Delete':
    st.title(" Delete Player")
    with st.form("delete_form_unique"):
        player_id = st.number_input("Player ID", min_value=1, step=1)
        submitted = st.form_submit_button("Delete Player")
        if submitted:
            app.db.execute(
                "DELETE FROM crud_operation WHERE id=%s",
                (player_id,)
            )
            st.success(f" Player ID {player_id} deleted successfully!")
