---
title: Pepper Chat Technical Reference

language_tabs:
  - dialogflow 
  - ms_bot_framework


toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>

includes:
  - faq

search: true
---

# Pepper Chat
##A Conversational UX Humanoid Robot Platform
```dialogflow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
DialogFlow (previously API.AI) is a popular chatbot platform. It's 
also Google's entry into the conversational agency space. Before 
Google acquired API.AI (and subsequently renamed it to Dialogflow), 
it was used primarily to allow developers to create voice interfaces 
for applications. Choose Dialogflow as an interface for Pepper to 
unlock your robot's latent conversational abilities.

To see a working example:
(1) Download the example .zip file here: 
https://github.com/SoftBankRoboticsTraining/pepper-dialogflow-chatbot-faq
(2) Create a free account at www.dialogflow.com;
(3) Create a new agent;
(4) Click the gear icon to access the agent's settings; 
(5) Select the 'Export and Import' tab;
(5) Upload the .zip file from Step 1.

For a quick tutorial: www.youtube.com/watch?v=B8PrcwENCJg

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
```


Welcome to the Pepper Chat platform! This technical reference is for Pepper owners running the Pepper-As-A-Host solution, who would like to connect their Pepper to a 3rd party chatbot (Dialogflow & MS Bot Framework platforms supported) in order to unlock Pepper's latent conversational abilities. It is an exciting evolution of Pepper's repertoire of capabilities. 

Given the overwhelming success of the "chatbot feature" of the Host product, which was historically an optional upgrade that would replace the standard "FAQ" feature of the Host product, SBRA decided to build out and open up the Pepper Chat platform to its broader customer base. Pepper Chat allows customers who want to take more control over Pepper's speech, animations, tablet display and overall interactions can now do so using this solution, all with a conversational-focused, web-based, user interface. Teaming up with Google and Microsoft to bring our customers world-class NLP and Conversational AI technologies, we are proud and excited to provide our customers with a conversation-based Pepper platform that is dynamic, smart, and immersively fun!

NAVIGATING THIS REFERENCE:
You can view general integration instructions in this central, light blue section. In the dark area to the right, you can see chatbot-specific code examples corresponding visually in line with each general section. Switch between different chatbot-specific code examples with the tabs in the top right.

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
The Microsoft Bot Framework facilitates the creation of 
powerful chatbots to enhance your application's capabilities. Its open 
source Bot Builder SDKs allow users to build simple to sophisticated 
dialogs. Cognitive Services enable your bot to interpret and interact 
in more human ways. The MS Bot Framework is one of the two 3rd-party 
chatbot integrations that Pepper for Host currently supports.

To see a working example, download the emulator here:
    https://docs.microsoft.com/en-us/bot-framework/bot-service-debug-emulator
and use the following sample PuppyBot information to set up your emulator:

MS Bot Endpoint:
   https://pepper-msbot.azurewebsites.net/api/messages?code=e3fa60oaOlabQUptT63DYSWPxrdG0pS9zFrADLT1xX9iGx6FxAG7pw==

PuppyBot App Id:
   808ad83e-3876-40fd-b0e8-a616e014fc6f

PuppyBot Password:
   9nHp8QNcwQJcNDHHjBCnoj7

PuppyBot LUIS Endpoint:
   https://westus.api.cognitive.microsoft.com/luis/v2.0/apps/4e4b1c46-5d6d-4035-9905-eef921df734f?subscription-key=37e463e0ae22427abc606d076dafbdd3&timezoneOffset=-480&verbose=true&spellCheck=true&q=

For the PuppyBot's source code and a list of sample utterances to ask 
the bot, navigate to our GitHub repo:
   https://github.com/SoftBankRoboticsTraining/msbot-puppy-bot/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
```

<aside class="notice">We currently only support integrations with Microsoft's <a href="https://dev.botframework.com/"> Bot Framework</a> and Google's <a href="https://dialogflow.com/">Dialogflow</a>, but this list is quickly growing, so check back soon or else get in touch with us directly if your chatbot platform of choice does not appear on this list!</aside>

# Getting Started

> SBRA offers professional services to assist in the creation of your Chatbot. If you are interested, please email sales@softbankrobotics.com. Otherwise you can use the remainder of this documentation to create your own Chatbot for Pepper.

Building a successful chatbot for deployment on Pepper requires a large amount of time, patience, and cross-disciplinary creative expertise. For this reason, SBRA offers professional services to assist in the creation of your Chatbot for Pepper. If you are interested, <a href="mailto:sales@softbankrobotics.com">send us an email</a>.

# Authentication & Setup


```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
MS BOT FRAMEWORK SETUP INSTRUCTIONS:
For MS bots, setup consists of providing us with one of your bot's 
DirectLine 'Secret Keys'. Provide this key to the SBR Sales Engineer 
assisting you with setup. You can find it by following these steps:

