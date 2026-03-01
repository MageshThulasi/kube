📌 Question Ingress 📌

✅ Task ✅
🔹 1. Create a new Ingress resource echo in echo-sound namespace.
🔹 2. Expose the deployment with a service named echo-service on http://example.org/echo using service port 8080
🔹 3. The availability of echo-service can be checked using the following command, which should return 200
curl -o /dev/null -s -s "%{http_code}\n" http://example.org/echo

🔹 In the exam it may give you a command like curl -o /dev/null -s -w "%{http_code}\n" http://example.org/echo
🔹 This requires an ingress controller, to get this to work ensure your /etc/hosts file has an entry for your NodeIP
🔹 pointing to example.org

🚀 Video Link 🚀 
https://youtu.be/mtORnV8AlI4?si=6fZq-yd8Sezg0a7v

