from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Xin chào! Đây là ứng dụng Flask chạy trên Kubernetes - Lab 6 thành công!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)