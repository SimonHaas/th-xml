{
 "$schema": "http://json-schema.org/draft-04/schema#",
 "required": [ "log" ],
 "properties": {
   "log": {
     "type": "array",
     "items": { "type": "boolean" },
     "uniqueItems": true,
     "minItems": 2
   }
 }
}