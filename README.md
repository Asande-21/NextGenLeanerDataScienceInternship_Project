# 📊 NextGen Learners Remote Data Science Internship

## 📌 Project Overview

This repository documents the practical work completed as part of the **NextGen Learners Remote Data Science Internship**. The project demonstrates the application of data science techniques across four stages, progressing from data preparation and exploratory analysis to database management, interactive dashboard development and introductory machine learning.

Using an internship applicant dataset, the project explores how raw data can be cleaned, analysed, structured, visualised and used to experiment with predictive modelling.

The internship project is divided into four stages:

- **Week 1:** Data Cleaning using Python and Pandas.
- **Week 2:** Exploratory Data Analysis (EDA) and Data Visualisation.
- **Week 3:** SQL Database Management and Interactive Dashboard Development.
- **Week 4:** Machine Learning and Predictive Modelling using Logistic Regression.

## 🎯 Project Objectives

- Identify and handle missing values, duplicate records and inconsistent data.
- Improve data quality through cleaning and validation.
- Explore application patterns across domains, universities, dates and statuses.
- Create visualisations to communicate meaningful findings.
- Develop practical SQL and database management skills.
- Build an interactive dashboard to monitor and explore application metrics.
- Apply introductory machine learning techniques to investigate internship selection outcomes.
- Evaluate model performance and communicate findings honestly.
- Develop practical experience across the data science workflow.

## 🛠️ Tools and Technologies

- **Python** — programming and data analysis.
- **Pandas** — data cleaning, manipulation and analysis.
- **NumPy** — numerical operations and feature generation.
- **Matplotlib & Seaborn** — data visualisation.
- **Scikit-learn** — machine learning and model evaluation.
- **SQLite** — database creation, management and querying.
- **Google Sheets** — interactive dashboard development.
- **Google Colab** — writing and executing Python notebooks.
- **DB Browser for SQLite** — database management.
- **GitHub** — project storage and version control.
- **CSV** — data storage and exchange.

---

# 🧹 Week 1: Data Cleaning

## 📌 Overview

The first week focused on preparing an internship applicant dataset for analysis by identifying and addressing data-quality issues.

## 📂 Dataset

The applicant dataset contains the following fields:

- Applicant Name
- Email
- Phone
- Domain Applied
- University
- Application Date
- Status

Both the original dataset (`applicants.csv`) and cleaned dataset (`applicants_cleaned.csv`) were used to support data-quality assessment and subsequent analysis.

## 🔍 Tasks Performed

- Inspected the dataset's structure and data types.
- Identified and handled missing values.
- Detected and removed duplicate records.
- Investigated and corrected inconsistent data.
- Applied appropriate replacements for missing information.
- Validated the cleaned dataset.
- Exported the cleaned data for further analysis.

## 🎯 Outcome

Successfully prepared a cleaner and more consistent dataset for exploratory data analysis in Week 2.

---

# 📈 Week 2: Exploratory Data Analysis (EDA)

## 📌 Overview

The second week focused on exploring the cleaned applicant dataset using Python, Pandas and data visualisation libraries to identify patterns and trends.

## 📊 Visualisations

Five visualisations were created to explore different aspects of the application data:

1. **Applications per Domain** — compares application volumes across domains.
2. **Monthly Application Trends** — explores how application volumes change over time.
3. **Application Status Breakdown** — compares selected, rejected and under-review applications.
4. **Application Status by Domain** — examines how application outcomes differ across domains.
5. **Applications by Day of the Week** — explores differences in submission activity across the week.

## 🔑 Key Findings

- Web Development and Software Engineering each recorded 20 applications.
- April, June and July each recorded 11 applications, while September recorded the fewest, with 2.
- Under Review was the most common application status, with 33 applications, followed by Rejected (23) and Selected (21).
- Wits recorded 20 applications, followed by UKZN with 17.
- Friday recorded the most applications by day of the week (14), while Tuesday and Saturday each recorded 7.

These findings reflect the recorded category values in the dataset used for the analysis.

