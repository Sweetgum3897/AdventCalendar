const pinataSDK = require('@pinata/sdk');
const pinata = pinataSDK();
const IPFSGatewayTools = require('@pinata/ipfs-gateway-tools/dist/node');

pinata.testAuthentication().then((result) => {
    //handle successful authentication here
    console.log(result);
}).catch((err) => {
    //handle error here
    console.log(err);
});

const sourcePath = '';

pinata.pinFromFS(sourcePath).then((result) => {
    //handle results here
    console.log(result);
}).catch((err) => {
    //handle error here
    console.log(err);
});