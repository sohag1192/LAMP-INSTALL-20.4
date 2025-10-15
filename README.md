
**The script at the provided URL installs a full LAMP stack on Ubuntu 20.04, including Apache 2.4+, PHP 7.4+, MariaDB 10.3+, and Composer.** It's designed for quick setup and includes service activation and basic security steps.

---

## 🧾 Summary of `lamp.sh` Script

This shell script performs the following actions:

### 🔄 System Update
```bash
sudo apt update && sudo apt upgrade -y
```

### 🌐 Apache Installation
- Installs Apache 2.4
- Enables `mod_rewrite`
- Starts and enables the service

### 🐘 PHP 7.4 Installation
- Installs PHP 7.4 and common extensions:
  - `php7.4-cli`, `php7.4-mysql`, `php7.4-curl`, `php7.4-xml`, `php7.4-mbstring`, `php7.4-zip`, `php7.4-gd`

### 🗄️ MariaDB Installation
- Installs MariaDB 10.3+
- Starts and enables the service
- Runs `mysql_secure_installation` for basic hardening

### 📦 Composer Installation
- Installs dependencies (`curl`, `php-cli`, `php-mbstring`, `unzip`)
- Downloads and installs Composer globally

### ✅ Final Verification
- Displays versions of Apache, PHP, MySQL/MariaDB, and Composer

---

## 📌 Usage Instructions

1. Download the script:
   ```bash
   wget https://raw.githubusercontent.com/sohag1192/LAMP-INSTALL-20.4/refs/heads/main/lamp.sh
   ```

2. Make it executable:
   ```bash
   chmod +x lamp.sh
   ```

3. Run the script:
   ```bash
   ./lamp.sh
   ```

---

If you want to adapt this for Nginx or PHP 8.0+, I can help modify the script. You can also extend it to include virtual host setup, firewall rules, or FTP integration. Would you like a version tailored for your media platform deployment workflow?
