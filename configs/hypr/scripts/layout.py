import re
import subprocess

query = subprocess.run(["setxkbmap", "-query"],
    stdout=subprocess.PIPE, stderr=subprocess.PIPE,
    check=True,
    text=True)

query_result = query.stdout

match = re.search(r"layout:\s+([^ ]+)", query_result)

if match:
    layout_value = match.group(1)
    print(str(layout_value).strip())
else:
    print("Layout value not found")


