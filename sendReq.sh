data_id=`curl --location 'https://api.metadefender.local:9999/v4/file' --header 'Content-Type: multipart/form-data' --header 'rule:multiscan' --header 'x-source: postman'  --header 'apikey: 3d774dcf261286a3d7386ccddd83b2c8' --form 'file=@"/home/danciobanu/Downloads/file-sample_150kB.pdf"' | jq -r .data_id`


echo ${data_id}



curl --location "https://api.metadefender.local:9999/v4/file/${data_id}" --header 'x-source: postman' --header 'apikey: 3d774dcf261286a3d7386ccddd83b2c8'
