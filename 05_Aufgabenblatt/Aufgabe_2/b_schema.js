{
 "$schema": "http://json-schema.org/draft-04/schema#",
 "properties": {
  "token": {
   "$ref": "#/definitions/data" 
  }
 },
 "required": ["token"],
 "definitions": {
  "data": {
   "id": "store",
   "properties": {
    "lock": {
      "type": "integer",
      "multipleOf": 5,
      "minimum": 1
    },
    "key": {
      "type": "string",
      "minLength": 7,
      "pattern": "[a-c].[1-3]"
     }
   },
   "required": ["key", "lock"]
  }
 }
}