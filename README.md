# 🏨 Hotel Booking & Billing System (SQL Server)

## 📌 Project Overview
This project is a **SQL Server–based Hotel Booking & Billing System** designed to manage hotel operations such as guest management, room allocation, service billing, and revenue tracking.  
It demonstrates strong **SQL Server (T-SQL)** skills, including **database design, stored procedures, triggers, transactions, and reporting views**.

---

## 🎯 Features
- **Guest Management** – Store and manage guest details.  
- **Room Management** – Track room types, prices, and occupancy status.  
- **Booking System** – Handle check-in/check-out with automated room allocation.  
- **Services Management** – Add extra services (breakfast, laundry, spa, etc.) to bookings.  
- **Billing System** – Auto-generate bills including room charges + extra services.  
- **Stored Procedures** – Automate check-in and check-out operations.  
- **Triggers** – Auto-update bills when extra services are added.  
- **Views & Reports** – Generate occupancy reports and revenue analytics.  

---

## 🗂️ Database Schema
**Entities:**  
- `Guests` – Stores guest details  
- `Rooms` – Room information (type, price, status)  
- `Bookings` – Guest check-in/check-out details  
- `Services` – Extra hotel services  
- `BookingServices` – Mapping of services used per booking  
- `Payments` – Stores billing and payment details  

---

## ⚙️ SQL Server Features Used
- **DDL & DML Commands** – CREATE, INSERT, UPDATE, DELETE  
- **Constraints** – Primary Key, Foreign Key, Unique, Check  
- **Stored Procedures** – Automated check-in and check-out logic  
- **Triggers** – Auto-bill when services are added  
- **Views** – Occupancy report & revenue report  
- **Transactions** – Consistent booking and billing operations  

---

## 📊 Sample Reports
- **Occupancy Report** – Track which rooms are occupied/available.  
- **Revenue Report** – Show total revenue generated per booking or guest.  
- **Top Guests Report** – Identify high-value customers.  
- **Monthly Revenue Trends** – Track hotel performance.  

---

## ▶️ How to Run
1. Clone this repository:
   ```bash
   git clone https://github.com/MRMADMAX217/Hotel-Booking-and-Billing-system.git