Step 1: Open your bot in Azure portal (https://portal.azure.com).
Step 2: Select the CHANNELS tab.
Step 3: Add DirectLine to your bot.
Step 4: Click on Edit.
Step 5: Copy one of the Secret Keys that was generated.
Step 6: Give the copied value to the SBR Sales Engineer.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
```

```dialogflow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
DIALOGFLOW SETUP INSTRUCTIONS:
For Dialogflow bots, setup consists of providing us with your Client 
Access Token. Provide the token to the SBR Sales Engineer assisting you 
with setup. You can find your Client Access Token by following these steps:

Step 1: Open your bot in Dialogflow (https://console.dialogflow.com/)
Step 2: Click on the gear icon to the right of your selected agent.
Step 3: Under the General tab (default), copy the Client Access Token value.
Step 4: [Input token into Pepper Chat --> See central panel for instructions]

AGENT SETUP INSTRUCTIONS:
To setup a welcome intent on Pepper in your agent, set up a new intent 
with the text 'init1234' as the only utterance. You may use any type of 
response from the options below for your welcome intent response. 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
```

ChatBots use RESTful APIs with APP IDs, PASSWORDs, and/or ACCESS TOKENS to authenticate in order to send and retrieve text & multimedia session data. 

With SoftBank Robotics America's new Pepper ChatBot API and the Pepper Chat platform built on top of it, connecting your <a href="www.dialogflow.com">Dialogflow</a> or <a href="https://dev.botframework.com/">Microsoft Bot Framework</a> chatbot is as easy as it possibly can be. Simply log in to <a href="https://pepperchat.azurewebsites.net">Pepper Chat CMS</a> (Content Management System) and provide the platform with a friendly name for your bot and your bot's client access token.

I.) CHATBOT INSTRUCTIONS:
<br>
→ SEE CHATBOT-SPECIFIC SETUP INSTRUCTIONS TO THE RIGHT → 
<br>

II.) PEPPER CHAT INSTRUCTIONS: 
<br>
1) Using your existing Host credentials, log in to the <a href="https://pepperchat.azurewebsites.net">Pepper Chat CMS</a>
<br>
2) Add a new chatbot to your account from within the CHATBOTS tab, using the 'Add A Chatbot' button; 
<br>
3) Complete the setup wizard, supplying the token you obtained from part I.

<img src = "images/PEPPER_CHAT.Add_A_Robot.png"/>

<aside class="info">NOTE: In order to have your Pepper launch directly into your chatbot, you will need to disable all other features in Host except for the FAQ. This will give launch priority directly to your chatbot! </aside>
<br>

<aside class="warning"> WARNING: It should be noted that activating your own custom chatbot will REPLACE the standard FAQ feature from Host.</aside>

<aside class="warning"> WARNING: Activating a chatbot from within Pepper Chat for a given Host account will activate the chatbot for ALL ROBOTS ON THE ACCOUNT! </aside>

<aside class="warning"> WARNING: The Pepper Chat platform is still in beta (testing/active development). There are some known usability and scalability features currently missing from the platform (such as multi-robot, fleet management functionality, localization, etc.) that will be coming in our next releases. In the meantime, the lack of some of these features has implications in the form of restrictions of fleet configurations and of account management limitations with robot owners who have many robots. Again, however, most of these limitations will be unlocked in our April and May releases.</aside>

# BUILDING YOUR CHATBOT:

# → Types of Responses

A Chatbot is essentially a collection of responses that are designed to be triggered by vocal- or text-based, user input.  With the Host + Pepper Chat platform, you can choose from the following type of responses that include both what Pepper speaks as well as renders on his tablet:

## SPEECH + TABLET DISPLAY OPTIONS:

> SPEECH + TABLET DISPLAY OPTIONS:

The section below shows all the various options that can be displayed on Pepper's tablet. Generally speaking, here are the following options:

###TEXT:
<ul>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#text-only">TEXT (ONLY)</a> - Non-selectable text response; Pepper says the text as well as rendering the text on its tablet</li>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#text-bubbles">TEXT BUBBLES</a> - Selectable, Scrollable Text Bubbles(1-4 max on tablet at a time) - size of bubble varies according to the length of the response</li>
</ul>
###IMAGES:
<ul>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#image-carousel-captioned">IMAGES - Carousel, Captioned</a> - Selectable, Scrollable (n>2; 3 max on tablet at a time) - 360w x 341t ea.</li>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#image-carousel-uncaptioned">IMAGES - Carousel, Uncaptioned</a> - Selectable, Scrollable (n>2; 3 max on tablet at a time) - 360w x 341t ea.</li>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#image-1-6-icon-layouts">IMAGE(S) - 1-6-Icon Layouts</a> - Selectable, Non-Scrollable (1-6 max total) - 280w x 225t ea.</li>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#image-basic-card">IMAGE - Basic Card</a> - Non-Selectable, Non-Scrollable (1-6 max total) - 280w x 225t ea.</li>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#image-fullscreen-image">IMAGE - Fullscreen</a> - Selectable, Non-Scrollable - 1280w x 800t</li>
</ul>
###VIDEO:
<ul>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#video-fullscreen-video">VIDEO - Fullscreen</a> - Skippable - 1280w x 800t - .mp4 format required *</li>
</ul>
###WEBPAGE:
<ul>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#webpage-show-webpage">WEBPAGE - Fullscreen</a> - Skippable - 1280w x 800t - Will only work for embeddable sites - Does not allow pop-up windows *</li>
</ul>
###USER INPUT:
<uL>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#user-input-show-keyboard">SHOW KEYBOARD</a> - Display the keyboard for the user to type in information.</li>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#user-input-privacy-policy">PRIVACY POLICY - Checkbox</a> - Keyboard with checked box with Privacy Policy displayed (for CTA) - .PDF format only</li>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#user-input-privacy-policy">PRIVACY POLICY - Modal Pop-up</a> - Modal window pops up with Privacy Policy displayed (for CTA) - .PDF format only</li>
</ul>
###TABLET UI SETTINGS:
<uL>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#tablet-ui-settings-update-chatbot-style">UPDATE CHATBOT STYLE</a> - Update your chatbot's default UI settings </li>
</uL>



<aside type="info"> * NOTE: .MOVs do not display reliably on Pepper's tablet </aside>

```dialogflow
"""""""""""""""""""
Dialogflow:
""""""""""""""""""
I.) For each section, there is a UI and a Fulfillment section
      a.) UI - indicates the instruction set that follows is 
          relevant to the Dialogflow User Interface; 
      b.) FULFILLMENT - coming soon...
```

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS Bot Framework:
""""""""""""""""""""""""""""""""""""""""
I.) Our MS Bot Framework is limited in comparison to our Dialogflow integration. For a more robust experience, please use Dialogflow.
```



## TEXT ONLY

> TEXT ONLY RESPONSE:

Simple, non-selectable, text response

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow:
""""""""""""""""""""""""""""""""""""""""
I.) UI:
For each intent within your agent, use the simple 'Text response'
fields under the 'Response' section to render a response. Input multiple
responses to have Pepper randomly choose between text responses. See 
'General Information' section above for information on how to have Pepper
display different text from what he speaks.

```

<img src = "images/TABLET.TEXT.png"/>


```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: Text Only response:
"""""""""""""""""""""""""""""""""""""""""
{
  "type": "message",
  "text": "Duh, German Shepard Puppies tell the best jokes!",
  "locale": "en-US",
  "localTimestamp": "2017-10-02T11:11:52-07:00",
  "from": {
    "id": "default-bot",
    "name": "Bot"
  },
  "recipient": {
    "id": "default-user"
  },
  "inputHint": "acceptingInput",
  "replyToId": "9hecj33gj8mckk1m3",
  "id": "48mj8inig8dmc9i39",
  "channelId": "emulator",
  "timestamp": "2017-10-02T18:11:52.982Z",
  "conversation": {
    "id": "mb6c0bcdl2eclij9i"
  }
}

