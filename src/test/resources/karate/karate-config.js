function fn(){
  var env = karate.env;
  var properties = read('classpath:karate/karate-properties.json')
  if(!env){
  env ='dev';
}
var config = properties[env]
return config ;
}