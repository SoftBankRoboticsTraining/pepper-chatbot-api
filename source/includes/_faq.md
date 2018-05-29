# FAQ & Limitations
General FAQ questions are listed below. ChatBot specific FAQ questions are listed to the right under its tab.
<aside class="notice">If you have a question not on our FAQ, please contact us at training@softbankrobotics.com</aside>


Q. Can a ChatBot send two JSON responses in sequence?

A. Yes. In fact, that is actually the best practice way of preventing a user from getting stuck on a non-actionable
   image. It is recommended to follow it up with another JSON response.

```ms_bot_framework
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Q. Can Pepper say one string and show another?

A. Currently NO, Pepper will say and show the same string. However 
   we are working towards this functionality soon.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Q. How many hero cards will Pepper show?

A. As many as you like. Pepper will simply allow the user to scroll 
   through them, three at a time. It might not be very user friendly, 
   so we suggest keeping the number of cards under 10.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Q. Can Pepper respond to an utterance with a picture or video?

A. Yes, Pepper can show either a landscape or a portrait photo. It
   can also respond with a fullscreen video.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

```

```dialogflow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Q. How do I upgrade an agent from V1 to V2?

A. If you are looking to migrate your bot to V2, or how to integrate 
your V2 bot into the Pepper Chat system, you've come to the right 
place!

Be advised: Pepper Chat treats V1 and V2 bots completely differently, 
so if you want to upgrade an existing bot you need to make a new bot 
in our system.

First, from within the Dialogflow Console, you need to make sure your 
bot is upgraded to Dialogflow V2 under the 'API VERSION' under the 
Settings tab within your agent. Simply click on the V2 API radial 
button.

Great! Now under the 'GOOGLE PROJECT' section of Settings, click on 
the hyperlinked value under 'Service Account'.

Awesome! Now you should be within the Google Cloud Platform console. 
Navigate to Service Accounts. Click on the ellipsis for the service 
account called Dialogflow Integrations. Select 'Create key' and select
JSON as the Key Type.

Now save that document! Pepper Chat will need it when you create the 
new Dialogflow bot.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Q. How many hero cards will Pepper show?

A. As many as you like. Pepper will simply allow the user to scroll 
   through them, three at a time. It might not be very user friendly, 
   so we suggest keeping the number of cards under 10.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Q. Can Pepper respond to an utterance with a picture or video?

A. Yes, Pepper can show either a landscape or a portrait photo. It
   can also respond with a fullscreen video.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

```