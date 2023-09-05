import os
import sys
import json

# with open("packages.lock") as f:
#     try:

#         data = f.read()
#         json_data = json.loads(data)
#     except (OSError, IOError) as e:
#         print(e)

keep_fields = ("url", "rev", "sha256")

try:
    for each in sys.argv[1:]:
        command = f'nix-prefetch-git --quiet {each}'
        output = os.popen(command)
        output = output.read()
        op_json = json.loads(output)
        op_json = {field: op_json[field] for field in keep_fields}

        with open('packages.lock') as f:
            json_data = json.loads(f.read())

            if


except:
    pass