"""""""""""""MAPPING""""""""""""""""""""
Mapping (MS-Bot -> Pepper Data Model):
text -> speak
text -> show.text

WHERE
-> = strictly mapped
""""""""""""""""""""""""""""""""""""""""
```


## TEXT BUBBLES


> TEXT BUBBLES RESPONSE: 

Selectable, Scrollable (1-4 max on tablet at a time) - variable size

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow:
""""""""""""""""""""""""""""""""""""""""
I.) UI: 
There are two ways to display Text Bubbles within Dialogflow:
  A.) Google Assistant > Suggestion Cards:
    Under the 'Response' section:
      1) Click the + icon next to 'Default'
      2) Select 'Google Assistant'
      3) Under the 'Google Assistant' tab, select 'Add Message 
      Content'
      4) Select 'Suggestion Card'
      5) Input suggestions, which become Text Bubbles
  B.) Google Assistant > List:
    Under the 'Response' section:
      1) Click the + icon next to 'Default'
      2) Select 'Google Assistant'
      3) Under the 'Google Assistant' tab, select 'Add Message 
      Content'
      4) Select 'List'
      5) In the Title field, enter what you want Pepper to say 
      and display on its tablet according to the syntax described 
      above ^^ in the 'General Information':
      ({What Pepper Says} || {What Pepper displays})
      6) In the field that says 'Enter option key...', enter a 
      specific line of text that will trigger another custom 
      intent that you will need to create to receive the action
      7) Add more list items, which will become more Text Bubbles


```

<img src = "images/TABLET.TEXT_BUBBLES.png"/>
<img src = "images/TABLET.TEXT_BUBBLES.Long.png"/>


```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: Hero Card with Choices
"""""""""""""""""""""""""""""""""""""""""
{
  "type": "message",
  "attachments": [{
    "contentType": "application/vnd.microsoft.card.hero",
    "content": {
      "title": "Do you want to know about Puppies?",
      "buttons": [{
          "type": "imBack",
          "value": "Yes please",
          "title": "Yes please"
        },
        {
          "type": "imBack",
          "value": "No thanks",
          "title": "No thanks"
        }
      ]
    }
  }],
  "locale": "en-US",
  "localTimestamp": "2017-10-02T10:45:19-07:00",
  "from": {
    "id": "n5dm5eb6ldekh6a3",
    "name": "Bot"
  },
  "recipient": {
    "id": "default-user"
  },
  "inputHint": "acceptingInput",
  "replyToId": "i0gn412d30ag423i",
  "id": "j2j8245c6b9m12n3i",
  "channelId": "emulator",
  "timestamp": "2017-10-02T17:45:19.923Z",
  "conversation": {
    "id": "6ja3le587mmjbc4c"
  }
}

"""""""""""""MAPPING""""""""""""""""""""
Mapping (MS-Bot Hero Card w/ Choices -> Pepper Data Model):
attachments.content.buttons ~> show.content
attachments.content.buttons.title -> show.content.text
attachments.content.buttons.value -> show.content.value
attachments.content.title -> show.text
attachments.content.title -> speak

WHERE
~> = loosely mapped
-> = strictly mapped
""""""""""""""""""""""""""""""""""""""""
```

## IMAGE - Carousel, Captioned

> ACTIONABLE IMAGES & TEXT RESPONSE:

Selectable, Scrollable (3 max on tablet at a time)

Dimensions: 360w x 341t ea.

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow:
""""""""""""""""""""""""""""""""""""""""
I.) UI:
For a given intent within your agent, under the 'Response'
section:
1) Click the + icon next to 'Default'
2) Select 'Google Assistant'
3) Under the 'Google Assistant' tab, select 'Add Message Content'
4) Select 'List'
5) Enter the URL of the picture
6) In the Title field, enter what you want Pepper to say and display
on its tablet according to the syntax described above ^^ in the 
'General Information' ({What Pepper Says} || {What Pepper displays})
7) In the field that says 'Enter option key...', enter a specific 
line of text that will trigger another custom intent that you will 
need to create to receive the action
8) Add as many list items as you want displayed


```

<img src = "images/TABLET.IMAGE.Carousel.Captioned.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: Hero Card with Images and Choices
"""""""""""""""""""""""""""""""""""""""""
{
  "type": "message",
  "attachmentLayout": "carousel",
  "attachments": [{
      "contentType": "application/vnd.microsoft.card.thumbnail",
      "content": {
        "title": "Boxer",
        "subtitle": "A breed of utility dog.",
        "text": "The American boxer is a stocky, well built, strong-looking dog, with a large head and a muscular build. Its coat is short and generally smooth. The breed is a light to moderate shedder.",
        "images": [{
          "url": "https://static.pexels.com/photos/158682/snow-dog-de-bordeaux-158682.jpeg"
        }],
        "buttons": [{
          "type": "imBack",
          "value": "boxer",
          "title": "Boxer"
        }]
      }
    },
    {
      "contentType": "application/vnd.microsoft.card.thumbnail",
      "content": {
        "title": "Akita",
        "subtitle": "Continental Toy Spaniel",
        "text": "The Akita is a very intelligent and self-assured dog that has a very easy time learning new tricks. This dog can be sociable with children and strangers but is generally reserved around new people. ",
        "images": [{
          "url": "https://upload.wikimedia.org/wikipedia/commons/5/56/Papillon_Ears.jpg"
        }],
        "buttons": [{
          "type": "imBack",
          "value": "akita",
          "title": "Akita"
        }]
      }
    }
  ],
  "locale": "en-US",
  "localTimestamp": "2017-10-02T10:45:24-07:00",
  "from": {
    "id": "n5dm5eb6ldekh6a3",
    "name": "Bot"
  },
  "recipient": {
    "id": "default-user"
  },
  "inputHint": "acceptingInput",
  "replyToId": "dn58c2bfjd1089dkac",
  "id": "nbdk7b69eb0j9j69",
  "channelId": "emulator",
  "timestamp": "2017-10-02T17:45:24.902Z",
  "conversation": {
    "id": "6ja3le587mmjbc4c"
  }
}

"""""""""""""MAPPING""""""""""""""""""""
Mapping (MS-Bot -> Pepper Data Model):
attachments ~> show.content
attachments.title -> show.content.text
attachments.subtitle -> **ABANDONED**
attachments.text -> show.content.speak
attachments.images.url -> show.content.contentURL
attachments.buttons.value -> show.content.value

ADDED
speak: 'Tap or Say one of the following'
show.content.text: 'Tap or Say one of the following'

WHERE
~> = loosely mapped
-> = strictly mapped
""""""""""""""""""""""""""""""""""""""""
```


## IMAGE - Carousel, Uncaptioned

> ACTIONABLE IMAGES & TEXT RESPONSE:

Selectable, Scrollable (3 max on tablet at a time)

Dimensions: 360w x 361t ea.

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow: 
""""""""""""""""""""""""""""""""""""""""
For a given intent within your agent, under the 'Response'
section, select 'Custom Payload' and enter the following:
{
  "title": "Tap or Say one of the following",
  "imageCards": [
    {
      "speak": "The American boxer is a strong-looking dog.",
      "contentURL": "https://static.pexels.com/photos/158682/snow-dog-de-bordeaux-158682.jpeg",
      "value": "boxer"
    },
    {
      "speak": "Its coat is short and generally smooth.",
      "contentURL": "https://static.pexels.com/photos/158682/snow-dog-de-bordeaux-158682.jpeg",
      "value": "boxer"
    },
    {
      "speak": "The Akita is a very intelligent dog.",
      "contentURL": "https://upload.wikimedia.org/wikipedia/commons/5/56/Papillon_Ears.jpg",
      "value": "akita"
    },
    {
      "speak": "This dog can be sociable with children.",
      "contentURL": "https://upload.wikimedia.org/wikipedia/commons/5/56/Papillon_Ears.jpg",
      "value": "akita"
    }
  ]
}
```

