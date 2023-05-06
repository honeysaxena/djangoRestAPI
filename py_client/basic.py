import requests

# endpoint = "https://httpbin.org/status/200/"
# endpoint = "https://httpbin.org/anything"
endpoint = "http://localhost:8000/api"

get_response = requests.POST(endpoint, json={"content": "Hello world"})
# print(get_response.status_code)
# print(get_response.text)
# print('')
print(get_response.json())
# print('')
# print(get_response.status_code)
