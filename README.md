<h1>Jeff Pinegar</h1><br>
jeffpinegar1@gmail.com<br>
<br>
<h2>Project 2: Extract, Transform and Load (ETL)</h2>
Due: Dec 23, 2023
<br>
<br>
<h2>Overview</h2>
The coding for this project is located in 5 files. These files are heavily commented, so it is clear what 
transformations are performed. Following is a brief description of these files and the operations performed.
<br><br>
I elected to keep the jupyter notebooks as 3 separate files. This not only simplified my development debugging, but it
is also representative of how these files will be used in the real world. Updates on the sales information and the
manufacturing information do not occur at the same time. Therefore they will be processed separately. I anticipate new 
challenges requiring additional transformations, so keeping the load separate will avoid the loading date before it is 
properly transformed.
<br>
<br>
<h4>Clean_Sales_Data.ipynb</h4>
This jupyter notebook reads the data and transforms it. The Transformations include eliminating columns, renaming columns, 
converting sales data from a string to a float, and changing sales date information to a datetime. After this transformation,
the data is written out into a clean CSV file.
<br><br>
The most challenging portion of this was the sales price information. It was contained in a string in a European format with multiple currencies.
The transformation requires cleaning the strings, converting them to floats, and then using a currency library to do the currency conversion.  
The conversion is performed using the exchange rate on the day of the sale. With over 8,000 transactions, this took about 9 minutes.
<br><br>
<h4>Clean_mfg_data.ipynb</h4>
This jupyter notebook reads in the data and transforms it. The transformation includes eliminating columns, renaming columns, 
converting sales data from a string to a float, and changing sales date information to a datetime. After this transformation,
the data is written into a clean CSV file.
<br><br>
<h4>Postgres_create_table.sql</h4>
This SQL file contains the SQL used to construct the table where the data will be loaded following the transformation.
<br><br>
<h4>Load_Prostrgess_database.ipynb</h4>
This jupyter notebook contains the code for loading the Postgres database. This is done in three steps. (1) Reading in the cleaned file,
(2) Opening the connections to the database. (3) Loading the data into the database. In addition to the transformed 
sales and manufacturing data, a third CSV file was also loaded. This file can be used to change CMAT codes to English.
<br><br>
<h4>Loaded_Postgres_ETL_db.backup</h4>
This is a backup of the Postgres database once it was loaded with the data from the 4 CSV files.
<br>

