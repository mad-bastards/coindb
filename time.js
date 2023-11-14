function now() {
  return new Date().getTime();
}
function delay(seconds,chunk,check) {
  const start =now();
  const limit =start+1000*seconds;
  let promise=new Promise((res,rej)=>{
    function done(){
      console.log("done")
      res("done");
    };
    setTimeout(done, 5000);
  });
  console.log(promise);
}

