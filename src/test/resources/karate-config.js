function fn(){
const env= karate.env;
const properties = read('classpath: karate-properties.json')
if(!env){
env = 'dev';
}
var config = properties[env]
return config ;
}