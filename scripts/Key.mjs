import axios from 'axios';
export const generateApiKey = (pinataApiKey, pinataSecretApiKey) => {
    const url = `https://api.pinata.cloud/users/generateApiKey`;
    const body = {
        keyName: 'Defi Key',
        permissions: {
            endpoints: {
                data: {
                    userPinnedDataTotal: true
                },
                pinning: {
                    pinJobs: true,
                    unpin: true,
                    userPinPolicy: true
                }
            }
        }
    };
    return axios
        .post(url, body, {
            headers: {
                pinata_api_key: pinataApiKey,
                pinata_secret_api_key: pinataSecretApiKey
            }
        })
        .then(function (response) {
            console.log(response);
        })
        .catch(function (error) {
            //handle error here
        });
}