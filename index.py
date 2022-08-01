# ライブラリ
from flask import Flask, redirect, render_template,g
from urllib.parse import urlparse
import sqlite3
from flask_bootstrap import Bootstrap

app = Flask(__name__, static_folder='.', static_url_path='')
bootstrap = Bootstrap(app)

libraries = [
    'Numpy',
    'Matplotlib',
    'Pandas',
    'Django'
]

DATABASE = './SQL/python_study.db'

# データベースに接続する
def get_db():
    db = getattr(g, '_database', None)
    if db is None:
        db = g._database = sqlite3.connect(DATABASE)
        db.row_factory = sqlite3.Row
    return db

# データベースの接続を切る
def close_db(e=None):
    db = g.pop('db', None)
 
    if db is not None:
        db.close()

@app.route('/',methods=['GET'])
def index():
    return render_template('index.html',libraries=libraries)

@app.route('/<library_name>')
def library_name(library_name):
    for library in libraries:
        if library == library_name:
            # SQLiteに接続
            db = get_db()

            # SQL（データベースを操作するコマンド）を実行する
            sql = f"select s.section,n.document,c.code,o.output from {library_name} as n join section as s on (s.id = n.section_id) join code as c on (c.section_id = n.section_id) join output as o on (o.section_id = n.section_id);"

            # カーソルを取得する
            cur = db.execute(sql)

            # 取得したデータを変数に格納
            data = cur.fetchall()

            # 接続を閉じる
            close_db()

            print(data)

            return render_template('library.html',library_name=library_name,data=data)
    
    return redirect("/")

app.run(port=8000, debug=True)