<img src = "images/TABLET.IMAGE.Carousel.Uncaptioned.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: N/A
"""""""""""""""""""""""""""""""""""""""""
Not available in MS-Bot
```

## IMAGE - 1-6-Icon Layouts

> ACTIONABLE IMAGES & TEXT RESPONSE:

Selectable, Non-Scrollable, Multiple-Icon Layouts (6 max total)
Background image configurable

Dimensions: 280w x 225t ea.

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow: 
""""""""""""""""""""""""""""""""""""""""
For a given intent within your agent, under the 'Response'
section, select 'Custom Payload' and enter the following:
{
  "backgroundColor": "#d7d7d7",
  "backgroundImage": "https://pepperstoragedev.blob.core.windows.net/pepperdrive/41092db5-ee34-424a-bdf3-6bca579180af60cd05b2-4caf-47e3-b654-e69da3b6f81a.jpg",
  "text": "Background color code and image together",
  "speak": "Color code and image test",
  "customIcons": [
    {
      "iconUrl": "https://pepperstoragedev.blob.core.windows.net/pepperdrive/41092db5-ee34-424a-bdf3-6bca579180af6c4dfe53-5fa2-45a2-a431-4cf014fc750e.png",
      "value": "One icon",
      "text": "Icon 1",
      "speak": "Good choice"
    },
    {
      "iconUrl": "https://pepperstoragedev.blob.core.windows.net/pepperdrive/41092db5-ee34-424a-bdf3-6bca579180afa013ade8-f8b1-4c69-914e-4c255274c84c.png",
      "value": "Two icons",
      "text": "Icon 2",
      "speak": "OK"
    },
    {
      "iconUrl": "https://pepperstoragedev.blob.core.windows.net/pepperdrive/41092db5-ee34-424a-bdf3-6bca579180afde0a0ee6-947d-4ca7-918c-a034e6e65350.png",
      "value": "Three icons",
      "text": "Icon 3",
      "speak": "You got it"
    },
    {
      "iconUrl": "https://pepperstoragedev.blob.core.windows.net/pepperdrive/41092db5-ee34-424a-bdf3-6bca579180af6e65cd8c-9e2a-4db4-b65c-107b4629c1a8.png",
      "value": "Four icons",
      "text": "Icon 4",
      "speak": "Alright"
    },
    {
      "iconUrl": "https://pepperstoragedev.blob.core.windows.net/pepperdrive/41092db5-ee34-424a-bdf3-6bca579180af969a089b-884b-47e2-b896-b2b9f07eea31.png",
      "value": "Five icons",
      "text": "Icon 5",
      "speak": "Great"
    },
    {
      "iconUrl": "https://pepperstoragedev.blob.core.windows.net/pepperdrive/41092db5-ee34-424a-bdf3-6bca579180afc611cb65-0926-4ccb-b308-4f879f131ec8.png",
      "value": "Six icons",
      "text": "Icon 6",
      "speak": "Wonderful"
    }
  ]
}
```

<img src = "images/TABLET.IMAGE.1-6-ICON.1_icon.png"/>
<img src = "images/TABLET.IMAGE.1-6-ICON.2_icon.png"/>
<img src = "images/TABLET.IMAGE.1-6-ICON.3_icon.png"/>
<img src = "images/TABLET.IMAGE.1-6-ICON.4_icon.png"/>
<img src = "images/TABLET.IMAGE.1-6-ICON.5_icon.png"/>
<img src = "images/TABLET.IMAGE.1-6-ICON.6_icon.png"/>
<img src = "images/TABLET.IMAGE.1-6-ICON.6_icon_example.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: N/A
"""""""""""""""""""""""""""""""""""""""""
Not available in MS-Bot
```


## IMAGE - Basic Card

> IMAGE RESPONSE - Basic Card

Non-selectable, must be followed by text bubbles to be selectable<br>

Dimensions: <br>
&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- approx. 975w x 585t for landscape Basic Cards<br>
&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- approx. 415w x 585t for portrait Basic Cards

```dialogflow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dialogflow: Non-actionable Images (with follow-up buttons)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
I.) UI:
For a given intent within your agent, under the 'Response'
section:
1) Click the + icon next to 'Default'
2) Select 'Google Assistant'
3) Under the 'Google Assistant' tab, select 'Add Message Content'
4) Select 'Basic Card'
5) Enter the URL of the picture
6) In the 'Title' field, enter what you want Pepper to say and display
on its tablet according to the syntax described above ^^ in the 
'General Information' section: ({What Pepper Says} || {What Pepper displays})

Note: with non-actionable images, it is recommended to keep the conversation
alive with a follow-up message. To prompt the user for another action, 
simply combine the Basic Card with the Google Assistant Suggestion Chips.


```

