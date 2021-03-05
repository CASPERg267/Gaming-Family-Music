const { LOCALE } = require("../util/GamingfamilyUtil");
const i18n = require("i18n");

i18n.setLocale(LOCALE);

module.exports = {
  name: "invite",
  description: i18n.__('invite.description'),
  execute(message) {
    return message.member
      .send(
        `Nope! i am not public yet bro i am still beta but you can contact my owner to make your exception https://discord.gg/DFtRG4eAan :) ${message.client.user.id}&
    `
      )
      .catch(console.error);
  }
};
