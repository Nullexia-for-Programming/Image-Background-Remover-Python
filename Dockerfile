# استخدم صورة Python الأساسية
FROM python:3.9-slim

# تعيين مسار العمل داخل الحاوية
WORKDIR /app

# نسخ جميع الملفات إلى مسار العمل داخل الحاوية
COPY . .

# تثبيت المتطلبات من ملف requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# فتح المنفذ الافتراضي 8000
EXPOSE 8000

# تعريف أمر تشغيل التطبيق الافتراضي
CMD ["python", "app.py"]