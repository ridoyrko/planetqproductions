(this["webpackJsonpapp-frontend"]=this["webpackJsonpapp-frontend"]||[]).push([[20],{492:function(e,t,r){"use strict";r.d(t,"a",(function(){return o}));var n=r(8),a=r(9),o=function(){function e(){Object(n.a)(this,e)}return Object(a.a)(e,null,[{key:"errorMessage",value:function(e,t,r,n){var a,o=arguments.length>4&&void 0!==arguments[4]?arguments[4]:null;if(o)return o;if(!n&&!r[e])return null;var i=t[e];return(null===i||void 0===i||null===(a=i[0])||void 0===a?void 0:a.message)||(null===i||void 0===i?void 0:i.message)||i||null}}]),e}()},493:function(e,t,r){"use strict";var n=r(37),a=r(54),o=(r(2),r(59)),i=r(6);t.a=function(e){var t=function(e){return e.length>1};return Object(i.jsx)("ol",{className:"text-sm flex items-center",children:e.items.map((function(r,c){var u=0===c,l=e.items.length-1===c;return Object(i.jsxs)("li",{className:"".concat(l?"text-gray-800 dark:text-white":"text-gray-500 dark:text-gray-200 mr-2"),children:[!u&&Object(i.jsx)(a.a,{className:"mr-2 font-normal text-gray-400 dark:text-gray-200",icon:n.d}),t(r)?Object(i.jsx)(o.a,{className:"hover:underline",to:r[1],children:r[0]}):r[0]]},r[0])}))})}},497:function(e,t,r){"use strict";var n=r(100),a=r(2),o=r(491),i=r(492),c=r(596),u=r(6);function l(e){var t=Object(a.useState)(Object(c.a)()),r=Object(n.a)(t,1)[0],l=e.label,s=e.name,b=e.hint,d=e.type,m=e.placeholder,f=e.autoFocus,j=e.autoComplete,g=e.required,O=e.externalErrorMessage,p=e.disabled,h=e.endAdornment,x=Object(o.d)(),v=x.register,y=x.errors,w=x.formState,C=w.touched,k=w.isSubmitted,q=i.a.errorMessage(s,y,C,k,O);return Object(u.jsxs)("div",{children:[Object(u.jsxs)("div",{children:[Boolean(l)&&Object(u.jsxs)("label",{className:"block text-sm text-gray-800 dark:text-gray-200",htmlFor:r,children:[l," ",g?Object(u.jsx)("span",{className:"text-sm text-red-400",children:"*"}):null]}),Object(u.jsxs)("div",{className:"flex flex-nowrap items-baseline",children:[Object(u.jsx)("input",{id:r,name:s,type:d,ref:v,onChange:function(t){e.onChange&&e.onChange(t.target.value)},onBlur:function(t){e.onBlur&&e.onBlur(t)},placeholder:m||void 0,autoFocus:f||void 0,autoComplete:j||void 0,disabled:p,className:"block w-full px-4 py-2 mt-2 text-gray-700 bg-white border border-gray-300 rounded-md dark:bg-gray-800 dark:text-gray-200 dark:border-gray-600 focus:border-blue-500 dark:focus:border-blue-500 focus:outline-none focus:ring ".concat(q?"border-red-400 text-red-600":"")}),h&&Object(u.jsx)("span",{className:"ml-2 text-gray-700",children:h})]})]}),Object(u.jsx)("div",{className:"text-red-600 text-sm mt-2",children:q}),Boolean(b)&&Object(u.jsx)("div",{className:"text-gray-500 text-sm mt-2",children:b})]})}l.defaultProps={type:"text",required:!1},t.a=l},498:function(e,t,r){"use strict";function n(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}r.d(t,"a",(function(){return n}))},499:function(e,t,r){"use strict";function n(e,t){for(var r=0;r<t.length;r++){var n=t[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}function a(e,t,r){return t&&n(e.prototype,t),r&&n(e,r),e}r.d(t,"a",(function(){return a}))},500:function(e,t,r){"use strict";r.d(t,"a",(function(){return a}));var n=r(162);function a(e,t){if("function"!==typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function");e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,writable:!0,configurable:!0}}),t&&Object(n.a)(e,t)}},501:function(e,t,r){"use strict";r.d(t,"a",(function(){return i}));var n=r(518),a=r.n(n),o=r(520);function i(e,t){return!t||"object"!==a()(t)&&"function"!==typeof t?Object(o.a)(e):t}},502:function(e,t,r){"use strict";function n(e){return(n=Object.setPrototypeOf?Object.getPrototypeOf:function(e){return e.__proto__||Object.getPrototypeOf(e)})(e)}r.d(t,"a",(function(){return n}))},505:function(e,t,r){"use strict";var n=r(20),a=r(28),o=r(4),i=r(55),c=r.n(i),u={generic:function(e){return a.c().label(e)},string:function(e,t){t=t||{};var r=a.h().transform((function(e,t){return""===t?null:e})).nullable(!0).trim().label(e);return t.required&&(r=r.required()),(t.min||0===t.min)&&(r=r.min(t.min)),t.max&&(r=r.max(t.max)),t.matches&&(r=r.matches(t.matches)),r},boolean:function(e,t){return a.b().default(!1).label(e)},relationToOne:function(e,t){t=t||{};var r=a.c().nullable(!0).label(e).transform((function(e,t){return t?t.id:null}));return t.required&&(r=r.required()),r},stringArray:function(e,t){t=t||{};var r=a.a().compact().ensure().of(a.h().transform((function(e,t){return""===t?null:e})).trim()).label(e);return(t.required||t.min)&&(r=r.required()),t.min||0===t.min?r=r.min(t.min):t.required&&(r=r.min(1)),t.max&&(r=r.max(t.max)),r},relationToMany:function(e,t){t=t||{};var r=a.a().nullable(!0).label(e).transform((function(e,t){return t&&t.length?t.map((function(e){return e.id})):[]}));return(t.required||t.min)&&(r=r.required()),t.min||0===t.min?r=r.min(t.min):t.required&&(r=r.min(1)),t.max&&(r=r.max(t.max)),r},integer:function(e,t){t=t||{};var r=a.d().transform((function(e,t){return""===t?null:e})).integer().nullable(!0).label(e);return t.required&&(r=r.required()),(t.min||0===t.min)&&(r=r.min(t.min)),t.max&&(r=r.max(t.max)),r},images:function(e,t){t=t||{};var r=a.a().nullable(!0).label(e);return(t.required||t.min)&&(r=r.required()),t.min||0===t.min?r=r.min(t.min):t.required&&(r=r.min(1)),t.max&&(r=r.max(t.max)),r},files:function(e,t){t=t||{};var r=a.a().compact().ensure().nullable(!0).label(e);return(t.required||t.min)&&(r=r.required()),t.min||0===t.min?r=r.min(t.min):t.required&&(r=r.min(1)),t.max&&(r=r.max(t.max)),r},enumerator:function(e,t){t=t||{};var r=a.h().transform((function(e,t){return""===t?null:e})).label(e).nullable(!0).oneOf([null].concat(Object(n.a)(t.options||[])));return t.required&&(r=r.required(Object(o.c)("validation.string.selected"))),r},email:function(e,t){t=t||{};var r=a.h().transform((function(e,t){return""===t?null:e})).nullable(!0).trim().label(e).email();return t.required&&(r=r.required()),(t.min||0===t.min)&&(r=r.min(t.min)),t.max&&(r=r.max(t.max)),t.matches&&(r=r.matches(t.matches)),r},decimal:function(e,t){t=t||{};var r=a.d().transform((function(e,t){return""===t?null:e})).nullable(!0).label(e);return t.required&&(r=r.required()),(t.min||0===t.min)&&(r=r.min(t.min)),t.max&&(r=r.max(t.max)),r},datetime:function(e,t){t=t||{};var r=a.c().nullable(!0).label(e).transform((function(e,t){return e?c()(t,"YYYY-MM-DD HH:mm").toISOString():null}));return t.required&&(r=r.required()),r},date:function(e,t){t=t||{};var r=a.c().nullable(!0).label(e).test("is-date",Object(o.c)("validation.mixed.default"),(function(e){return!e||c()(e,"YYYY-MM-DD").isValid()})).transform((function(e){return e?c()(e).format("YYYY-MM-DD"):null}));return t.required&&(r=r.required()),r}};t.a=u},510:function(e,t,r){"use strict";var n=r(0);t.a=function(e,t){return t?{container:function(e){return Object(n.a)(Object(n.a)({},e),{},{borderRadius:"0.375rem",cursor:"pointer"})},control:function(t,r){return Object(n.a)(Object(n.a)({},t),{},{minHeight:"42px",borderColor:"rgb(248, 113, 113)",color:"rgb(220, 38, 38)",cursor:r.isDisabled?"default":"pointer",backgroundColor:e?"rgb(31, 41, 55)":"white"})},indicatorSeparator:function(e,t){return Object(n.a)(Object(n.a)({},e),{},{backgroundColor:"rgb(248, 113, 113)"})},singleValue:function(e){return Object(n.a)(Object(n.a)({},e),{},{color:"rgb(220, 38, 38)"})},menu:function(t,r){return Object(n.a)(Object(n.a)({},t),{},{backgroundColor:e?"rgb(31, 41, 55)":"white"})},option:function(t,r){return Object(n.a)(Object(n.a)({},t),{},{cursor:"pointer",backgroundColor:e?r.isFocused?"rgb(209, 213, 219)":"rgb(31, 41, 55)":r.isFocused?"rgb(55, 65, 81)":"white",color:e?r.isFocused?"rgb(55, 65, 81)":"rgb(209, 213, 219)":r.isFocused?"white":"rgb(55, 65, 81)"})},multiValue:function(t,r){return Object(n.a)(Object(n.a)({},t),{},{color:e?r.isFocused?"rgb(55, 65, 81)":"rgb(209, 213, 219)":r.isFocused?"white":"rgb(55, 65, 81)"})},input:function(t,r){return Object(n.a)(Object(n.a)({},t),{},{color:e?r.isFocused?"rgb(55, 65, 81)":"rgb(209, 213, 219)":r.isFocused?"white":"rgb(55, 65, 81)"})},multiValueRemove:function(e,t){return Object(n.a)(Object(n.a)({},e),{},{color:"rgb(55, 65, 81)"})}}:{container:function(e){return Object(n.a)(Object(n.a)({},e),{},{borderRadius:"0.375rem",cursor:"pointer"})},control:function(t,r){return Object(n.a)(Object(n.a)({},t),{},{minHeight:"42px",cursor:r.isDisabled?"default":"pointer",color:e?"rgb(229, 231, 235)":"rgb(55, 65, 81)",backgroundColor:e?"rgb(31, 41, 55)":"white",borderColor:e?"rgb(75, 85, 99)":"rgb(209, 213, 219)"})},indicatorSeparator:function(t,r){return Object(n.a)(Object(n.a)({},t),{},{backgroundColor:e?"rgb(75, 85, 99)":"rgb(209, 213, 219)"})},singleValue:function(t){return Object(n.a)(Object(n.a)({},t),{},{color:e?"rgb(229, 231, 235)":"rgb(55, 65, 81)"})},menu:function(t,r){return Object(n.a)(Object(n.a)({},t),{},{backgroundColor:e?"rgb(31, 41, 55)":"white"})},option:function(t,r){return Object(n.a)(Object(n.a)({},t),{},{cursor:"pointer",backgroundColor:e?r.isFocused?"rgb(209, 213, 219)":"rgb(31, 41, 55)":r.isFocused?"rgb(55, 65, 81)":"white",color:e?r.isFocused?"rgb(55, 65, 81)":"rgb(209, 213, 219)":r.isFocused?"white":"rgb(55, 65, 81)"})},input:function(t,r){return Object(n.a)(Object(n.a)({},t),{},{color:e?r.isFocused?"rgb(55, 65, 81)":"rgb(209, 213, 219)":r.isFocused?"white":"rgb(55, 65, 81)"})},multiValueRemove:function(e,t){return Object(n.a)(Object(n.a)({},e),{},{color:"rgb(55, 65, 81)"})}}}},512:function(e,t,r){"use strict";function n(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}r.d(t,"a",(function(){return n}))},518:function(e,t){function r(t){return"function"===typeof Symbol&&"symbol"===typeof Symbol.iterator?(e.exports=r=function(e){return typeof e},e.exports.default=e.exports,e.exports.__esModule=!0):(e.exports=r=function(e){return e&&"function"===typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e},e.exports.default=e.exports,e.exports.__esModule=!0),r(t)}e.exports=r,e.exports.default=e.exports,e.exports.__esModule=!0},520:function(e,t,r){"use strict";function n(e){if(void 0===e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return e}r.d(t,"a",(function(){return n}))},527:function(e,t,r){"use strict";var n=r(100),a=r(2),o=r(531),i=r(4),c=r(491),u=r(492),l=r(23),s=r(60),b=r(510),d=r(596),m=r(6);function f(e){var t=Object(a.useState)(Object(d.a)()),r=Object(n.a)(t,1)[0],f=e.label,j=e.name,g=e.hint,O=e.options,p=e.required,h=e.mode,x=e.placeholder,v=e.isClearable,y=e.externalErrorMessage,w=Object(c.d)(),C=w.register,k=w.errors,q=w.formState,N=q.touched,S=q.isSubmitted,M=w.setValue,D=w.watch,F=u.a.errorMessage(j,k,N,S,y),P=D(j),V=Object(l.e)(s.a.selectDarkMode);Object(a.useEffect)((function(){C({name:j})}),[C,j]);var B=function(){return P?P.map((function(e){return O.find((function(t){return t.value===e}))})):[]},L=function(){var t=e.options;return null!=P?t.find((function(e){return e.value===P})):null},_=function(t){if(!t)return M(j,[],{shouldValidate:!0,shouldDirty:!0}),void(e.onChange&&e.onChange([]));var r=t.map((function(e){return e?e.value:e})).filter((function(e){return null!=e}));M(j,r,{shouldValidate:!0,shouldDirty:!0}),e.onChange&&e.onChange(r)},E=function(t){if(!t)return M(j,null,{shouldValidate:!0,shouldDirty:!0}),void(e.onChange&&e.onChange(null));M(j,t.value,{shouldValidate:!0,shouldDirty:!0}),e.onChange&&e.onChange(t.value)},R=Object(b.a)(V,Boolean(F));return Object(m.jsxs)("div",{children:[Boolean(f)&&Object(m.jsxs)("label",{className:"block text-sm text-gray-800 dark:text-gray-200",htmlFor:r,children:[f," ",p?Object(m.jsx)("span",{className:"text-sm text-red-400",children:"*"}):null]}),Object(m.jsx)(o.a,{className:"w-full mt-2",value:"multiple"===e.mode?B():L(),onChange:function(t){return"multiple"===e.mode?_(t):E(t)},onBlur:function(t){e.onBlur&&e.onBlur(t)},id:r,name:j,options:O,isMulti:"multiple"===h,placeholder:x||"",isClearable:v,styles:R,loadingMessage:function(){return Object(i.c)("autocomplete.loading")},noOptionsMessage:function(){return Object(i.c)("autocomplete.noOptions")}}),Object(m.jsx)("div",{className:"text-red-600 text-sm mt-2",children:F}),Boolean(g)&&Object(m.jsx)("div",{className:"text-gray-500 text-sm mt-2",children:g})]})}f.defaultProps={required:!1,isClearable:!0},t.a=f},568:function(e,t,r){"use strict";var n=r(164),a={status:["active","invited","empty-permissions"],roles:Object.keys(n.a.values)};t.a=a},578:function(e,t,r){"use strict";var n=r(5),a=function(e){return e.user.form},o=Object(n.a)([a],(function(e){return e.user})),i={selectInitLoading:Object(n.a)([a],(function(e){return Boolean(e.initLoading)})),selectSaveLoading:Object(n.a)([a],(function(e){return Boolean(e.saveLoading)})),selectUser:o,selectRaw:a};t.a=i},595:function(e,t,r){"use strict";var n=r(100),a=r(2),o=r.n(a),i=(r(547),r(21)),c=(r(548),r(546)),u=r(512),l=r(498),s=r(499),b=(r(17),r(500)),d=r(501),m=r(502),f=(r(509),r(84),r(518),r(515)),j=r(506),g=(r(494),r(549),r(522),r(550));function O(e){var t=function(){if("undefined"===typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if("function"===typeof Proxy)return!0;try{return Date.prototype.toString.call(Reflect.construct(Date,[],(function(){}))),!0}catch(e){return!1}}();return function(){var r,n=Object(m.a)(e);if(t){var a=Object(m.a)(this).constructor;r=Reflect.construct(n,arguments,a)}else r=n.apply(this,arguments);return Object(d.a)(this,r)}}function p(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}var h=function(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:"",t=arguments.length>1?arguments[1]:void 0,r=String(e).toLowerCase(),n=String(t.value).toLowerCase(),a=String(t.label).toLowerCase();return n===r||a===r},x=function(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?p(Object(r),!0).forEach((function(t){Object(u.a)(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):p(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}({allowCreateWhileLoading:!1,createOptionPosition:"last"},{formatCreateLabel:function(e){return'Create "'.concat(e,'"')},isValidNewOption:function(e,t,r){return!(!e||t.some((function(t){return h(e,t)}))||r.some((function(t){return h(e,t)})))},getNewOptionData:function(e,t){return{label:t,value:e,__isNew__:!0}}}),v=function(e){var t,r;return r=t=function(t){Object(b.a)(n,t);var r=O(n);function n(e){var t;Object(l.a)(this,n),(t=r.call(this,e)).select=void 0,t.onChange=function(e,r){var n=t.props,a=n.getNewOptionData,o=n.inputValue,i=n.isMulti,u=n.onChange,l=n.onCreateOption,s=n.value,b=n.name;if("select-option"!==r.action)return u(e,r);var d=t.state.newOption,m=Array.isArray(e)?e:[e];if(m[m.length-1]!==d)u(e,r);else if(l)l(o);else{var j=a(o,o),g={action:"create-option",name:b};u(i?[].concat(Object(c.a)(Object(f.b)(s)),[j]):j,g)}};var a=e.options||[];return t.state={newOption:void 0,options:a},t}return Object(s.a)(n,[{key:"UNSAFE_componentWillReceiveProps",value:function(e){var t=e.allowCreateWhileLoading,r=e.createOptionPosition,n=e.formatCreateLabel,a=e.getNewOptionData,o=e.inputValue,i=e.isLoading,u=e.isValidNewOption,l=e.value,s=e.options||[],b=this.state.newOption;b=u(o,Object(f.b)(l),s)?a(o,n(o)):void 0,this.setState({newOption:b,options:!t&&i||!b?s:"first"===r?[b].concat(Object(c.a)(s)):[].concat(Object(c.a)(s),[b])})}},{key:"focus",value:function(){this.select.focus()}},{key:"blur",value:function(){this.select.blur()}},{key:"render",value:function(){var t=this,r=this.state.options;return o.a.createElement(e,Object(i.a)({},this.props,{ref:function(e){t.select=e},options:r,onChange:this.onChange}))}}]),n}(a.Component),t.defaultProps=x,r}(j.a),y=Object(g.a)(v),w=r(4),C=r(491),k=r(492),q=r(23),N=r(60),S=r(510),M=r(596),D=r(6);function F(e){var t=Object(a.useState)(Object(M.a)()),r=Object(n.a)(t,1)[0],o=e.label,i=e.name,c=e.hint,u=e.externalErrorMessage,l=e.required,s=e.placeholder,b=e.isClearable,d=e.notFoundContent,m=Object(C.d)(),f=m.register,j=m.errors,g=m.formState,O=g.touched,p=g.isSubmitted,h=m.setValue,x=m.watch,v=Object(q.e)(N.a.selectDarkMode),F=k.a.errorMessage(i,j,O,p,u);Object(a.useEffect)((function(){f({name:i})}),[f,i]);var P=x(i),V=Object(S.a)(v,Boolean(F));return Object(D.jsxs)("div",{children:[Boolean(o)&&Object(D.jsxs)("label",{className:"block text-sm text-gray-800 dark:text-gray-200",htmlFor:r,children:[o," ",l?Object(D.jsx)("span",{className:"text-sm text-red-400",children:"*"}):null]}),Object(D.jsx)(y,{className:"w-full mt-2",value:P&&P.length?P.map((function(e){return{value:e,label:e}})):[],onChange:function(t){if(!t||!t.length)return h(i,null,{shouldValidate:!0,shouldDirty:!0}),void(e.onChange&&e.onChange(null));var r=t.map((function(e){return e.value})).join(",").split(",");h(i,r,{shouldValidate:!0,shouldDirty:!0}),e.onChange&&e.onChange(r)},onBlur:function(t){e.onBlur&&e.onBlur(t)},id:r,name:i,placeholder:s||"",isClearable:b,styles:V,isMulti:!0,formatCreateLabel:function(e){return e},loadingMessage:function(){return Object(w.c)("autocomplete.loading")},noOptionsMessage:function(){return d||""}}),Object(D.jsx)("div",{className:"text-red-600 text-sm mt-2",children:F}),Boolean(c)&&Object(D.jsx)("div",{className:"text-gray-500 text-sm mt-2",children:c})]})}F.defaultProps={required:!1,isClearable:!0};t.a=F},648:function(e,t,r){"use strict";r.r(t);var n=r(2),a=r(23),o=r(4),i=r(12),c=r(65),u=r(578),l=r(493),s=r(0),b=r(100),d=r(503),m=r(37),f=r(54),j=r(508),g=r(491),O=r(505),p=r(568),h=r(497),x=r(527),v=r(595),y=r(28),w=r(6),C=y.e().shape({email:O.a.email(Object(o.c)("user.fields.email")),roles:O.a.stringArray(Object(o.c)("user.fields.roles"),{required:!0,min:1})}),k=y.e().shape({emails:y.a().label(Object(o.c)("user.fields.emails")).of(y.h().transform((function(e,t){return""===t?null:e})).email(Object(o.c)("user.validations.email")).label(Object(o.c)("user.fields.email")).max(255).required()).required().min(1),roles:O.a.stringArray(Object(o.c)("user.fields.roles"),{required:!0,min:1})});var q=function(e){var t=e.single,r=e.saveLoading,a=e.single?C:k,i=Object(n.useState)((function(){return{emails:[],email:"",roles:[]}})),c=Object(b.a)(i,1)[0],u=Object(g.c)({resolver:Object(j.yupResolver)(a),mode:"all",defaultValues:c}),l=function(t){var r=Object.assign({},t);r.email&&(r.emails=[r.email],delete r.email),e.onSubmit(null,r)};return Object(w.jsx)(g.a,Object(s.a)(Object(s.a)({},u),{},{children:Object(w.jsxs)("form",{onSubmit:u.handleSubmit(l),children:[Object(w.jsx)("div",{className:"w-full md:w-md lg:w-md",children:t?Object(w.jsx)(h.a,{name:"email",label:Object(o.c)("user.fields.email"),required:!0,autoFocus:!0}):Object(w.jsx)(v.a,{name:"emails",label:Object(o.c)("user.fields.emails"),notFoundContent:Object(o.c)("user.new.emailsHint"),required:!0})}),Object(w.jsx)("div",{className:"w-full sm:w-md md:w-md lg:w-md mt-4",children:Object(w.jsx)(x.a,{name:"roles",label:Object(o.c)("user.fields.roles"),required:!0,options:p.a.roles.map((function(e){return{value:e,label:Object(o.c)("roles.".concat(e,".label"))}})),mode:"multiple"})}),Object(w.jsxs)("div",{className:"pt-4",children:[Object(w.jsxs)("button",{className:"mr-2 mb-2 text-sm disabled:opacity-50 disabled:cursor-default px-4 py-2 tracking-wide text-white transition-colors duration-200 transform bg-gray-700 rounded-md hover:bg-gray-600 focus:outline-none focus:bg-gray-600",disabled:r,type:"button",onClick:u.handleSubmit(l),children:[Object(w.jsx)(f.a,{className:"mr-2",icon:d.e}),Object(o.c)("common.save")]}),Object(w.jsxs)("button",{disabled:r,onClick:function(){Object.keys(c).forEach((function(e){u.setValue(e,c[e])}))},className:"mr-2 mb-2 text-sm disabled:opacity-50 disabled:cursor-default px-4 py-2 tracking-wide dark:border-gray-800 dark:bg-gray-800 dark:hover:bg-gray-600 dark:text-white text-gray-700 border border-gray-300 transition-colors duration-200 transform bg-white rounded-md hover:bg-gray-100 focus:outline-none focus:bg-gray-100",type:"button",children:[Object(w.jsx)(f.a,{className:"mr-2",icon:m.t}),Object(o.c)("common.reset")]}),e.onCancel?Object(w.jsxs)("button",{disabled:r,onClick:function(){return e.onCancel()},className:"mr-2 mb-2 text-sm disabled:opacity-50 disabled:cursor-default px-4 py-2 tracking-wide dark:border-gray-800 dark:bg-gray-800 dark:hover:bg-gray-600 dark:text-white text-gray-700 border border-gray-300 transition-colors duration-200 transform bg-white rounded-md hover:bg-gray-100 focus:outline-none focus:bg-gray-100",type:"button",children:[Object(w.jsx)(f.a,{className:"mr-2",icon:m.s}),Object(o.c)("common.cancel")]}):null]})]})}))};t.default=function(e){var t=Object(a.d)(),r=Object(a.e)(u.a.selectSaveLoading);return Object(n.useEffect)((function(){t(c.a.doInit())}),[t]),Object(w.jsxs)(w.Fragment,{children:[Object(w.jsx)(l.a,{items:[[Object(o.c)("dashboard.menu"),"/"],[Object(o.c)("user.menu"),"/user"],[Object(o.c)("user.new.title")]]}),Object(w.jsxs)("div",{className:"mt-4 p-6 bg-white dark:bg-gray-800 dark:border-gray-800 text-gray-900 dark:text-gray-200 border-gray-200 border rounded-md",children:[Object(w.jsx)("h1",{className:"text-lg font-medium mb-6",children:Object(o.c)("user.new.title")}),Object(w.jsx)(q,{saveLoading:r,onSubmit:function(e,r){t(c.a.doAdd(r))},onCancel:function(){return Object(i.b)().push("/user")}})]})]})}}}]);