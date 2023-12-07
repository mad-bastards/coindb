#!node
import 'json-rw';
import { pgp, db } from './db.js';

const chain = JSON.read("registry.json");
let cols={};
const explorer=[];
const derivation=[];
const info=[];
const data = { chain, explorer, derivation, info };
function noCount(name,i,obj,key,type,val){
  cols[name]||={};
  cols[name][key]||={};
  cols[name][key]=type;
}
function count(name,i,obj,key,type,val){
  cols[name]||={};
  cols[name][key]||={};
  cols[name][key][type]||=0;
  cols[name][key][type]++;
}
function addArray(array,obj) {
  let idx=array.length;
  obj.id=idx;
  array.push(obj);
  return idx;
}
function forEachVal(name,objs,func) {
  for(let i=0;i<objs.length;i++){
    const obj=objs[i];
    const keys=Object.keys(obj);
    for(let j=0; j<keys.length; j++){
      const key=keys[j];
      const val=obj[key];
      let type=(Array.isArray(val)?'array' : typeof(val));
      if(type==='array'){
        const array=val;
        if(key==='derivation'){
          for(let k=0;k<array.length;k++){
            array[k]=addArray(derivation,array[k]);
          }
        } else {
          throw new Error("Unexpected array: '"+key+"'");
        }
        type='number[]';
      } else if ( type === 'object' ) {
        if(key==='info'){
          obj.info=addArray(info,val);
        } else if ( key === 'explorer' ) {
          obj.explorer=addArray(explorer,val);
        } else {
          throw new Error("Unexpected object: '"+key+"'");
        }
        type='number';
      };
      func(name,i,obj,key,type,val);
    }
  }
}
forEachVal('chain',chain,noCount);
forEachVal('info',info,noCount);
forEachVal('derivation',derivation,noCount);
forEachVal('explorer',explorer,noCount);
function sqlType(type) {
  if(type === 'string')
    return 'varchar';
  if(type === 'number[]')
    return 'integer[]';
  if(type === 'number')
    return 'integer';
  if(type==='boolean')
    return 'boolean';
  throw new Error(`unexpected: ${type}`);
};
const tabNames = Object.keys(cols);
for(const tabName of tabNames) {
  let sql = `\ncreate table if not exists "temp_${tabName}" (`;
  const tab=cols[tabName];
  const colNames = Object.keys(tab);
  let pre="";
  for(const colName of colNames) {
    const type = sqlType(tab[colName]);
    sql=sql+`${pre}\n  "${colName}" ${type}`;
    pre=",";
  }
  sql=sql+"\n);\n\n";
  await db.none(sql);
};
console.log("tables exist");
for(const tabName of tabNames) {
  const tabData = data[tabName];
  const colNames = Object.keys(cols[tabName]);
  for(var i=0;i<tabData.length;i++){
    const data=tabData[i];
    for(var j=0;j<colNames.length;j++){
      const colName=colNames[j];
      data[colName]=data[colName];
    }
  }
  const insert = pgp.helpers.insert(tabData,colNames,"temp_"+tabName);
  await db.none(insert);
};
for(const tabName of tabNames) {
  console.log(await db.one("select '"+tabName+"' as tab, count(*) as cnt from \"temp_"+tabName+"\""));
};
pgp.end();
