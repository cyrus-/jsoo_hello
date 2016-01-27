(* Create the HTML fragment *)
let hello = Tyxml_js.Html5.(
  div [pcdata "Hello, world!"]
) in  
(* Find the element with id "body" *)
let body = Dom_html.getElementById "body" in
(* Convert hello to a DOM element and append it to body *)
Dom.appendChild body (Tyxml_js.To_dom.of_div hello)
