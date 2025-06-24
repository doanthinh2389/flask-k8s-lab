# Sử dụng image Python chính thức
FROM python:3.9-slim

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép requirements trước để tận dụng layer caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Sao chép toàn bộ ứng dụng
COPY . .

# Chỉ định port ứng dụng sẽ chạy
EXPOSE 5000

# Command để chạy ứng dụng
CMD ["python", "app.py"]