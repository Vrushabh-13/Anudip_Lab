const fs = require('fs');

const sourceFile = 'sourcefile.txt';
const destinationFile = 'destinationfile.txt';

fs.access(sourceFile , fs.constants.F_OK, (err) => {
    if(err){
        console.error(`error: The source file '${sourceFile}' does not exist`);
        return;
    }
    fs.copyFile(sourceFile, destinationFile, (err)=>{
        if(err){
            console.error('Error copying file:',err);
            return;
        }
        console.log(`Contents of '${sourceFile}' copied to '${destinationFile}' successfully.`);
    });
});