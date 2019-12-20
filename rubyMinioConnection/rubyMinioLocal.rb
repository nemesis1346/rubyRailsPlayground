# "Copyrights Owner: NobleProg Tech Ltd, Author: MarcoMaigua"

require 'aws-sdk'

Aws.config.update(
        endpoint: 'http://192.168.43.18:9000',
        access_key_id: '1SUQJOENWO3HKQ1FC4EQ',
        secret_access_key: 'NBa207Kx+iLLTtnTbfVp6DDC9UuQDanemDEtZ+Ro',
        force_path_style: true,
        region: 'us-east-1'
)

rubys3_client = Aws::S3::Client.new

# put_object operation

rubys3_client.put_object(
        key: 'nemesis1346',
        body: 'Hello from MinIO!!',
        bucket: 'nemesis1346',
        content_type: 'text/plain'
)

# get_object operation

rubys3_client.get_object(
         bucket: 'nemesis1346',
         key: 'nemesis1346',
         response_target: 'download_testobject'
)

print "Downloaded 'testobject' as  'download_testobject'. "
