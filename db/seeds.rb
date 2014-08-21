# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Sites.destroy_all
Sitelist.destroy_all

Sitelist.create id: 1, name: "Twitter", url: "https://twitter.com/"
Sitelist.create id: 2, name: "Facebook", url: "https://www.facebook.com/"
Sitelist.create id: 3, name: "Yahoo Mail", url: "https://login.yahoo.com/?.src=ym&.intl=us&.lang=en-US&.done=http://mail.yahoo.com"
Sitelist.create id: 4, name: "Wells Fargo", url: "https://www.wellsfargo.com/"
Sitelist.create id: 5, name: "Linkedin", url: "https://www.linkedin.com/uas/login?goback=&trk=hb_signin"
Sitelist.create id: 6, name: "Ebay", url: "https://signin.ebay.com/ws/eBayISAPI.dll?SignIn"
Sitelist.create id: 7, name: "Pinterest", url: "https://www.pinterest.com/"
Sitelist.create id: 8, name: "Paypal", url: "https://www.paypal.com/"
Sitelist.create id: 9, name: "Tumblr", url: "https://www.tumblr.com/login"
Sitelist.create id: 10, name: "Instagram", url: "https://instagram.com/accounts/login/"
Sitelist.create id: 11, name: "Netflix", url: "https://www.netflix.com/Login?locale=en-US"
Sitelist.create id: 12, name: "Salesforce", url: "https://login.salesforce.com/"
Sitelist.create id: 13, name: "Vimeo", url: "https://vimeo.com/log_in"
Sitelist.create id: 14, name: "Bleacher Report", url: "https://bleacherreport.com/login"
Sitelist.create id: 15, name: "Aol", url: "https://my.screenname.aol.com/_cqr/login/login.psp?authLev=0&lang=en&locale=us&sitedomain=startpage.aol.com&siteState=OrigUrl%3Dhttp%253A%252F%252Fwww.aol.com%252F"
Sitelist.create id: 16, name: "Monster", url: "https://login.monster.com/Login/SignIn?r=http%3a%2f%2fhome.monster.com%2f&ch=MONS"
Sitelist.create id: 17, name: "Xfinity/Comcast", url: "https://login.comcast.net/login?s=portal&ts=35e3a32f"
Sitelist.create id: 18, name: "CareerBuilder", url: "https://www.careerbuilder.com/share/login.aspx?sslRedirectCnt=1&sc_cmp2=js_home_signin"
Sitelist.create id: 19, name: "Github", url: "https://github.com/login"
Sitelist.create id: 20, name: "Imgur", url: "https://imgur.com/signin"
Sitelist.create id: 22, name: "NY Times", url: "https://myaccount.nytimes.com/auth/login?URI=http:/www.nytimes.com/subscriptions/Multiproduct/lp3LWLU.html&OQ=adxcQ3D253253Q26adxaQ3D379360Q26pageQ3Dhomepage.nytimes.comQ2Findex.htmlQ26posQ3DBar1Q26campaignIdQ3D46K88"
Sitelist.create id: 23, name: "AT&T", url: "http://www.att.com/"
Sitelist.create id: 24, name: "Target", url: "https://www-secure.target.com/EverestLoginView?langId=-1&storeId=10151&catalogId=10051&lnk=gnav_myaccount"
Sitelist.create id: 25, name: "Bank of America", url: "https://www.bankofamerica.com/"
Sitelist.create id: 26, name: "Tripadvisor", url: "https://www.tripadvisor.com/Register"
Sitelist.create id: 27, name: "Wall St Cheat Sheet", url: "http://wallstcheatsheet.com/members/index.php?r=register/login"
Sitelist.create id: 28, name: "Fandango", url: "https://www.fandango.com/account/signin?from=%2f"
Sitelist.create id: 29, name: "Craigslist", url: "https://accounts.craigslist.org/login?rt=L&amp;rp=%2Flogin%2Fhome"
Sitelist.create id: 30, name: "White Pages", url: "https://secure.whitepages.com/profile/login"
