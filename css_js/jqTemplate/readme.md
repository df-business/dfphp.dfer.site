 * jQuery Templates
 * 
 * 通过模版动态加载后台数据
 * 
 * 下载地址
 * http://plugins.jquery.com/jquery-tmpl/  
 * 已发布版本
 * https://github.com/KanbanSolutions/jquery-tmpl/releases
// 使用说明
 https://github.com/KanbanSolutions/jquery-tmpl/blob/master/README.md
 
 
 
     Tags:
     //print
     ${i}
     {%=i%}
     
//   if
    {%if <condition> %}<action>{%/if%}
    //if else
    {%if <condition> %}<action>{%else%}<action>{%/if%}
//  if elif else 
    {%if <condition> %}<action>{%elif <condition> %}<action>{%else%}<action>{%/if%}
    //each
    {%each <array_or_object> %}$value, $index{%/each%}
    {%each(index,val) <array_or_object> %}val,index{%/each%}
    //temp
    {%tmpl <template>%}
//  js
    {%= js call %}
    //html js
    {%html js call %}
 


#rm#
-temp的id会导致重复引用而出错
-eg:$('#userInfo').tmpl(dt).appendF(0,true);






  #自定义的temp对于部分元素的兼容性不佳（比如table），为确保万无一失应该使用script标签
    <temp></temp>
    <script id='dt2' type="text/html"></script>
    
temp {
			display: none;
		}