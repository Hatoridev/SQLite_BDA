# SQLite_DBA

Repository with small examples of Database Administration using SQLite, some in conjunction with Python.

## How to Run

### Termux (Android):
1. **Open the Termux app**.
2. **Update and install necessary packages** by running the following commands:
   ```sh
   apt update && apt upgrade
   pkg install sqlite
   pkg install git
   pkg install python
   git clone https://github.com/Hatoridev/SQLite_DBA.git
   cd SQLite_DBA
   ```

3. **Navigate to the desired lesson directory**:
   ```sh
   cd aula01  # or aula02, aula03, etc.
   ```

4. **Create the database** using the corresponding SQL file:
   ```sh
   sqlite3 your_database.db < create_database.sql
   ```

5. **Run the Python scripts to manipulate the data**:
   ```sh
   python access_roles.py
   ```

### Windows:
1. **Install Git, Python, and SQLite**:
   - Download and install Git: [Git for Windows](https://gitforwindows.org/)
   - Download and install Python: [Python.org](https://www.python.org/downloads/)
   - Download and install SQLite: [SQLite Download Page](https://www.sqlite.org/download.html)

2. **Clone the repository** and navigate to the directory:
   ```sh
   git clone https://github.com/Hatoridev/SQLite_DBA.git
   cd SQLite_DBA
   ```

3. **Install necessary Python packages**:
   ```sh
   pip install sqlite3
   ```

4. **Navigate to the desired lesson directory**:
   ```sh
   cd aula01  # or aula02, aula03, etc.
   ```

5. **Create the database** using the corresponding SQL file:
   ```sh
   sqlite3.exe your_database.db < create_database.sql
   ```

6. **Run the Python scripts to manipulate the data**:
   ```sh
   python access_roles.py
   ```

### Debian/Linux:
1. **Open the terminal** and execute the following commands to install Git, Python, and SQLite:
   ```sh
   sudo apt update && sudo apt upgrade
   sudo apt install sqlite3
   sudo apt install git
   sudo apt install python3
   git clone https://github.com/Hatoridev/SQLite_DBA.git
   cd SQLite_DBA
   ```

2. **Navigate to the desired lesson directory**:
   ```sh
   cd aula01  # or aula02, aula03, etc.
   ```

3. **Create the database** using the corresponding SQL file:
   ```sh
   sqlite3 your_database.db < create_database.sql
   ```

4. **Run the Python scripts to manipulate the data**:
   ```sh
   python3 access_roles.py
   ```

---

## Languages

<div align="left">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/sqlite/sqlite-original.svg" height="60" alt="SQLite logo" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" height="60" alt="Python logo" />
</div>
