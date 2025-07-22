const fs = require('fs');

const file1 = 'file1.txt';
const file2 = 'file2.txt';
const mergedfile = 'mergedfile.txt';

try{
    const data1 = fs.readFileSync(file1, 'utf-8');
    const data2 = fs.readFileSync(file2 , 'utf-8');

    fs.writeFileSync(mergedfile, data1 + '\n' + data2);
    console.log('Files merged successfully.');

} catch(err){
    console.error('Error:',err.message);
}