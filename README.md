# DNS Manager BAT Script

![GitHub](https://img.shields.io/badge/license-MIT-blue)
![GitHub](https://img.shields.io/badge/language-BAT-yellow)

A simple and powerful BAT script to manage DNS settings on Windows systems. No need to install multiple VPNs or manually change DNS settings anymore! Define, select, edit, and delete your preferred DNS entries with ease.

---

## 📜 Table of Contents
- [Features](#-features)
- [How to Use](#-how-to-use)
- [DNS List](#-dns-list)
- [Contributing](#-contributing)
- [License](#-license)

---

## 🌟 Features
- **Set or Change DNS**: Choose from a predefined list of DNS servers.
- **Add New DNS**: Define your own DNS entries and apply them instantly.
- **Edit or Delete DNS**: Modify or remove existing DNS entries.
- **Reset to Default**: Revert to the default DNS settings.
- **Check Current DNS**: View the current DNS configuration.
- **Log DNS Entries**: List all saved DNS entries.

---

## 🛠️ How to Use
1. Download the `dns_manager.bat` file.
2. Run the script as Administrator.
3. Follow the on-screen menu to:
   - Set or change DNS from a predefined list.
   - Add new DNS entries.
   - Edit or delete existing DNS entries.
   - Reset to default DNS settings.
   - View current DNS configurations.

---

## 📋 DNS List
The script uses a `dns_list.txt` file to store predefined DNS entries. Each entry is formatted as follows:
<DNS Name>,<Primary DNS>,<Secondary DNS>,<Validate Settings>

### Example DNS Entries:
403,10.202.10.202,10.202.10.102,yes
shekan,178.22.122.100,185.51.200.2,yes


- **403**: A DNS profile with primary DNS `10.202.10.202` and secondary DNS `10.202.10.102`. The `yes` indicates that the settings should be validated after applying.
- **shekan**: A DNS profile with primary DNS `178.22.122.100` and secondary DNS `185.51.200.2`. The `yes` indicates that the settings should be validated after applying.

You can add, edit, or delete entries in the `dns_list.txt` file as needed.

---

## 🤝 Contributing
Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.

---

## 📄 License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

# مدیریت DNS با اسکریپت BAT

![GitHub](https://img.shields.io/badge/license-MIT-blue)
![GitHub](https://img.shields.io/badge/language-BAT-yellow)

یک اسکریپت BAT ساده و قدرتمند برای مدیریت تنظیمات DNS در سیستم‌های ویندوز. دیگر نیازی به نصب چندین تحریم‌شکن یا تغییر دستی تنظیمات DNS نیست! به راحتی DNSهای مورد نظر خود را تعریف، انتخاب، ویرایش یا حذف کنید.

---

## 📜 فهرست مطالب
- [ویژگی‌ها](#-ویژگی‌ها)
- [نحوه استفاده](#-نحوه-استفاده)
- [لیست DNS](#-لیست-dns)
- [مشارکت](#-مشارکت)
- [لایسنس](#-لایسنس)

---

## 🌟 ویژگی‌ها
- **تنظیم یا تغییر DNS**: از بین لیست DNSهای از پیش تعریف شده انتخاب کنید.
- **افزودن DNS جدید**: DNSهای مورد نظر خود را تعریف و بلافاصله اعمال کنید.
- **ویرایش یا حذف DNS**: DNSهای موجود را ویرایش یا حذف کنید.
- **بازگشت به پیش‌فرض**: تنظیمات DNS را به حالت پیش‌فرض بازگردانید.
- **بررسی DNS فعلی**: تنظیمات DNS فعلی سیستم را مشاهده کنید.
- **لیست DNSها**: تمام DNSهای ذخیره شده را مشاهده کنید.

---

## 🛠️ نحوه استفاده
1. فایل `dns_manager.bat` را دانلود کنید.
2. اسکریپت را به عنوان Administrator اجرا کنید.
3. از منوی نمایش داده شده برای انجام کارهای زیر استفاده کنید:
   - تنظیم یا تغییر DNS از لیست از پیش تعریف شده.
   - افزودن DNS جدید.
   - ویرایش یا حذف DNSهای موجود.
   - بازگشت به تنظیمات پیش‌فرض DNS.
   - مشاهده تنظیمات DNS فعلی سیستم.

---

## 📋 لیست DNS
اسکریپت از فایل `dns_list.txt` برای ذخیره DNSهای از پیش تعریف شده استفاده می‌کند. هر ورودی به این شکل فرمت شده است:
<نام DNS>,<DNS اولیه>,<DNS ثانویه>,<اعتبارسنجی تنظیمات>


### مثال‌هایی از ورودی‌های DNS:
403,10.202.10.202,10.202.10.102,yes
shekan,178.22.122.100,185.51.200.2,yes


- **403**: یک پروفایل DNS با DNS اولیه `10.202.10.202` و DNS ثانویه `10.202.10.102`. مقدار `yes` نشان می‌دهد که پس از اعمال تنظیمات، آن‌ها اعتبارسنجی شوند.
- **shekan**: یک پروفایل DNS با DNS اولیه `178.22.122.100` و DNS ثانویه `185.51.200.2`. مقدار `yes` نشان می‌دهد که پس از اعمال تنظیمات، آن‌ها اعتبارسنجی شوند.

می‌توانید ورودی‌های جدید را به فایل `dns_list.txt` اضافه کنید یا ورودی‌های موجود را ویرایش یا حذف کنید.

---

## 🤝 مشارکت
از مشارکت استقبال می‌کنیم! اگر پیشنهادی دارید، باگی مشاهده کرده‌اید یا درخواست ویژگی جدیدی دارید، لطفاً یک Issue باز کنید یا یک Pull Request ارسال کنید.

---

## 📄 لایسنس
این پروژه تحت لایسنس MIT منتشر شده است. برای جزئیات بیشتر، فایل [LICENSE](LICENSE) را مشاهده کنید.

