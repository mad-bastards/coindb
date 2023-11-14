#!node
import db from './db.mjs';

const cols = {};
import { readJson, writeJson } from './readJson.mjs';
const data = readJson('registry.json');
for(let i=0;i<data.length;i++){
  data[i].idx=i;
}
console.log(data[0]);
function getType(obj) {
  if(Array.isArray(obj))
    return 'array';
  if(typeof(obj)==='object')
    return 'object';
  return typeof(obj);
}

function studyData(name,data)
{
  const subobjs = {};
  const types = {};
  for(let i=0;i<data.length;i++) {
    const obj = data[i];
    for(const key in obj) {
      const sub = obj[key];
      let type = getType(sub);
      types[key]||={};
      if(type === 'array') {
        subobjs[key]||=[];
        const ids=[];
        for(let j=0;j<sub.length;j++){
          const idx=subobjs[key].length;
          ids.push(idx);
          sub[j]['idx']=idx;
          subobjs[key][idx]=sub[j];
        }
        obj[key]=ids;
        type="integer[]";
      } else if ( type === 'object' ) {
        subobjs[key]||=[];
        const idx=subobjs[key].length;
        obj[key]=idx;
        sub['idx']=idx;
        subobjs[key][idx]=sub;
        type="integer";
      }
      types[key][type] ||= 0;
      types[key][type]++;
    }
  }
  for(const key in types) {
    const keys = Object.keys(types[key]);
    if(keys.length !== 1)
      throw new Error(`mixed types: ${name}.${key}`);
    types[key]=keys[0];
  }
  const studied = [ { name, data, types } ];
  for(const key in subobjs) {
    const arr = subobjs[key];
    const after = studyData(key, subobjs[key]);
    for(let i=0;i<after.length; i++) {
      studied.unshift(after[i]);
    }
  }
  return studied;
}
const studied = studyData('coin',data);
writeJson("pass1.json", studied);

async function createTable(name, data, types) {
  console.log("creating table: "+name);
  let showKeys=true;
  let ddl = "create table if not exists "+name+" (\n";
  let sep = "";
  console.log(data[0]);
  for(const col in types) {
    let type=types[col];
    if(type==="number"){
      type="integer";
    } else if (type==='string') {
      type="varchar";
    } else if (type.startsWith("*")){
      const temp=type;
      type="integer";
    }
    ddl=ddl+sep+"\""+col+"\" "+type;
    sep = ",\n  ";
  }
  ddl=ddl+"\n)";
  console.log(ddl);
  await db.none(ddl);
  const keys = Object.keys(types);
  const cs = new pgp.helpers.ColumnSet(
      keys,
    {table: name}
  );
  for(const obj of data) {
    for(const key of keys) {
      if(obj[key]==null)
        obj[key]=null;
    }
  }
  const query = pgp.helpers.insert(data,cs);
  await db.none(query);
  console.log(query);
}

for(let i=0;i<studied.length;i++) {
  const tab = studied[i];
  await createTable(tab.name,tab.data, tab.types);
}
console.log("done");
//console.log(res);
