// Obtained at: https://github.com/FAXES/DiscordWhitelist
// License: Creative Commons Zero v1.0 Universal
// https://github.com/FAXES/DiscordWhitelist/blob/master/LICENSE

var guildId = exports.discordqueue.guildID(); 
var botToken = exports.discordqueue.botToken(); 

var debugMode = false; 
var cacheMaxTime = "1h";

var work = true;
var cache = {};
const axios = require('axios').default;
const ms = require('ms');
axios.defaults.baseURL = 'https://discord.com/api/v9';
axios.defaults.headers = {};
const version = '4.1.1'

getUserDiscord = async function(source, callback) {
    if(typeof source == 'string') return source;
    if(!GetPlayerName(source)) return false;
    let arr = []
    for(let index = 0; index <= GetNumPlayerIdentifiers(source); index ++) {
        if(GetPlayerIdentifier(source, index)) {
            arr.push(GetPlayerIdentifier(source, index))
        }
    }
    setTimeout(() => {
        const found = arr.find(e => e.startsWith('discord:'));
        if(found) {
            callback(found.replace('discord:', ''));
        } else {
            callback(null);
        }
    }, 500);
}

setTimeout(async () => {
    let botAccount = await axios({
        method: 'GET',
        url: `https://discord.com/api/v9/users/@me`,
        headers: {
            'Content-Type': 'application/json',
            Authorization: `Bot ${botToken}`
        },
    }).catch(async (err) => {
        console.log(`Bot token is incorrect. Queue will not be functional!`);
        work = false;
    });

    if(botAccount.data) {
        await axios({
            method: 'GET',
            url: `https://discord.com/api/v9/guilds/${guildId}`,
            headers: {
                'Content-Type': 'application/json',
                Authorization: `Bot ${botToken}`
            },
        }).catch(async (err) => {
            console.log(`Bot is not in the server. Queue will not be functional! Use the following link to invite the bot to your server:`);
            console.log(`https://discord.com/api/oauth2/authorize?client_id=${botAccount.data.id}&permissions=1024&scope=bot ^7`);
            work = false;
        });
    }
}, 2000);

exports('getName', (src) => {
    if(!work) return;
    return new Promise((res, rej) => {
        getUserDiscord(src, function(userId) {
            if(userId) {
                axios({
                    method: 'GET',
                    url: `/guilds/${guildId}/members/${userId}`,
                    headers: {
                        'Content-Type': 'application/json',
                        Authorization: `Bot ${botToken}`
                    },
                }).then((result) => {
                    res(result.data.user.username)
                }).catch(async (err) => {
                    // console.log(err) // returns 404 if no member, so we can ignore it
                    res(null)
                });
            } else {
                res(null)
            }
        });
    });
});


exports('getRoles', (src) => {
    if(!work) return;
    return new Promise((res, rej) => {
        getUserDiscord(src, function(userId) {
            if(userId) {
                axios({
                    method: 'GET',
                    url: `/guilds/${guildId}/members/${userId}`,
                    headers: {
                        'Content-Type': 'application/json',
                        Authorization: `Bot ${botToken}`
                    },
                }).then((result) => {
                    res(result.data.roles)
                }).catch(async (err) => {
                    console.log(err)
                    res(null)
                });
            } else {
                res(null)
            }
        });
    });
});