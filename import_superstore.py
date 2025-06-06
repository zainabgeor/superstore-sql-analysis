import pandas as pd
import sqlite3

# Load your CSV file
df = pd.read_csv("superstore.csv")  # make sure the filename matches

# Connect to a new or existing SQLite database
conn = sqlite3.connect("practice.db")  # this file will be created if it doesn't exist
cursor = conn.cursor()

# Save the DataFrame as a table in SQLite
df.to_sql("superstore_sales", conn, if_exists="replace", index=False)

print("✅ Data successfully imported into SQLite!")
conn.close()
