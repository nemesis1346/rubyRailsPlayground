# "Copyrights Owner: NobleProg Tech Ltd, Author: MarcoMaigua"

require 'aws-sdk'

Aws.config.update(
        endpoint: 'https://play.min.io:9000',
        access_key_id: 'Q3AM3UQ867SPQQA43P2F',
        secret_access_key: 'zuf+tfteSlswRu7BJ86wekitnifILbZam1KYY3TG',
        force_path_style: true,
        region: 'us-east-1'
)

rubys3_client = Aws::SQS::Client.new(
    access_key_id: 'AKIAI6LNWX4LC3LICXCQ',
    secret_access_key:  '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',
    region: 'us-east-1')

resp = self.sqs.send_message({
    queue_url: 'https://sqs.us-east-1.amazonaws.com/890327326037/slidehub-convert',
    message_body: message,
})
resp

print "Downloaded 'testobject' as  'download_testobject'. "