<img src = "images/TABLET.IMAGE.Basic-Card-Landscape.png"/>
<img src = "images/TABLET.IMAGE.Basic-Card-Portrait.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: Image Attachments response:
"""""""""""""""""""""""""""""""""""""""""
{
  "type": "message",
  "attachments": [{
      "contentUrl": "http://www.greathillpartners.com/wp-content/uploads/Golden-Puppy.jpg",
      "contentType": "image/jpg",
      "name": "Puppy pic 1"
    },
    {
      "contentUrl": "https://i.ytimg.com/vi/VRiWE1l8KqI/maxresdefault.jpg",
      "contentType": "image/jpg",
      "name": "Puppy pic 2"
    },
    {
      "contentUrl": "http://24.media.tumblr.com/53e3171e750c6c1028f8200ad73c8a53/tumblr_mkozt0qp3B1qiwf8po1_500.jpg",
      "contentType": "image/jpg",
      "name": "Puppy pic 1"
    }
  ],
  "text": "Here are some puppies",
  "locale": "en-US",
  "localTimestamp": "2017-10-02T11:01:51-07:00",
  "from": {
    "id": "default-bot",
    "name": "Bot"
  },
  "recipient": {
    "id": "default-user"
  },
  "inputHint": "ignoringInput",
  "replyToId": "3j6714mfbl49hf1bac",
  "id": "688k3bd50e8ifk364c",
  "channelId": "emulator",
  "timestamp": "2017-10-02T18:01:51.235Z",
  "conversation": {
    "id": "efj6c25bj3e43b0c9"
  }
}

"""""""""""""MAPPING""""""""""""""""""""
Mapping (MS-Bot -> Pepper Data Model):
attachments ~> show.content
attachments.contentUrl-> show.content.contentURL
attachments.contentType-> show.content.contentType
text -> speak
text -> show.text

WHERE
~> = loosely mapped
-> = strictly mapped
""""""""""""""""""""""""""""""""""""""""
```




##  IMAGE - Fullscreen Image

> IMAGE RESPONSE - Fullscreen Image:

Selectable, Non-Scrollable - 1280w x 800t

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow: 
""""""""""""""""""""""""""""""""""""""""
I.) UI:
A.) Selectable:
For a given intent within your agent, under the 'Response'
section, click 'Add Message Content', select 'Custom Payload' 
and copy and paste the following:
{
  "backgroundColor": "#d7d7d7",
  "backgroundImage": "https://pepperstoragedev.blob.core.windows.net/pepperdrive/c8f7061d-cd26-4807-8113-209cf7f574738baae0ca-27e1-4998-8732-7042c66e12ad.jpg",
  "speak": "Here is an actionable background image ||"
}
B.) Non-selectable:
{
  "imageURL": "https://pepperstoragedev.blob.core.windows.net/files/Default_Story_1.jpg",
  "speak": "Hi, I dont know how much you know about me, but I am here to be your host.",
  "delay": 2
}

Notes: 

A) With non-actionable images, it is recommended to keep the conversation
alive with a follow-up message. To prompt the user for another action, 
simply combine the Basic Card with the Google Assistant Suggestion Chips.

B) When using JSON (^^), any QiChat commands must be double-escaped (\\).


```

<img src = "images/TABLET.IMAGE.Full_Screen.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: Full Screen Image response:
""""""""""""""""""""""""""""""""""""""""

Not yet available in MS-Bot
```



## IMAGE - Sequence of Images

> IMAGE RESPONSE - Sequence of Images

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow: IMAGE RESPONSE
""""""""""""""""""""""""""""""""""""""""
To create a non-actionable sequence of (full screen) images, use the
'Full Screen Image Response' described above. Chain the Custom
Payloads together, one after another, to create a story.
```

<img src = "images/TABLET.IMAGE.Full_Screen.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: Image Attachments response:
"""""""""""""""""""""""""""""""""""""""""
{
  "type": "message",
  "attachments": [{
      "contentUrl": "http://www.greathillpartners.com/wp-content/uploads/Golden-Puppy.jpg",
      "contentType": "image/jpg",
      "name": "Puppy pic 1"
    },
    {
      "contentUrl": "https://i.ytimg.com/vi/VRiWE1l8KqI/maxresdefault.jpg",
      "contentType": "image/jpg",
      "name": "Puppy pic 2"
    },
    {
      "contentUrl": "http://24.media.tumblr.com/53e3171e750c6c1028f8200ad73c8a53/tumblr_mkozt0qp3B1qiwf8po1_500.jpg",
      "contentType": "image/jpg",
      "name": "Puppy pic 1"
    }
  ],
  "text": "Here are some puppies",
  "locale": "en-US",
  "localTimestamp": "2017-10-02T11:01:51-07:00",
  "from": {
    "id": "default-bot",
    "name": "Bot"
  },
  "recipient": {
    "id": "default-user"
  },
  "inputHint": "ignoringInput",
  "replyToId": "3j6714mfbl49hf1bac",
  "id": "688k3bd50e8ifk364c",
  "channelId": "emulator",
  "timestamp": "2017-10-02T18:01:51.235Z",
  "conversation": {
    "id": "efj6c25bj3e43b0c9"
  }
}

"""""""""""""MAPPING""""""""""""""""""""
Mapping (MS-Bot -> Pepper Data Model):
attachments ~> show.content
attachments.contentUrl-> show.content.contentURL
attachments.contentType-> show.content.contentType
text -> speak
text -> show.text

WHERE
~> = loosely mapped
-> = strictly mapped
""""""""""""""""""""""""""""""""""""""""
```



##  VIDEO - Fullscreen Video

> VIDEO RESPONSE:

Skippable - 1280w x 800t - .mp4 format required
YouTube / Vimeo / etc. video links do not work

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow: VIDEO RESPONSE
""""""""""""""""""""""""""""""""""""""""
I.) UI:
For a given intent within your agent, under the 'Response'
section, click 'Add Message Content', select 'Custom Payload'
and copy and paste the following:
{
  "videoURL": "https://url-of-your-video-file.mp4",
  "contentType": "video/mp4",
  "speak": "Here is a short video that is relevant to your utterance..."
}

Note: When using JSON (^^), any QiChat commands must be double-escaped (\\).

```

<img src = "images/TABLET.VIDEO.Full_Screen.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: Video Only response:
"""""""""""""""""""""""""""""""""""""""""
{
  "type": "message",
  "attachments": [{
    "contentUrl": "https://pepperstoragedev.blob.core.windows.net/pepperstories/b68b2247-f74a-4f6b-b3ad-3e7e66c1e600.mp4?decache=QLT1MXCSF1A9",
    "contentType": "video/mp4",
    "name": "Puppy video"
  }],
  "text": "Here is a puppy video",
  "locale": "en-US",
  "localTimestamp": "2017-10-02T11:09:03-07:00",
  "from": {
    "id": "default-bot",
    "name": "Bot"
  },
  "recipient": {
    "id": "default-user"
  },
  "inputHint": "acceptingInput",
  "replyToId": "f0igi03ln2f4fem94c",
  "id": "ek9im8g5df0e305bf",
  "channelId": "emulator",
  "timestamp": "2017-10-02T18:09:03.318Z",
  "conversation": {
    "id": "mb6c0bcdl2eclij9i"
  }
}

