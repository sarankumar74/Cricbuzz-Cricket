# 🏏 Cricbuzz LiveStats – Real-Time Cricket Insights & SQL-Powered Analytics
🔍 Live Sports Analytics • SQL • API Integration • Streamlit Dashboard • Data Engineering

![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/Database-MySQL-orange?logo=mysql&logoColor=white)
![API Handling](https://img.shields.io/badge/Process-API%20Handling-brightgreen)
![Streamlit](https://img.shields.io/badge/Framework-Streamlit-red?logo=streamlit&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Sports%2C%20Entertainment%2C%20Investment-navy)

---

## 📘 Overview
**Cricbuzz LiveStats** is a **real-time cricket analytics dashboard** that integrates live match data from the **Cricbuzz API** with a **SQL-powered backend**.

The platform demonstrates a full end-to-end integration of:
- 🔹 **REST API streaming for live sports data**
- 🔹 **SQL-based statistical analysis & CRUD operations**
- 🔹 **Interactive analytics dashboard using Streamlit**

Designed for **cricket fans, fantasy league players, sports media analysts, and EdTech learners**, this project blends live data engineering with intuitive visual insights.

---

## 🎯 Problem Statement
Traditional scoreboards provide basic updates, but lack:
- Deep player/network analysis  
- Instant SQL-driven insights  
- Historical trends correlated with live performance  

**Cricbuzz LiveStats** solves this gap by combining **real-time APIs + SQL analytics** into a **smart cricket insights platform**, enabling:
- ⚡ Live scorecards  
- 📊 SQL-based player & match analytics  
- 🛠️ CRUD operations for player and match datasets  

---

## 💼 Business Use Cases

| Industry | Value |
|---------|-------|
| 📺 Sports Media | Dynamic player stats, expert commentary insights, match breakdowns |
| 🎮 Fantasy Apps | Player form, consistency, venue-based comparison for team building |
| 📈 Cricket Analytics Firms | Data-driven decision making for team strategy & predictions |
| 🎓 EdTech | Live SQL + API integration learning mini-project for students |
| 🎲 Sports Betting | Trend-based player & venue evaluation to support predictive modeling |

---

## 🧠 Skills Takeaway
| Area | Skills |
|------|--------|
| Programming | Python |
| Backend | SQL (MySQL / PostgreSQL / SQLite) |
| API | REST API integration, JSON parsing |
| Dashboard | Streamlit UI/UX + Realtime charts |
| Data Engineering | ETL, CRUD operations, schema design |
| Visualization | Live scorecards, performance stats tables |

---

## 🗺️ Key Development Steps

### 🌐 API Integration
- Connected to **Cricbuzz REST API** for live match analytics
- Used Python `requests` to fetch JSON responses
- Extracted match metadata, live scores, squads, and player stats

### 🖥️ Interactive Dashboard (Streamlit)
- Live dashboard with:
  - 🏏 Live scorecards
  - 📊 Match & player insights
  - 🔍 SQL query visualizer
- Real-time page refresh for new scores and overs
- Domain-based search filters (Player / Match / Venue)

### 🗄️ SQL Database Integration
- Supports **MySQL / PostgreSQL / SQLite**
- Table schema includes:
  - Players
  - Matches
  - Batting & Bowling stats
- Fast query execution for analytics

### ⚙️ CRUD Module
- Add new players
- Update match information
- Delete incorrect or outdated entries
- Validation prompts to ensure data integrity


---

<summary>📸 Click to view Streamlit UI screenshots</summary>

#### Home Page  
<img width="1855" height="907" alt="Crickbuzz Home Page" src="https://github.com/user-attachments/assets/8781a1d1-7669-461b-b444-723160357bce" />


#### Results Page  
<img width="1839" height="873" alt="Crickbuzz Result Page 1" src="https://github.com/user-attachments/assets/8a656765-0cc1-46b3-9cbe-11a45077bf7f" />


#### Results Page  
<img width="1822" height="871" alt="Crickbuzz Result Page 2" src="https://github.com/user-attachments/assets/9958bee7-e872-40ec-ab34-44094ec202e4" />

---

## 🧩 Project Structure
```bash
Cricbuzz-LiveStats/
│
├── app.py                  # Main Streamlit dashboard
│
├── notebook.ipynb/         # Data exploration + API + SQL testing
│   ├── db_connection.py    # Modular SQL connection handler
│
├── requirements.txt        # Dependencies
│
└── README.md               # Documentation
```

---

## 🛠️ Run Locally

Install dependencies:
```
pip install -r requirements.txt
```

Start dashboard:
```
streamlit run app.py
```

