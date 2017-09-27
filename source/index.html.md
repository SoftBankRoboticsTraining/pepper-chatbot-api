---
title: Pepper ChatBot API Reference

language_tabs:
  - satisfi
  - msbot


toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>

includes:
  - errors

search: true
---

# Pepper ChatBot API

```satisfi
"Satisfi is the default bot used by our Pepper API. If a user doesn’t "
"hash their company with a different bot, they are allowed to use and "
"train our Satisfi bot with Utterances and Responses as they wish. 
```

```msbot
"Microsoft's open source Bot Builder SDKs allow you to build simple "
"to sophisticated dialogs; Cognitive Services enable your bot to see, "
"hear, interpret and interact in more human ways. Ms-Bot is the first "
"3rd party ChatBot that SoftBank Robotics officially supports."
```

Welcome to the Pepper ChatBot API! You can use this API to access a 3rd party chatbot's API endpoints in order to integrate an existing chatbot with Pepper. 

You can view integration instructions in the dark area to the right, and you can switch between different chatbot-specific code examples with the tabs in the top right.

We currently support integrations with Satisfi and MS-Bot, but this list will be growing quickly, so check back soon or else get in touch with us directly if your chatbot platform does not appear on this list! 


# Authentication

> Bot Endpoints:


```msbot
Bot Endpoint:

"https://pepper-msbot.azurewebsites.net/api/messages?code=e3fa60oaOlabQUptT63DYSWPxrdG0pS9zFrADLT1xX9iGx6FxAG7pw=="

App Id

"808ad83e-3876-40fd-b0e8-a616e014fc6f"

Password

"9nHp8QNcwQJcNDHHjBCnoj7"

LUIS Endpoint:

"https://westus.api.cognitive.microsoft.com/luis/v2.0/apps/4e4b1c46-5d6d-4035-9905-eef921df734f?subscription-key=37e463e0ae22427abc606d076dafbdd3&timezoneOffset=-480&verbose=true&spellCheck=true&q="
```


> Make sure to replace `token` with your token key.

ChatBots use RESTful API with access tokens to send and retrieve data.

`Authorization: TOKEN`

<aside class="notice">
You must replace <code>TOKEN</code> with your personal API key.
</aside>

# Pepper Data Model

{ <br>
&nbsp;&nbsp;utteranceId: GUID,<br>
&nbsp;&nbsp;sessionId: GUID,<br>
&nbsp;&nbsp;botConversationId: GUID,<br>
&nbsp;&nbsp;utterance: STRING,<br>
&nbsp;&nbsp;speak: STRING,<br>
&nbsp;&nbsp;show: {<br>
&nbsp;&nbsp;&nbsp;&nbsp;text: STRING,<br>
&nbsp;&nbsp;&nbsp;&nbsp;content: [{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;text: STRING,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;speak: STRING,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;contentURL: STRING URL,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;contentType: STRING<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;action: BOOLEAN<br>
&nbsp;&nbsp;&nbsp;&nbsp;}]<br>
&nbsp;&nbsp;}<br>
}<br>

# Training Your ChatBot

## Text Only Response


{
&nbsp;&nbsp;&nbsp;&nbsp;"msgType": "chatbotresponse",
&nbsp;&nbsp;&nbsp;&nbsp;"data": "Answer",
&nbsp;&nbsp;&nbsp;&nbsp;"type": "message",
&nbsp;&nbsp;&nbsp;&nbsp;"conversationID": "testgguid",
&nbsp;&nbsp;&nbsp;&nbsp;"uniqueID": "b958c65a-3c9f-4f38-919d-0a4c70ae3e0d",
&nbsp;&nbsp;&nbsp;&nbsp;"utteranceID": "testutteranceID",
&nbsp;&nbsp;&nbsp;&nbsp;"sessionID": "testgguid",
&nbsp;&nbsp;&nbsp;&nbsp;"response": "Answer",
&nbsp;&nbsp;&nbsp;&nbsp;"speak": "Answer",
&nbsp;&nbsp;&nbsp;&nbsp;"show": {
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"text": "Answer"
&nbsp;&nbsp;&nbsp;&nbsp;}
}


```satisfi
{
  "payload":{
       "type":"TRAIN",
      "response_action": "[ADD][ADD-UPDATE][UPDATE][DELETE][NONE]",
      "response_id": "sample_id",
      "response_msg": "sample answer",
      "input_action": "[ADD][ADD-REPLACE][DELETE][NONE]",
      "input_msg": 
      [
          "sample question1",
          "sample question2",
          "sample question3",
          "sample question4"
       ],
       "keys": 
          {
              "unit_id":"12345"
          }
     }
}
```


```msbot
curl "http://example.com/api/kittens"
  -H "Authorization: meowmeowmeow"
```
## Video Only Response

{
  utteranceId: "1234abcde",
  sessionId: "abcde1234",
        botConversationId: "a1b2c3d4e5",
        utterance: "Can you show me a video?",
  speak: "Look at this cool video",
  show: {
    content: [{
        contentURL: "https.content.mp4",
        contentType: "video/mp4",
        action: false
      }
    ]
  }
}

> The above command returns JSON structured like this:

```json
[
  {
    "id": 1,
    "name": "Fluffums",
    "breed": "calico",
    "fluffiness": 6,
    "cuteness": 7
  },
  {
    "id": 2,
    "name": "Max",
    "breed": "unknown",
    "fluffiness": 5,
    "cuteness": 10
  }
]
```

This endpoint retrieves all kittens.

### HTTP Request

`GET http://example.com/api/kittens`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
include_cats | false | If set to true, the result will also include cats.
available | true | If set to false, the result will include kittens that have already been adopted.

<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>

## Get a Specific Kitten

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
api.kittens.get(2)
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
api.kittens.get(2)
```

```shell
curl "http://example.com/api/kittens/2"
  -H "Authorization: meowmeowmeow"
```

```javascript
const kittn = require('kittn');

let api = kittn.authorize('meowmeowmeow');
let max = api.kittens.get(2);
```

> The above command returns JSON structured like this:

```json
{
  "id": 2,
  "name": "Max",
  "breed": "unknown",
  "fluffiness": 5,
  "cuteness": 10
}
```

This endpoint retrieves a specific kitten.

<aside class="warning">Inside HTML code blocks like this one, you can't use Markdown, so use <code>&lt;code&gt;</code> blocks to denote code.</aside>

### HTTP Request

`GET http://example.com/kittens/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the kitten to retrieve