"""""""""""""MAPPING""""""""""""""""""""
Mapping (MS-Bot -> Pepper Data Model):
attachments ~> show.content
attachments.contentUrl-> show.content. contentURL
attachments.contentType-> show.content.contentType
text -> speak
text -> show.text

WHERE
~> = loosely mapped
-> = strictly mapped
""""""""""""""""""""""""""""""""""""""""
```


## WEBPAGE - Show Webpage

> WEBPAGE - SHOW WEBPAGE:



```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow: 
""""""""""""""""""""""""""""""""""""""""
I.) UI:
For a given intent within your agent, under the 'Response'
section, click 'Add Message Content', select 'Custom Payload'
and copy and paste the following:
{
  "speak": "Here is a webpage ||",
  "action": "showWebpage",
  "action_parameters": {
    "url": "https://www.theorganproject.net/promote-registration-individuals/",
    "onClose": "Web page closed"
  }
}

```

<img src = "images/TABLET.WEBPAGE.png"/>
<img src = "images/TABLET.WEBPAGE.Keyboard.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: Show a webpage
""""""""""""""""""""""""""""""""""""""""
Not yet available in MS-Bot
```



## USER INPUT - SHOW KEYBOARD

> USER INPUT - SHOW KEYBOARD:

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow: 
""""""""""""""""""""""""""""""""""""""""
For a given intent within your agent, under the 'Response'
section, select 'Custom Payload' and enter the following:
{
  "speak": "Type your confirmation number using the keyboard."
  "action": "showKeyboard"
}
```

<img src = "images/TABLET.USER-INPUT.Show-Keyboard.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: Show Keyboard response:
""""""""""""""""""""""""""""""""""""""""

Not yet available in MS-Bot
```

##  USER INPUT - PRIVACY POLICY

> PRIVACY POLICY - Checkbox:

###CHECKBOX
Keyboard with checked box with Privacy Policy displayed (for CTA) - .PDF format only

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow: PRIVACY POLICY - CHECKBOX
""""""""""""""""""""""""""""""""""""""""
I.) UI: 
For a given intent within your agent, under the 'Response'
section, click 'Add Message Content', select 'Custom Payload'
and copy and paste the following:
{
  "speak": "Please type in your email and agree to our privacy policy to continue",
  "privacyPolicy": {
    "url": "https://pepperstoragedev.blob.core.windows.net/pepperdrive/41092db5-ee34-424a-bdf3-6bca579180afprivacy-policy-template.pdf",
    "inputType": "email",
    "checkBoxChecked": true
  }
}

Note: With non-actionable images, it is recommended to keep the conversation
alive with a follow-up message. To prompt the user for another action, 
simply combine the Basic Card with the Google Assistant Suggestion Chips.

```

<img src = "images/TABLET.USER_INPUT.PRIVACY-POLICY.Checked.png"/>
<img src = "images/TABLET.USER_INPUT.PRIVACY-POLICY.Unchecked.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: PRIVACY POLICY
""""""""""""""""""""""""""""""""""""""""
Not yet available in MS-Bot
```

###MODAL DIALOG POP-UP

> PRIVACY POLICY - Modal Dialog Pop-Up:

Modal window pops up with Privacy Policy displayed (for CTA) - .PDF format only

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow: PRIVACY POLICY - Modal Dialog Pop-up
""""""""""""""""""""""""""""""""""""""""
I.) UI:
For a given intent within your agent, under the 'Response'
section, click 'Add Message Content', select 'Custom Payload'
and copy and paste the following:
{
  "speak": "Please enter your email",
  "privacyPolicy": {
    "url": "https://pepperstoragedev.blob.core.windows.net/pepperdrive/41092db5-ee34-424a-bdf3-6bca579180afprivacy-policy-template.pdf",
    "inputType": "email",
    "forcedPopup": true
  }
}

Note: With non-actionable images, it is recommended to keep the conversation
alive with a follow-up message. To prompt the user for another action, 
simply combine the Basic Card with the Google Assistant Suggestion Chips.

```

<img src = "images/TABLET.USER_INPUT.PRIVACY-POLICY.Modal.png"/>
<img src = "images/TABLET.USER_INPUT.PRIVACY-POLICY.Yes_Or_Not.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: PRIVACY POLICY
""""""""""""""""""""""""""""""""""""""""
Not yet available in MS-Bot
```

## TABLET UI SETTINGS

> TABLET UI SETTINGS - UPDATE CHATBOT STYLE

Configures style and settings for the chatbot's UI.

###UPDATE CHATBOT STYLE

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow:  UPDATE CHATBOT STYLE
""""""""""""""""""""""""""""""""""""""""
I.) UI: 
For a given intent within your agent, under the 'Response'
section, select 'Custom Payload' and enter the following:
{
  "speak": "Setting background image and color ||",
  "action": "setStyle",
  "action_parameters": {
    "backgroundColor": "#ebc6eb",
    "backgroundImage": "https://pepperstoragedev.blob.core.windows.net/pepperdrive/41092db5-ee34-424a-bdf3-6bca579180afbd2dcbc8-f435-4615-b63c-4274d66d7993.png",
    "restoreDefault": false,
    "nextUtterance": "Start"
  }
}

Notes:
- Set "restoreDefault" to true to restore the original (default)
 chatbot screen style. "backgroundColor" and "backgroundImage" 
 parameters can be omitted in this case (ignored if present).
"speak" parameter is optional. 
- Use it if you want Pepper to say something when chatbot style 
is updated.
- "nextUtterance" parameter is also optional. You can trigger 
next chatbot intent automatically after changing the style by 
assigning one of intent phrases to this parameter.
- Use "default" as "backgroundColor"or "backgroundImage" value 
to restore the original state of corresponding parameter
- Use "none" as "backgroundImage" to remove the image
- Style changes persist till the end of chatbot session. Original 
chatbot style is restored every time chatbot session is restarted.

```



<img src = "images/TABLET.SETTINGS.Style.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: UPDATE CHATBOT STYLE
""""""""""""""""""""""""""""""""""""""""

