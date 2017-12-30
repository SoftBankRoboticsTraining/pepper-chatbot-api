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