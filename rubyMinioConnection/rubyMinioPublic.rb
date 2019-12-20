# "Copyrights Owner: NobleProg Tech Ltd, Author: MarcoMaigua"

require 'aws-sdk'

Aws.config.update(
        endpoint: 'https://play.min.io:9000',
        access_key_id: 'Q3AM3UQ867SPQQA43P2F',
        secret_access_key: 'zuf+tfteSlswRu7BJ86wekitnifILbZam1KYY3TG',
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
