# مدیریت DNS با اسکریپت BAT با نام EasyDNSManager: راه‌حلی ساده برای عبور از تحریم‌ها

![GitHub](https://img.shields.io/badge/license-MIT-blue)
![GitHub](https://img.shields.io/badge/language-BAT-yellow)

**اسکریپت BAT مدیریت DNS با نام EasyDNSManager** یک ابزار قدرتمند و ساده برای تغییر و مدیریت تنظیمات DNS در سیستم‌های ویندوز است. دیگر نیازی به نصب چندین تحریم‌شکن یا تغییر دستی تنظیمات DNS ندارید! با این اسکریپت می‌توانید به راحتی DNSهای مورد نظر خود را تعریف، انتخاب، ویرایش یا حذف کنید و از تحریم‌ها عبور کنید.

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

---

# کلمات کلیدی مرتبط
- **DNS تحریم شکن**: ابزاری برای عبور از تحریم‌ها با تغییر DNS.
- **تحریم شکن ویندوز**: راه‌حلی برای کاربران ویندوز برای دسترسی به اینترنت بدون محدودیت.
- **تحریم شکن برای کامپیوتر**: مدیریت DNS برای عبور از تحریم‌ها در کامپیوتر.
- **دانلود تحریم شکن**: دانلود ابزارهای مدیریت DNS برای عبور از تحریم‌ها.
- **خرید تحریم شکن**: خرید سرویس‌های DNS برای دسترسی به اینترنت آزاد.

---

# چرا این اسکریپت؟
با افزایش محدودیت‌های اینترنتی و تحریم‌ها، دسترسی به اینترنت آزاد و بدون محدودیت به یک چالش تبدیل شده است. این اسکریپت به شما کمک می‌کند تا به راحتی و بدون نیاز به نصب نرم‌افزارهای اضافی، DNS سیستم خود را تغییر دهید و از تحریم‌ها عبور کنید.

---
- **اشتراک‌گذاری**: این اسکریپت را با دوستان و همکاران خود به اشتراک بگذارید.
- **نظرات و پیشنهادات**: نظرات و پیشنهادات خود را با ما در میان بگذارید تا بهبودهای لازم اعمال شود.


---

# دانلود و شروع
برای شروع، فایل `dns_manager.bat` را از [اینجا](#) دانلود کنید و دسترسی به اینترنت آزاد را تجربه کنید!

---

#DNS #Windows #BAT #Automation #Network #VPN #شکن #تحریم #تحریم_شکن #گذرازتحریم #گذر_از_تحریم
