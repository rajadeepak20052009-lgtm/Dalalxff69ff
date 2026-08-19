# FF Emote Pro — Termux Advanced

## पहली बार
```bash
pkg update -y
pkg install python unzip -y
unzip ffemote-termux-advanced.zip
cd ffemote-termux-advanced
bash install.sh
```

## हर बार चलाएँ
```bash
cd ffemote-termux-advanced
bash start.sh
```
फिर Chrome में **http://127.0.0.1:8080** खोलें।

## क्या fix हुआ
- Blocking subscribe popup हटाया; अब सभी controls click होते हैं।
- Send Emote, Create Group और Badge Request सही online API को call करते हैं।
- Mode tabs, filters, search, emote selection, clear, add/remove UID, 5/6 player buttons ठीक किए।
- Tailwind और SweetAlert scripts package में local हैं।
- Offline/online status badge और popup-block fallback जोड़ा।
- Inputs की validation और API error handling मौजूद है।

## ज़रूरी बात
UI local चलता है, लेकिन emote images और game actions के लिए internet चाहिए। Actions original public service पर निर्भर हैं; service बदलने या बंद होने पर action नहीं चलेगा। किसी third-party service के उपयोग की अनुमति/नियम का पालन करें।

## Check
```bash
bash scripts/check.sh
```

दूसरा port चाहिए तो:
```bash
PORT=9090 bash start.sh
```
