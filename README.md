🏏 Cricbuzz LiveStats: Real-Time Cricket Insights & SQL-Based Analytics

📘 Overview
**Cricbuzz LiveStats** is a **real-time cricket analytics dashboard** that integrates live match data from the **Cricbuzz API** with a **SQL-powered backend**.  
This project showcases **data engineering, visualization, and analytics capabilities** by combining **Python, SQL, Streamlit, and REST APIs** to deliver actionable insights for cricket enthusiasts, analysts, and developers.

🎯 Problem Statement
Develop a comprehensive **cricket analytics web application** that integrates live data from the **Cricbuzz API** with a **SQL database**, providing an **interactive, data-driven dashboard** that enables:

- ⚡ Real-time match updates  
- 📊 Detailed player statistics  
- 🔍 SQL-driven analytics and queries  
- 🛠️ Full CRUD operations for player and match data management  

The goal is to bridge **live sports data** with **structured analytical insights** for various business and educational applications.

💼 Business Use Cases

1. 📺 Sports Media & Broadcasting
- Real-time match updates for live commentary  
- Player performance insights for pre/post-match analysis  
- Historical data visualization for prediction and storytelling  

2. 🎮 Fantasy Cricket Platforms
- Player form tracking and consistency metrics  
- Head-to-head statistics for team selection  
- Real-time score integration for fantasy league updates  

3. 📈 Cricket Analytics Firms
- Advanced statistical modeling and player evaluation  
- Format-based performance trend analysis  
- Data-driven insights for coaching and team strategy  

4. 🎓 Educational Institutions
- Hands-on SQL projects using real-world cricket data  
- Demonstrations of API integration and CRUD functionality  
- Teaching analytics, web development, and database design  

5. 🎲 Sports Betting & Prediction
- Historical performance trends for odds calculation  
- Player momentum tracking and venue-based analysis  
- Predictive modeling using structured cricket datasets  

🧠 Skills Takeaway
- **Python** – API integration, data manipulation  
- **SQL** – Query optimization, data storage & analytics  
- **Streamlit** – Web app development and dashboard design  
- **JSON** – Data interchange format for API responses  
- **REST API** – Real-time data communication  


🗺️ Key Development Steps

🌐 API Integration
- Utilize **Cricbuzz REST API** for fetching live match and player data  
- Use Python’s `requests` library for data retrieval  
- Manage JSON responses for match info, scorecards, and statistics  

🖥️ Interactive Dashboard
- Build with **Streamlit** for a fast and responsive UI  
- Include **live scorecards, match stats, and SQL query visualizations**  
- Implement **custom query interface** for interactive analytics  
- Support **CRUD operations** for managing player and match records  

🗄️ SQL Database Integration
- Database-agnostic design: supports **PostgreSQL, MySQL, and SQLite**  
- Centralized connection management in `utils/db_connection.py`  
- Optimized queries for real-time data performance  

⚙️ CRUD Operations
- Form-based UI for adding, updating, or deleting records  
- Administrative control for managing data integrity  
- Error handling and validation for smooth operations  

---

<summary>📸 Click to view Streamlit UI screenshots</summary>

#### Home Page  
![Home Page]<img width="1855" height="907" alt="Crickbuzz Home Page" src="https://github.com/user-attachments/assets/8781a1d1-7669-461b-b444-723160357bce" />


#### Results Page  
![Result Page 1]<img width="1839" height="873" alt="Crickbuzz Result Page 1" src="https://github.com/user-attachments/assets/8a656765-0cc1-46b3-9cbe-11a45077bf7f" />


#### Results Page  
![Result Page 2]<img width="1822" height="871" alt="Crickbuzz Result Page 2" src="https://github.com/user-attachments/assets/9958bee7-e872-40ec-ab34-44094ec202e4" />


---

## 🧩 Project Structure
```bash
Cricbuzz-LiveStats/
│
├── app.py                  # Main Streamlit app
├── notebook.ipynb/
│   ├── db_connection.py    # SQL connection handler
├── requirements.txt        # Project dependencies
└── README.md               # Project documentation

