# FAQ & Limitations


<aside class="notice">General FAQ questions are listed below. If you have a question not on our FAQ, please contact us at support@softbankrobotics.com</aside>


Q. Can I send the different response types using fulfillment?

A. Yes. In fact, we have created an easy-to-use, Pepper Chat Dialogflow fulfillment library to form the correct JSON responses for you: <a href="https://github.com/softbank-robotics-america/pepper-dialogflow-markup-library">https://github.com/softbank-robotics-america/pepper-dialogflow-markup-library</a>.

--

Q. Can a ChatBot send two Pepper responses  in sequence?

A. Yes. In fact, that is actually the best practice way of preventing a user from getting stuck on a non-actionable
   image. It is recommended to follow it up with another Pepper (Custom Payload JSON / Text) response.

--

Q. How do I upgrade an agent from V1 to V2?

A. There are 4-5 steps involved, depending on whether or not you use fulfillment.

1) UPGRADE AGENT: First, from within the Dialogflow Console, you need to make sure your 
bot is upgraded to Dialogflow V2 under the 'API VERSION' under the 
Settings tab within your agent. Simply click on the V2 API radial 
button.

2.) DOWNLOAD KEYPATH FILE: Now, under the 'GOOGLE PROJECT' section of Settings, click on 
the hyperlinked value under 'Service Account'.

Now, you should be within the Google Cloud Platform console. 
Navigate to Service Accounts. Click on the ellipsis for the service 
account called Dialogflow Integrations. Select 'Create key' and select
JSON as the Key Type.

Now save that document! Pepper Chat will ask you to upload that document 
when pairing your Dialogflow bot.

3.) PAIR CHATBOT: Pair the chatbot in Pepper Chat using the downloaded keypath file

4.) UPDATE ANY DEPRECATED V1 SYNTAX: Update any occurences of Text Bubbles, Basic Cards, or Carousels 
with the new syntax specified in this documentation.

5.) UPDATE WEBHOOK: [Only necessary if your chatbot use a webhook] Update your webhook to either use
 SBRA's new V2 fulfillment library or else update your webhook manually per
  the new Dialogflow V2 syntax if you do not use the SBRA fulfillment
   library

--


Q. How many scrollable carousel images will Pepper show?

A. We suggest keeping the number of cards under 10.

--


Q. Can Pepper respond to an utterance with a picture or video?

A. Yes, Pepper can show either a landscape or a portrait photo. It
   can also respond with a fullscreen video.


