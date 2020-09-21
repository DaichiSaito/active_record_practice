# README

# 環境構築
`config/database.yml`のusername, passwordを各自の環境に合わせて修正してください。

MySQLを起動しておいてください。

```
$ bundle install
$ bin/rails db:create
$ unzip db/seed.sql.zip -d db
$ bin/rails db < db/seed.sql 
```

# 課題の進め方
いつも通りrails consoleから実行すればOKです。
```
$ bin/rails c
Running via Spring preloader in process 48568
Loading development environment (Rails 6.0.3.3)
irb(main):001:0> Employee.first
   (0.6ms)  SET NAMES utf8mb4,  @@SESSION.sql_mode = CONCAT(CONCAT(@@sql_mode, ',STRICT_ALL_TABLES'), ',NO_AUTO_VALUE_ON_ZERO'),  @@SESSION.sql_auto_is_null = 0, @@SESSION.wait_timeout = 2147483
  Employee Load (0.3ms)  SELECT `employees`.* FROM `employees` ORDER BY `employees`.`emp_no` ASC LIMIT 1
+--------+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date  |
+--------+------------+------------+-----------+--------+------------+
| 10001  | 1953-09-02 | Georgi     | Facello   | M      | 1986-06-26 |
+--------+------------+------------+-----------+--------+------------+
1 row in set
 

```

# 注意事項
一般的なRailsアプリと異なる点がいくつかあります。

例）
- テーブル名が単数系のものがある
- 主キーが`id`ではない

このあたりを注意して課題にチャレンジしてみてください。
