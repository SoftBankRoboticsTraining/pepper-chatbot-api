# FAQ & Limitations


<aside class="notice">General FAQ questions are listed below. If you have a question not on our FAQ, please contact us at training@softbankrobotics.com</aside>


Q. Can I send the different response types using fulfillment?

A. Yes. In fact, we have created an easy-to-use, Pepper Chat Dialogflow fulfillment library to form the correct JSON responses for you: <a href="https://github.com/softbank-robotics-america/pepper-dialogflow-markup-library">https://github.com/softbank-robotics-america/pepper-dialogflow-markup-library</a>.

--

Q. Can a ChatBot send two JSON responses in sequence?

A. Yes. In fact, that is actually the best practice way of preventing a user from getting stuck on a non-actionable
   image. It is recommended to follow it up with another JSON response.

--

Q. How do I upgrade an agent from V1 to V2?

A. Please do not upgrade agents to V2 yet. Our integration with V2
is not yet the preferred integration. 

That being said, if you are looking to migrate your bot to V2, or 
how to integrate your V2 bot into the Pepper Chat system, you've come 
to the right place!

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

--


Q. How many scrollable carousel images will Pepper show?

A. We suggest keeping the number of cards under 10.

--


Q. Can Pepper respond to an utterance with a picture or video?

A. Yes, Pepper can show either a landscape or a portrait photo. It
   can also respond with a fullscreen video.