Not yet available in MS-Bot
```



###BACKGROUND - SET COLOR

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow:  SET BACKGROUND COLOR
""""""""""""""""""""""""""""""""""""""""
I.) UI: 
For a given intent within your agent, under the 'Response'
section, select 'Custom Payload' and enter the following:
{
  "backgroundColor": "#d7d7d7",
  "speak": "Here is a background color ||"
}

```



<img src = "images/TABLET.BACKGROUND.COLOR.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: SET BACKGROUND COLOR
""""""""""""""""""""""""""""""""""""""""

Not yet available in MS-Bot
```

### BACKGROUND - SET IMAGE

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow:  SET BACKGROUND IMAGE
""""""""""""""""""""""""""""""""""""""""
I.) UI: 
For a given intent within your agent, under the 'Response'
section, select 'Custom Payload' and enter the following:
{
  "backgroundColor": "#d7d7d7",
  "backgroundImage": "https://pepperstoragedev.blob.core.windows.net/pepperdrive/c8f7061d-cd26-4807-8113-209cf7f574738baae0ca-27e1-4998-8732-7042c66e12ad.jpg",
  "speak": "Here is an actionable background image ||"
}

```


<img src = "images/TABLET.BACKGROUND.IMAGE.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: SET BACKGROUND IMAGE
""""""""""""""""""""""""""""""""""""""""

Not yet available in MS-Bot
```



# →  Voice Shaping Commands

> Pepper Voice Shaping Commands - <br><br>"Did you know? <br>💡💡💡💡💡💡💡💡💡💡💡💡💡<br> QiChat is Pepper's native language.

Below are some useful voice commands a chatbot creator can use to control Pepper's delivery of certain lines or words. These commands are used as a markup language throughout a chatbot to wrap a word (or a series of words) in order to change the intonation and speed of Pepper's voice as he speaks the word(s)! 

<br><br>
##QiChat voice commands * | * * :
<code>\pau=1000\ </code> = Inserts a pause (in milliseconds)<br>
<code>\rspd=100\ </code> = Speed of voice (in percentage, 50-400)<br>
<code>\vct=100\ </code> = Pitch of voice (in percentage, 50=200)<br>
<code>\vol=100\ </code> = Volume of voice (in percentage, 0-100)<br>
<code>\style=joyful\ </code> = Joyful intonation<br>
<code>\style=neutral\ </code> = Normal intonation<br>
<code>\style=didactic\ </code> = Didactic intonation<br>
<code>\rst\ </code> = Resets control sequences<br>

> 
Ex. Usage: To imitate an emotional response <br>
User: Pepper you're fired! <br>
Pepper: \style=joyful\ No! \pau=100\ Please! \pau=500\ I need this job. \style=neutral\  ... 

>
Ex. Usages: (1) To pause for dramatic effect; (2) to emphasize a word or syllable (puns)<br>
Want to hear a joke about a piece of paper? \pau=800\ Never <br>
mind \pau=400\ it's \pau=300\ \rspd=50\ tearable. \rspd=100\

<aside class='info'> * When using JSON syntax (Custom Payloads, etc.), QiChat commands must be double-escaped (\\).</aside>

<aside class='warning'> * * WARNING: The Pepper Chat Simulator (available in web-based <a href="https://pepper-chat.azurewebsites.net">Pepper Chat CMS</a>) does not support QiChat codes at this point!</aside>
<br>



# →  Spoken vs Displayed Text

### WHAT PEPPER SPEAKS vs. WHAT PEPPER DISPLAYS ON TABLET:

By default, Pepper both speaks and displays on his tablet the text 
written in the response field. That is oftentimes not desirable 
behavior. For instance, you may want Pepper to display the opposite
of what he is saying as part of a game or survey. By using the 
following convention in your chatbot responses, you can make Pepper 
say one thing and display another. Simply use double pipes (||), 
according to the following syntax:
### Pepper: {What Pepper Says} || {What Pepper displays on the tablet}

> Ex: Hello, human! || 😃 <br>
In this example, Pepper will say 'Hello, human!' while displaying
an emoji smiley face: 😃.

> Ex: ig pay atin lay ample xay || Pig Latin example <br>
I think you see what I did there  ^^ ;) 

<br>
Examples:
<br>
User: Hello, robot! <br>
Pepper: {What Pepper Says} || {What Pepper displays on the tablet} <br>
→ View how to do it → <br>
<br>
User: Can you speak Pig Latin, Pepper? <br>
Pepper: {What Pepper Says} || {What Pepper displays on the tablet} <br>
→ View how to do it → <br>



# →  Pepper Animations
You have access to Pepper's full library of animations! Take advantage of them by first becoming familiar with the various animations in the library by playing them live on your Pepper from within Choregraphe (see instructions to the right → )
<br>
> 1) Install Choregraphe (free) from our website: https://developer.softbankrobotics.com/us-en/downloads/pepper
<br>
2) Connect to your robot from within Choregraphe using its IP address
<br>
3) Find (and activate if not activated) the Robot Applications panel
<br>
4) Find application called "Animation Library" and uncollapse it
<br>
5) Demo and animation by pressing its play icon in the Robot Applications panel

##Animation Playback Modes

When playing an animation, you have to choose one of two options for how the animation should be played:<br><br>
> Ex.) Dialogflow - Pepper's response: <br> Hi! ^run(animations/Stand/Emotions/Positive/Happy_4) It's great to see you!

<br>

>Ex.) Dialogflow - Pepper's response: <br> Hi! ^start(animations/Stand/Emotions/Positive/Excited_1) I'm so excited to see you! ^wait(animations/Stand/Emotions/Positive/Excited_1) It's nice to see you in our store again!

###RUN mode:
<ul>
  <li> Stops the speech until the animation has finished </li>
  <li>^run(...robot-animation-1)</li>
</ul>

###START mode:
<ul>
   <li>Start the animation and allow it to play, but allow the speech to continue while the animation is playing</li>
   <li>^start(...robot-animation-2)</li>
</ul>

<br>


