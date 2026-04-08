from flask import Flask, jsonify

app = Flask(__name__)   # ← THIS LINE IS CRITICAL

@app.route("/")
def home():
    return jsonify({"message": "DevOps CI/CD Pipeline Running 🚀"})

@app.route("/health")
def health():
    return jsonify({"status": "healthy"})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)