/**
 * jQuery syncTranslit plugin
 *
 * Copyright (c) 2009 Snitko Roman
 * Dual licensed under the MIT (MIT-LICENSE.txt)
 * and GPL (GPL-LICENSE.txt) licenses.
 *
 * @author 	Roman Snitko snowcore.net@gmail.com
 * @link http://snowcore.net/
 * @version 0.0.7
 */
(function(a){a.fn.syncTranslit=function(b){var c=a.extend({},a.fn.syncTranslit.defaults,b);return this.each(function(){$this=a(this);var b=a.meta?a.extend({},c,$this.data()):c,d=a("#"+c.destination);b.destinationObject=d,Array.indexOf||(Array.prototype.indexOf=function(a){for(var b=0;b<this.length;b++)if(this[b]==a)return b;return-1}),$this.keyup(function(){var c=a(this).val(),e="";for(var f=0;f<c.length;f++)e+=a.fn.syncTranslit.transliterate(c.charAt(f),b);var g=new RegExp("["+b.urlSeparator+"]{2,}","g");e=e.replace(g,b.urlSeparator),d.val(e)})})},a.fn.syncTranslit.transliterate=function(a,b){var c=!0,d;a.toLowerCase()!=a&&(c=!1),a=a.toLowerCase();var e=b.dictOriginal.indexOf(a);e==-1?d=a:d=b.dictTranslate[e];if(b.type=="url"){var f=d.charCodeAt(0);if(f>=33&&f<=47&&f!=45||f>=58&&f<=64||f>=91&&f<=96||f>=123&&f<=126||f>=1072)return"";if(d==" "||d=="-")return b.urlSeparator}return b.caseStyle=="upper"?d.toUpperCase():b.caseStyle=="normal"?c?d.toLowerCase():d.toUpperCase():d},a.fn.syncTranslit.defaults={dictOriginal:["а","б","в","г","д","е","ё","ж","з","и","й","к","л","м","н","о","п","р","с","т","у","ф","х","ц","ч","ш","щ","ъ","ы","ь","э","ю","я","і","є","ї","ґ"],dictTranslate:["a","b","v","g","d","e","e","zh","z","i","j","k","l","m","n","o","p","r","s","t","u","f","h","ts","ch","sh","sch","","y","","e","ju","ja","i","je","ji","g"],caseStyle:"lower",urlSeparator:"-",type:"url"}})(jQuery);