from __future__ import print_function
import subprocess
import os

print('Running udocker install script...')
print(os.system('bash udocker_install.sh'))


def lambda_handler(event, context):
    print('Running udocker run script...')
    reply = subprocess.check_output(['bash', 'udocker_run.sh']).split('\n')[1]

    return {
        'statusCode': 200,
        'body': reply
    }
