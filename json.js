import fs from 'fs';

export function writeJson(file, data) {
    const text=JSON.stringify(data,null,2);
    fs.writeFileSync(file,text);
}
export function readJson(file) {
    const buf = fs.readFileSync(file);
    const str = buf.toString();
    return JSON.parse(str);
}
JSON.read= readJson,
JSON.write= writeJson