## 🎯 Outcome

Developed practical experience in exploring datasets, identifying patterns, interpreting visualisations and communicating findings through data analysis.

---

# 🗄️ Week 3: SQL Database Management & Interactive Dashboard

## 📌 Overview

The third week focused on developing practical SQL and database management skills while building an interactive dashboard to present important internship application metrics. To have access to week 3 info and data files open the branch "Week 3".

The project involved importing multiple CSV datasets into an SQLite database, creating and organising database tables, generating unique applicant IDs and writing SQL queries to retrieve and analyse information.

The final stage involved developing an interactive dashboard using Google Sheets to make important application metrics easier to explore.

## 🗃️ 1. Database Management

- Imported multiple CSV datasets into SQLite.
- Created and populated structured database tables.
- Generated unique applicant IDs to identify individual applicant records.
- Organised applicant information for easier retrieval and analysis.
- Worked with related datasets, including applicant, intern and hackathon score records.
- Practised database management and SQL operations.

## 💻 2. SQL Queries and Analysis

Used SQL to retrieve, filter and analyse information from the database.

Key concepts and operations included:

- `SELECT` — retrieving records from database tables.
- `WHERE` — filtering records based on specific conditions.
- Aggregate functions — calculating summary statistics.
- `GROUP BY` — categorising and summarising records.
- Database operations for managing and exploring structured data.

## 📊 3. Interactive Dashboard Development

Developed an interactive dashboard using Google Sheets to present important internship application metrics.

**Dashboard components included:**

- Total applicant metrics.
- Application distribution across domains.
- Application completion metrics.
- Conversion rate analysis.
- Domain-based filtering.
- Interactive charts that update based on selected filters.

The dashboard provides a more accessible way to explore application data, compare domain performance and monitor important application metrics.

## 🎯 Key Learning Outcomes

- Working with relational databases using SQLite.
- Importing and organising multiple datasets.
- Creating unique identifiers for database records.
- Writing SQL queries to retrieve and analyse information.
- Building interactive dashboards using Google Sheets.
- Presenting data in a format that supports decision-making.

---

# 🤖 Week 4: Machine Learning – Predicting Internship Selection Outcomes

## 📌 Overview

The fourth week introduced machine learning through a capstone project focused on predicting internship selection outcomes using Logistic Regression.

The objective was to investigate whether application-related features could help explain or predict whether an applicant would be selected for the NextGen Learners internship.

This stage built on the previous weeks by extending the data science workflow into predictive modelling, model evaluation and interpretation.

## 🎯 Objective

To apply a beginner-friendly machine learning model to the applicant dataset, evaluate its predictive performance and communicate the results clearly to a non-technical audience.

## 📂 Dataset and Feature Preparation

The cleaned applicant dataset from Week 1 (`applicants_cleaned.csv`) was used as the starting point.

- **Original dataset:** 77 applicants.
- **Selected applicants:** 21.
- **Rejected applicants:** 23.
- **Under Review applicants:** 33.
- **Final modelling dataset:** 44 applicants.

Applicants with an Under Review status were excluded because they did not have confirmed selection outcomes.

### Important Data Limitation

Four additional features were introduced for the modelling exercise:

- `num_skills_listed`
- `has_portfolio`
- `prior_hackathon_participation`
- `statement_quality_score`

These features were **simulated using random numbers**, with `np.random.seed(42)` to ensure reproducibility. They do not represent actual historical applicant information.

The original application statuses were also randomly generated for the project dataset.

Personal identifiers such as applicant names, email addresses and phone numbers, as well as university information, were excluded from the model features.

Consequently, the model should be treated as an educational experiment rather than a reliable system for predicting actual internship selection outcomes.

## ⚙️ Methodology

The following machine learning workflow was implemented:

