# **Procurement Management System (Odoo 17) - Dockerized Version**
🚀 **A fully Dockerized Odoo 17 Procurement Management System with Nginx Reverse Proxy** 🚀  

This project provides a **containerized** deployment of the **Procurement Management System** using **Docker & Docker Compose**. The system includes **Odoo 17**, **PostgreSQL**, and **Nginx** for reverse proxy handling.

---

## **🔹 Prerequisites**
Ensure you have the following installed:
- **Docker** → [Download & Install](https://docs.docker.com/get-docker/)
- **Docker Compose** → [Install Guide](https://docs.docker.com/compose/install/)

---

## **🔹 Folder Structure**
```
Final_Project_Docker/
│── config/                # Configuration files
│── enterprise_file/       # Enterprise dependencies (if any)
│── nginx/                 # Nginx configuration
│── odoo-addons/           # Custom Odoo addons
│── procurement/           # Procurement module files
│── .gitignore             # Git ignore file
│── docker-compose.yml     # Docker Compose file
│── Dockerfile             # Docker build instructions
```

---

## **🔹 Installation & Setup**
### 1️⃣ **Clone the Repository**
```bash
git clone https://github.com/YourUsername/Final_Project_Docker.git
cd Final_Project_Docker
```

### 2️⃣ **Build & Run the Docker Containers**
```bash
docker-compose up -d --build
```
This will:
- Build the **Odoo 17** image.
- Set up a **PostgreSQL** database.
- Configure **Nginx** as a reverse proxy.
- Start all services in detached mode (`-d`).

### 3️⃣ **Access Odoo**
Once the containers are running, open your browser and visit:
```
http://localhost
```
For **Odoo Backend**, use:
```
http://localhost/web
```

---

## **🔹 Environment Variables**
Modify **`.env`** (if included) or update `docker-compose.yml` for:
- Database name, user, password
- Odoo configuration settings
- Nginx reverse proxy settings

---

## **🔹 Stopping the Containers**
To stop the running services:
```bash
docker-compose down
```

To restart:
```bash
docker-compose up -d
```

---

## **🔹 Logs & Debugging**
### 📜 **Check logs for each service**
- **Odoo logs**  
```bash
docker logs -f procurement_odoo
```
- **PostgreSQL logs**  
```bash
docker logs -f procurement_db
```
- **Nginx logs**  
```bash
docker logs -f procurement_nginx
```

---

## **🔹 Database Management**
To access the **PostgreSQL database** inside the container:
```bash
docker exec -it procurement_db psql -U odoo -d odoo
```

---

## **🔹 Custom Addons**
If you need to add **custom Odoo modules**, place them inside the **`odoo-addons/`** directory and restart the containers:
```bash
docker-compose restart
```

---

## **🔹 License**
This project was developed **for training and learning purposes** under the BJIT Academy Youth Skill Development Training Program.

---

💡 **For any issues or contributions, feel free to open an issue or submit a pull request.** 🚀

