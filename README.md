# ESET-Joiner
ESET Joiner Version 1 Based On Telegram-Bot

راهنمای نصب ربات : 

نصب سورس در ورژن رایگان فقط 1 اکانت بر روی هر سرور میباشد.
درصورت نصب چند اکانت بر روی سرور با مشکل تداخل ردیس ربات ها مواجه میشوید.
برای خرید ورژن چند اکانتی به پی وی سازنده مراجعه کنید.

دستور زیر را در ترمینال سرور خود بزنید :

git clone https://github.com/Kia-Pashang/ESET-Joiner.git && cd ESET-Joiner && chmod +x ESET.sh && ./ESET.sh install

وقتی که نصب تموم شد برای وصل شدن سورس به اکانت دستور زیر را بزنید

./ESET.sh login

سپس وارد پوشه :
Libs
بشوید و فایل 
Config.lua
رو باز کنید
سپس آیدی عددی سودو و ربات رو ست کنید سپس آن را ذخیره و ببندید

برای اجرای سورس هم از دستور زیر استفاده کنید 

./ESET.sh run

برای جلوگیری از خاموش شدن ربات پس از بستن ترمینال از دستور :

screen ./ESET.sh run

استفاده کنید.

------------------------------------------------

در صورت برخورد با ارور زیر : 

user/bin/env: 'bash/r': No Such File Or Directory

از دستوات زیر استفاده کنید

sudo apt-get install dos2unix

find . -type f -exec dos2unix {} \;

سپس مراحل راه اندازی ربات را از نو انجام دهید.

------------------------------------------------

## Creator : [Kia Pashang](Https://T.Me/To_My_Amigos)
## Channel : [@ESETAdvertiser](Https://T.Me/ESETAdvertiser)
## Team Channel : [@ESET_TM](Https://T.Me/ESET_TM)
