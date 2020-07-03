⚠️ **Commits messages may contain swears or inappropriate language as they were not intended to be seen by anyone else but me. Please keep that in mind** ⚠️
# Raphy's UCH Content
This is the content that was hosted on my Ultimate Chimera Hunt server back in 2014-2017

# Important notice about the source of these files
Most of (if not all of) the files have been downloaded from Reconstructed Ultimate Chimera Hunt. The clientside lua files have been "sniffed" and I edited out the content that wasn't rightfully mine. The method I applied, which will be explained in the near future, has not been done with fradulent intent nor did I used any "hacks" or some sort to get into the server and steal the files. All of this are files that are automatically downloaded by the Garry's mod client.

Should you notice any content that isn't rightfully mine or wasn't used in any forms on my server back then, please get in touch with me. Create an issue on this repository or contact me on discord at Raphy#5335 or join my old discord from back then and tag me (https://discord.com/invite/UqwXQam)


# What has been done to get the files back
A bit of backstory, I had a backup with all of the content on an old dropbox linked to a certain email address that I lost access to, so it was impossible for me to get that backup back.
Knowing that Reconstructed UCH based themselves off the content of my old server (and a vague memory of me willingly sharing files with them) and that most of the maps has been "public domain" since years as they were made by certain people and shared, the first step has been to look at their FastDL directly by typing sv_download while on their server, which gave me the link of their FastDL hosted on GitHub. I downloaded it entirely and started filtering out what wasn't used back then.

What I needed now were the hats offsets for pointshop so they would show correctly on a pigmask (Yes, you have to do all of them manually, which is a pain). The way it works, is that each items have their own Lua file for setting it up, that file is part of the *shared* domain which means that the file will be included on the server as well as being sent to the client when logging in, as a client will need the info of each items to show the name, price and the model to use.
That file contains the offsets to be used, as everyone on the server need to know how to show items equipped by their player as well as other players.

With that in mind, here's what I did to get these files.
I've used **Friendly stealer** made by *copypaste* (https://www.unknowncheats.me/forum/garry-s-mod/313236-friendly-stealer-clientside-lua-file-stealer.html) which is a dll that can be injected into Garry's Mod that will write received lua files from a server onto a certain location of your disk. I was able to get all the clientside files of Reconstructed like this.

Afterwards, once again, I started filtering all the content and only kept what was rightfully mine or was used on my server in any forms back in the days. As the notice says, should you see anything that isn't mine or wasn't used on my server, reach out to me and I will remove it.
