const Discord = require('discord.js')
const bot = new Discord.Client()
const client = new Discord.Client();
const { exec } = require('child_process');

console.log("Connexion au bot...");
bot.login('TOKEN')
.then(() => console.log("Connecté au bot !"))
.catch((error) => console.log("Impossible de se connecter au bot - " + error));

  bot.on('message', (message) => {
    let cmember = message.mentions.members;
    if (message !== '378578305269366785' || message !== '505801322872700929' ) {
      return
    }
  }
)
    bot.on('message', (message) => {
      if (message.mentions.users.size > 0) {
        let cmember = message.mentions.members.first();
          if (cmember.id === '378578305269366785' ||  cmember.id  === '505801322872700929' ){
            exec('python mention.py ',
            function (error, stdout, stderr) {
                console.log('stdout: ' + stdout);
                console.log('stderr: ' + stderr);
          }
        )
      }
    }
  }  
)
  bot.on('message', (message) => {
    if (message.content === 'Mohamed est homosexuelle') {
      const channel = message.channel;
      message.channel.send("J’avoue t’as raison")
    }
  }
)
  bot.on('message', (message) => {
    if (message.content === 'Mohamed est homosexuelle') {
      const channel = message.channel;
      messages = message.content - 1
      messages.channel.send("J’avoue t’as raison")
    }
  }
)
    bot.on("message", async (message) => {
      if (message.content === "!nuke") {
           if (!message.member.hasPermission("ADMINISTRATOR")) {
            message.reply("Tu n'a pas les perm sale shlag");
            return;
          }
          const channel = message.channel;
          const messages = await channel.messages.fetch({ limit: 100 });
          messages.forEach(async (msg) => {
          await msg.delete().catch(console.error);
        }
      )   
    }
  }
)