# 📊 Netflix SQL Analysis Project

## 🧭 Objective
This project aims to analyze Netflix user behavior and content interaction using SQL. The main goal is to uncover insights about user retention, content preferences, peak activity times, and engagement across different subscription plans.

## 📂 Dataset Schema
The data consists of 7 main tables:

- **users**: User details (ID, name, email, country, birth date)  
- **movies**: Movie metadata (title, release date, genre, duration)  
- **watch_history**: Records of when users watched movies  
- **subscriptions**: Tracks user subscription type and duration  
- **ratings**: User ratings for movies  
- **genres**: Genre names  
- **ERD**: Included below for schema understanding

![ERD](netflix_erd.png)

## 🔍 Key Questions Answered
- What is the average number of active days per user per plan?
- Which movies are most watched by users in each plan?
- What genres are the most popular across the platform?
- When are users most active (by day of the week and hour)?
- Who are the returning users and how are they distributed across plans?
- What are the peak viewing times by day and plan type?

## 📈 Storytelling Insights
- **User Retention**:  
  - Premium: ~17 users active for 5 days on average  
  - Standard: ~21 users active for 5 days  
  - Basic: ~11 users active for 5 days  

- **Top Movies**: Most watched movies were identified by plan type  
- **Genre Preferences**: Comedy, Action, and Drama ranked highest  
- **User Behavior**: Most users watch content on weekends — especially on **Fridays**  
- **Peak Times**: Evening hours (especially 7–10 PM) are the busiest

📖 **[Click here to read the full storytelling insights](storytelling.md)**

## 🧠 Tools Used
- SQL (MySQL / SQLite)
- Jupyter Notebook (`ipython-sql`)
- GitHub for version control
- ERD design tool (e.g., dbdiagram.io)

## 🚀 Getting Started
1. Clone this repository  
2. Import `netflix.sql` into your SQL engine  
3. Open the Jupyter notebook to explore and run analyses  
4. Review the storytelling insights (`storytelling.md`)

## 📁 Project Structure
netflix_sql_analysis/
│
├── netflix.sql # Database schema and sample data
├── netflix_analysis.ipynb # Jupyter Notebook with SQL queries
├── ERD.png # Entity Relationship Diagram
├── storytelling.md # Insights and summary
└── README.md # Project overview

## 📬 Contact
For questions or feedback, feel free to open an issue or reach out.

---

**By:** Fatma Badawy  
**GitHub:** [FATTO447](https://github.com/FATTO447)
