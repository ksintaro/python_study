-- SQLite
-- CREATE TABLE NUMPY (SECTION_ID INT PRIMARY KEY,DOCUMENT TEXT);
-- CREATE TABLE SECTION (ID INT,SECTION VARCHAR(255));
-- CREATE TABLE CODE (SECTION_ID INT,CODE VARCHAR(255));
-- CREATE TABLE OUTPUT (SECTION_ID INT,OUTPUT VARCHAR(255));

-- INSERT INTO NUMPY VALUES(1,'numpyを使用するときはnumpyを自分のコンピュータにインストールし、モジュールを読み込みます。importの 後に as とすることで別名を使うことができます。numpyの場合 np と別名をよく付けるので試しにimportしてみましょう。');

-- INSERT INTO NUMPY 
--     VALUES(2,'ベクトル・行列・テンソルなどは、プログラミング上は多次元配列により表現でき、NumPy では ndarray というクラスで多次元配列を表現します。早速、これを用いてベクトルを定義してみましょう。'),
--     (3,'このように、Python リスト [1, 2, 3] を np.array() に渡すことで、[1,2,3] というベクトルを表す ndarray オブジェクトを作ることができます。 ndarray オブジェクトは shape という属性 （attribute） を持っており、その多次元配列の形 （shape） が保存されています。 上で定義した a という ndarray オブジェクトの形を調べてみましょう。'),
--     (4,'(3,) という要素数が 1 の Python のタプルが表示されています。 ndarray の形は、要素が整数のタプルで表され、要素数はその多次元配列の次元数 （dimensionality, number of dimensions） を表します。 形は、その多次元配列の各次元の大きさを順に並べた整数のタプルになっています。次元数は、ndarray の ndim という属性に保存されています。'),
--     (5,'これは、len(a.shape) と同じ値になります。 今、a という ndarray は 1 次元配列なので、a.shape は要素数が 1 のタプルで、ndim の値は 1 でした。では次に、3×3 行列を定義してみましょう。'),
--     (6,'形と次元数を調べます。'),
--     (7,'ここで、size という属性も見てみましょう。'),
--     (8,'これは、b という ndarray が持つ要素の数を表しています。 b は 3×3 行列なので、要素数は 9 です。 「形」「次元数」「サイズ」という言葉がそれぞれ意味するものの違いを確認してください。NumPy の ndarray の作成方法には、np.array() を用いて Python のリストから多次元配列を作る方法以外にも、色々な方法があります。 以下に代表的な例をいくつか紹介します。'),
--     (9,''),
--     (10,''),
--     (11,''),
--     (12,''),
--     (13,'');

-- INSERT INTO SECTION
--     VALUES(1,'NumPy を使う準備'),
--     (2,'多次元配列を定義する'),
--     (3,''),
--     (4,''),
--     (5,''),
--     (6,''),
--     (7,''),
--     (8,''),
--     (9,''),
--     (10,''),
--     (11,''),
--     (12,''),
--     (13,'');

delete from code;

INSERT INTO CODE 
    VALUES(1,'import numpy as np'),
    (2,'# ベクトルの定義' + char(10) + 'a = np.array([1, 2, 3])' + char(10,10) + 'a'),
    (3,'a.shape'),
    (4,'a.ndim'),
    (5,'# 行列の定義' + char(10) + 'b = np.array(' + char(10,9) + '[[1, 2, 3],' + char(10,9) + '[4, 5, 6],' + char(10,9) + '[7, 8, 9]]' + char(10,10) + ')b'),
    (6,"print('Shape:', b.shape)" + char(10) + "print('Rank:', b.ndim)"),
    (7,'b.size'),
    (8,'# 形を指定して、要素が全て 0 で埋められた ndarray を作る' + char(10) + 'a = np.zeros((3, 3))' + char(10,10) + 'a'),
    (9,'# 形を指定して、要素が全て 1 で埋められた ndarray を作る'+ char(10) + 'b = np.ones((2, 3))'+ char(10,10) + 'b'),
    (10,'# 形と値を指定して、要素が指定した値で埋められた ndarray を作る' + char(10) +'c = np.full((3, 2), 9)' + char(10,10) + 'c'),
    (11,'# 指定された大きさの単位行列を表す ndarray を作る' + char(10) + 'd = np.eye(5)' + char(10,10) +'d'),
    (12,'# 形を指定して、 0 ~ 1 の間の乱数で要素を埋めた ndarray を作る' + char(10) +'e = np.random.random((4, 5))'+ char(10,10) +'e'),
    (13,'# 3 から始まり 10 になるまで 1 ずつ増加する数列を作る（10 は含まない）' + char(10) + 'f = np.arange(3, 10, 1)' + char(10,10) + 'f');

-- INSERT INTO OUTPUT 
--     VALUES(1,''),
--     (2,'array([1, 2, 3])'),
--     (3,'(3,)'),
--     (4,'1'),
--     (5,'array([[1, 2, 3],\n\t[4, 5, 6],\n\t[7, 8, 9]])'),
--     (6,'Shape: (3, 3)\nRank: 2'),
--     (7,'9'),
--     (8,'array([[0., 0., 0.],\n\t[0., 0., 0.],\n\t[0., 0., 0.]])'),
--     (9,'array([[1., 1., 1.],\n\t[1., 1., 1.]])'),
--     (10,'array([[9, 9],\n\t[9, 9],\n\t[9, 9]])'),
--     (11,'array([[1., 0., 0., 0., 0.],\n\t[0., 1., 0., 0., 0.],\n\t[0., 0., 1., 0., 0.],\n\t[0., 0., 0., 1., 0.],\n\t[0., 0., 0., 0., 1.]])'),
--     (12,'array([[0.945015  , 0.43016639, 0.29548392, 0.95129474, 0.79083349],\n\t[0.38302104, 0.81301269, 0.89543488, 0.98794199, 0.07312155],\n\t[0.28104454, 0.05910526, 0.82286822, 0.80324149, 0.34598631],\n\t[0.27901198, 0.99971565, 0.80767343, 0.8232321 , 0.53487828]])'),
--     (13,'array([3, 4, 5, 6, 7, 8, 9])');
