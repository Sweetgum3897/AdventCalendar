let fs = require("fs");
let axios = require("axios");
const pinataSDK = require('@pinata/sdk');
const pinata = pinataSDK();
const IPFSGatewayTools = require('@pinata/ipfs-gateway-tools/dist/node');
const gatewayTools = new IPFSGatewayTools();

let ipfsArray = [];
let promises = [];

pinata.testAuthentication().then((result) => {
    //handle successful authentication here
    console.log(result);
}).catch((err) => {
    //handle error here
    console.log(err);
});

promises.push(new Promise((res, rej) =>{
    fs.readFile ("", (err, data) => {
         if(err) rej();
        ipfsArray.push({
        path: "",
        content: data.toString("base64")
        })
    res();
    })
}))
    Promise.all(promises).then(() => {
     axios.post("https://mignongenerated.mypinata.cloud/ipfs/", ipfsArray, {
         headers: {
         "X-API-Key": "",
         "Content-Type": "application/json",
         "accept": "application/json"
         }
     }
     ).then((res) => 
     {console.log(res.data);
    })
    .catch((error) => {
        console.log(error)
    })
 })   
 
   