# → Actions

The section below shows all the various actions that can be performed within a Chatbot context:


###ACTIONS - PRIMARY:
<ul>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#actions-run-application">RUN APPLICATION</a> - Launches external application - maintains chatbot session persistence</li>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#actions-play-a-game">PLAY A GAME</a> - Play a pre-installed game.</li>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#actions-trigger-an-intent">TRIGGER AN INTENT</a> - Provide an utterance to an intent you want to trigger </li>
</ul>

###ACTIONS - MISCELLANEOUS
<ul>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#actions-switch-language">SET LANGUAGE</a>
  Change the language Pepper is using</li>
  <li><a href="https://softbankroboticstraining.github.io/pepper-chatbot-api/#actions-get-robot-location">GET LOCATION</a>
  Returns geo-location of robot</li>
  
</ul>

## ACTIONS - RUN APPLICATION

> ACTIONS - RUN APPLICATION

Launches external application - maintains chatbot session persistence


```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow: RUN AN APPLICATION
""""""""""""""""""""""""""""""""""""""""
For a given intent within your agent, under the 'Response'
section, select 'Custom Payload' and enter the following:
{
  "speak": "Launching Survey application",
  "action": "startApp",
  "action_parameters": {
    "appId": "pepper-survey/."
  }
}

```

<img src = "images/ACTIONS.RUN-APPLICATION.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: RUN APPLICATION
""""""""""""""""""""""""""""""""""""""""
Not yet available in MS-Bot
```



## ACTIONS - PLAY A GAME

> ACTIONS - PLAY A GAME:

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow: PLAY A GAME
""""""""""""""""""""""""""""""""""""""""
I.) UI:
  A.) To initiate a specific game, under the 'Response' section, 
  select 'Custom Payload' and enter the following:
  {
    "speak": "Initiating selfie mode."
    "action": "playGame",
    "action_parameters": {
      "gameName": "Take a Selfie"
    }
  }

    Current Game Options:
    - 'Mindfulness Minute'
    - 'Freestyle dance'
    - 'Take a Selfie'
    - 'Music Boxes'
    - 'Arcadia dance' - CURRENTLY UNAVAILABLE

  B.) To initiate a random game, under the 'Response' section, 
  select 'Custom Payload' and enter the following:
  { 
    "payloadType": "action",
    "action": "playRandomGame"
  }

```

<img src = "images/ACTIONS.PLAY-A-GAME.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: Play a Game response:
""""""""""""""""""""""""""""""""""""""""

Not yet available in MS-Bot
```


## ACTIONS - TRIGGER AN INTENT

> ACTIONS - TRIGGER AN INTENT

HACK: Using the 'Update Chatbot Style' action payload, you can actually trigger another intent. 
Provide an utterance to an intent you want to trigger

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow:  TRIGGER AN INTENT
""""""""""""""""""""""""""""""""""""""""
I.) UI: 
For a given intent within your agent, under the 'Response'
section, select 'Custom Payload' and enter the following:
{
  "speak": "Setting background image and color ||",
  "action": "setStyle",
  "action_parameters": {
    "backgroundColor": "#ebc6eb",
    "backgroundImage": "https://pepperstoragedev.blob.core.windows.net/pepperdrive/41092db5-ee34-424a-bdf3-6bca579180afbd2dcbc8-f435-4615-b63c-4274d66d7993.png",
    "restoreDefault": false,
    "nextUtterance": "Start"
  }
}

```

<img src = "images/ACTIONS.TRIGGER-INTENT.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: TRIGGER AN INTENT
""""""""""""""""""""""""""""""""""""""""

Not yet available in MS-Bot
```

## ACTIONS - SWITCH LANGUAGE

> ACTIONS - SWITCH LANGUAGE

{COMING SOON - AVAILABLE TODAY ONLY IN DOGFOOD} Changes the language Pepper is using. 

<aside type='info'>NOTE: Requires that you have a multilingual Dialogflow agent. Also note that this will change the language for the entire communication system involving Pepper.  This includes Pepper's language, the transcription service language, and the Dialogflow agent.  </aside>

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow:  SWITCH THE LANGUAGE
""""""""""""""""""""""""""""""""""""""""
I.) UI: 
By setting the 'style' payload, you can use the 'nextUtterance' feature to trigger a new intent. For a given intent within your agent, under the 'Response' section, select 'Custom Payload' and enter the following:
{
  "speak": "Setting background image and color ||",
  "action": "setStyle",
  "action_parameters": {
    "backgroundColor": "#ebc6eb",
    "backgroundImage": "https://pepperstoragedev.blob.core.windows.net/pepperdrive/41092db5-ee34-424a-bdf3-6bca579180afbd2dcbc8-f435-4615-b63c-4274d66d7993.png",
    "restoreDefault": false,
    "nextUtterance": "Start"
  }
}

```

<img src = "images/ACTIONS.SWITCH-LANGUAGE.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: SWITCH THE LANGUAGE
""""""""""""""""""""""""""""""""""""""""

Not yet available in MS-Bot
```


## ACTIONS - GET ROBOT LOCATION

> ACTIONS - GET ROBOT LOCATION

{COMING SOON - AVAILABLE TODAY ONLY IN DOGFOOD} Returns geo-location of robot. 

<aside type="info"> Mozilla API and/or Google API keys need to be added into the Robot Profile:<br>
<table color="#c6dde9">
  <tr>
    <td>Domain</td>
    <td>Key</td>
    <td>Value</td>
  </tr>
  <tr>
    <td>com.aldebaran.geoloc</td>
    <td>google_api_key</td>
    <td>{insert key value here}</td>
  </tr>
  <tr>
    <td>com.aldebaran.geoloc</td>
    <td>mozilla_api_key</td>
    <td>{insert key value here}</td>
  </tr>
</table>
</aside>

```dialogflow
"""""""""""""""""""""""""""""""""""""""""
Dialogflow:  GET ROBOT LOCATION
""""""""""""""""""""""""""""""""""""""""
I.) UI: 
For a given intent within your agent, under the 'Response'
section, select 'Custom Payload' and enter the following:
{
  "speak": "Getting triangulated geolocation information ||",
  "action": "getLocation"
}

```

<img src = "images/ACTIONS.GET-ROBOT-LOCATION.png"/>

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""
MS-Bot: GET ROBOT LOCATION
""""""""""""""""""""""""""""""""""""""""

Not yet available in MS-Bot