1. **Data Preparation:** Standardised spaces and capitalisation in text columns.
2. **Feature Engineering:** Introduced simulated applicant features and converted categorical Yes/No values into numerical representations.
3. **Target Creation:** Created a binary target variable, where 1 represented Selected and 0 represented Rejected.
4. **Data Filtering:** Excluded applicants whose applications were still Under Review.
5. **Encoding:** Applied one-hot encoding to the application domain.
6. **Model Training:** Split the dataset into 80% training data and 20% testing data using `random_state=42`.
7. **Model Development:** Implemented Logistic Regression using Scikit-learn.
8. **Model Evaluation:** Evaluated performance using accuracy, precision, recall and a confusion matrix.
9. **Reliability Assessment:** Compared performance across 20 different data splits and against a simple baseline model.

## 📊 Key Results

| Evaluation Metric | Result |
|---|---:|
| Accuracy | 33% |
| Precision | 25% |
| Recall | 100% |
| Correct Predictions | 3 out of 9 |

### Model Reliability

Additional evaluation revealed that:

- Accuracy ranged from 0% to 56% across 20 different train/test splits.
- Cross-validated accuracy was approximately 45%.
- The model performed worse than a simple baseline that always predicted Rejected, which achieved approximately 52% accuracy.

### Interpretation

Although the model achieved 100% recall, this result was misleading because it predicted almost everyone as Selected.

Its precision of 25% indicates that only 2 out of the 8 applicants predicted as Selected were actually selected.

Overall, the model demonstrated no meaningful predictive ability with the available features.

The coefficient rankings were also not treated as meaningful findings because the input features were simulated rather than collected from actual applications.

## 💡 Recommendations

To develop a more reliable predictive model in the future:

- Collect genuine applicant information about skills and technical experience.
- Include actual portfolio information.
- Introduce consistently rubric-scored personal statements.
- Gather real selection outcomes from completed applications.
- Build a larger dataset containing at least 200 applicants with confirmed decisions.
- Retrain and evaluate the model using genuine historical data.

## 🎯 Outcome

Gained introductory experience in machine learning, feature engineering, Logistic Regression, model evaluation and interpreting predictive results.

An important lesson from this capstone was that building a machine learning model is not enough. The quality and reliability of the underlying data are essential when determining whether a model can produce useful predictions.

---

# 📚 Overall Skills Developed

Through the four weeks of practical work, I developed experience in:

### Data Preparation and Analysis
- Data inspection and quality assessment.
- Missing-value and duplicate handling.
- Data cleaning and validation using Pandas.
- Data grouping and summarisation.
- Working with dates and extracting time-based features.

### Data Visualisation and Reporting
- Creating and interpreting charts.
- Identifying patterns and trends.
- Communicating findings through visualisations.
- Developing interactive dashboards.

### Database Management
- SQL querying and database management.
- Importing and organising multiple datasets.
- Creating unique identifiers.
- Working with related database tables.
- Extracting information using SQL operations.

### Machine Learning
- Feature engineering and preparation.
- One-hot encoding.
- Logistic Regression.
- Training and testing machine learning models.
- Evaluating models using accuracy, precision and recall.
- Confusion matrix interpretation.
- Cross-validation and baseline comparison.
- Understanding the importance of data quality in predictive modelling.

---

# 🚀 Conclusion

The NextGen Learners Remote Data Science Internship provided practical experience across four important stages of the data science workflow.

The project began with cleaning and preparing an applicant dataset, followed by exploratory data analysis to identify patterns and trends. It then progressed into SQL database management and interactive dashboard development before introducing machine learning through a Logistic Regression capstone.

Each stage contributed to developing a better understanding of how data can be collected, prepared, analysed, stored, visualised and used to investigate real-world problems.

The Week 4 capstone also highlighted an important principle in data science: **a machine learning model is only as reliable as the data used to train and evaluate it.**

Overall, this internship strengthened my practical skills in Python, Pandas, SQL, data visualisation, dashboard development and introductory machine learning while providing valuable exposure to the end-to-end data science process.

---

## 👨‍💻 Author

**Snethemba Asande Mthembu**

Bachelor of Science(Mathematics Stream) majoring with Computer Science ad Data Science student at the University of KwaZulu-Natal (UKZN).
