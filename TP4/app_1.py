from flask import Flask, render_template
import mysql.connector

app = Flask(__name__)
 
# MySQL configuration
db_config = {
    'host': 'tp4-sql',
    'user': 'root',
    'password': 'foo',
    'database': 'demosql'
}




@app.route('/')
def index():
	# Initialize MySQL connection
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor() 
    # Sample query
    query = "SELECT * FROM myTable"
    cursor.execute(query)
    data = cursor.fetchall()
    
    # Close the cursor and connection
    cursor.close()
    conn.close()
    
    return render_template('index.html', data=data)

@app.route('/p3', methods=['GET', 'POST'])
def index3():
    return render_template("form.html")

@app.route('/newuser/', methods=['GET', 'POST'])
def new_user():
    return"aaa"

if __name__ == '__main__':
    app.run(debug=True)
    

