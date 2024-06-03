%dw 2.0
output application/json
var arr= [
    {
        "id":1111,
        "age":23
    },
    {
        "id":2222,
        "age":24
    }
]
---
arr map (item,index)->
  {
    (item ++ {
      "Name of employee": (payload filter ($.id == item.Id))[0].name,
      "Mobile Number": (payload filter ($.id == item.Id))[0].phno,
      "Location": (payload filter ($.id == item.Id))[0].address
    })
  }
