# !/bin/bash


AcessToken="EwAAA61DBAAUGCCXc8wU/zFu9QnLdZXy+YnElFkAAbo5UpM1PbVKdDUVaAXtRXM4zAM4LIb32sEsK9AvARPiyNKm2X6S/YXVzIL6XPRdUi6zIj1NvZhWsPZ8Yo+9NKsuXeH73u6zJcJ9OsUXOQ3fEh4mAgJpL2/IgOkWRYtNrqWguUPL/SZkCBVM/GnS400PXMFGYpiklVzf0J1qf61hcbDqwZU504H52n0dq/m6Wh/4UVEszAFsSSVLBZmLpsumLyAZIRkWd4vcNrlBk8nyWtNVDTYOvmi2UKKlQnYIz+10KFMPFIreHzZpZk0vsavHr+4m0HfvSSPTfswukLGHFuFJ+3sTIHJpD2RreNl3Sgz2hXnlak4ibh6uIANY10YDZgAACFJGjRinc80A0AGE38G1g8BvoXdWJBAKHjXpFLjK2iEMb9MKaZaX1hZPS60oX3mtmG7Jpd/7YmONszV//O8MhvXez5m5ocEFKo/VGsCIBWwdXXRC4djdHnrMKm+rAr819zyGmjePtDng0lPp9IqcpVfb7kPBVS8viKS4XoJO3V8tEnu6SCzis5iwWCtegFHkpTIkAOyJVgADPYDRN2YdZku3jYH9rQHHj6z5Olteu7ecZakeesZHyDJhep7ZSFSrvcWl6S8+i74uLPhYT1NN/SuIQFCT5CNKAZr2Q7odKEBPCbQZAWEN9ft7bTnnzfXLg3YRTJMzWGDWmkzvFZkMDaCclgts6+KapTVtZeO312wYtZJ42MfleeCDK9Q4l4wcrUEdVJZzpW3m9SyjaiFi/+hn0TVhgNMBc00jnb/FzhipP6siCxC+ojpZhsz/edbiLaVKlopYUX4hve4gnOdB3XBa0r8iQera7pYokG+xwLLpkje8Yvu+Orl2gTWmjfCTx24Sxp3UPJGWIN3bCp4yKK1r4+n9LuTHqCU2DtBVKYVUiHntNTR1d0uL66VjJO00Exk1dQxwsb33vOA83aw0mNf+o/z8JQwTP4oLBwWlGBwTAtfaiVNHYBok+QgC"

Header="Authorization:Bearer $AcessToken"



function quata {
  curl --header "$Header"   https://api.onedrive.com/v1.0/drives/me

}
function listRoot {
  curl --header "$Header"   https://api.onedrive.com/v1.0/drive/root/children  
}


function listFile {
  curl --header "$Header"   https://api.onedrive.com/v1.0/drive/items/252973270CA8CBB!1436/children  
}

function dlFile {
  curl --header "$Header"   -i https://api.onedrive.com/v1.0/drive/items/252973270CA8CBB!1438/content  
}

quata
#listRoot
#listFile > log.txt
#dlFile


