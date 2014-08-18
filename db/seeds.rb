# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Sites.destroy_all


Sitelist.create name: "Twitter", url: "https://twitter.com/"
Sitelist.create name: "Facebook", url: "https://www.facebook.com/"
Sitelist.create name: "Yahoo Mail", url: "https://login.yahoo.com/?.src=ym&.intl=us&.lang=en-US&.done=http://mail.yahoo.com"
Sitelist.create name: "Wells Fargo", url: "https://www.wellsfargo.com/"
Sitelist.create name: "Linkedin", url: "https://www.linkedin.com/uas/login?goback=&trk=hb_signin"
Sitelist.create name: "Ebay", url: "https://signin.ebay.com/ws/eBayISAPI.dll?SignIn"
Sitelist.create name: "Pinterest", url: "https://www.pinterest.com/"
Sitelist.create name: "Paypal", url: "https://www.paypal.com/"
Sitelist.create name: "Tumblr", url: "https://www.tumblr.com/login"
Sitelist.create name: "Instagram", url: "https://instagram.com/accounts/login/"
Sitelist.create name: "Netflix", url: "https://www.netflix.com/Login?locale=en-US"
Sitelist.create name: "Salesforce", url: "https://login.salesforce.com/"
Sitelist.create name: "Vimeo", url: "https://vimeo.com/log_in"
Sitelist.create name: "Bleacher Report", url: "https://bleacherreport.com/login"
Sitelist.create name: "Aol", url: "https://my.screenname.aol.com/_cqr/login/login.psp?authLev=0&lang=en&locale=us&sitedomain=startpage.aol.com&siteState=OrigUrl%3Dhttp%253A%252F%252Fwww.aol.com%252F"
Sitelist.create name: "Monster", url: "https://login.monster.com/Login/SignIn?r=http%3a%2f%2fhome.monster.com%2f&ch=MONS"
Sitelist.create name: "Xfinity/Comcast", url: "https://login.comcast.net/login?s=portal&ts=35e3a32f"
Sitelist.create name: "CareerBuilder", url: "https://www.careerbuilder.com/share/login.aspx?sslRedirectCnt=1&sc_cmp2=js_home_signin"
Sitelist.create name: "Github", url: "https://github.com/login"
