/*
 * requireJs的初始界面
 * 
 * head中的script排序可能跟手写的顺序不一样，但是js内部是按照依赖关系依次调用的，不影响使用
 * 
 * 
 */
//基本参数
require.config({
//所有文件都会以此路径进行加载
baseUrl: '/css_js/RequireJS/t',
//引用其余路径的文件
 paths: {
  jq: '../../jquery.min',
  df: '../../df',
},
//将js文件加入到指定的requirejs模块
//将animalWorld.js加入到world.js
shim: {
  'world': {
    deps:['animalWorld'],
    exports: ''
  }
}
});
//jq需要优先引用，否则后面的js文件无法正常调用jq
require(['jq'],function(){
//引用js文件，调用其中模块的方法，没有声明模块则直接调用方法
require(['cat','world','math','df'], function (cat,world,x) {
world.world();
cat.say();
i=x.add(1,2)
log(i)

message('雨下的很大🌧️');

});

	
});

