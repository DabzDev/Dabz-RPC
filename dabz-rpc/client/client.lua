Citizen.CreateThread(function()
    while true do
        InitDiscordApp(Config)

        Citizen.Wait(Config.UpdateEvery)
    end
end)

RegisterNetEvent("dabz_discord_presence:receive_data", function(richPresenceString)
    SetRichPresence(richPresenceString)
end)

function InitDiscordApp(Config)
    SetDiscordAppId(Config.DiscordAppID)

    SetDiscordRichPresenceAsset(Config.AppBigAssetID)
    SetDiscordRichPresenceAssetText(Config.AppBigAssetText)

    SetDiscordRichPresenceAssetSmall(Config.AppSmallAssetID)
    SetDiscordRichPresenceAssetSmallText(Config.AppSmallAssetText)

    SetDiscordRichPresenceAction(0, Config.FirstButtonPlaceholder, Config.FirstButtonLink)
    SetDiscordRichPresenceAction(1, Config.SecondButtonPlaceholder, Config.SecondButtonLink)

    TriggerServerEvent('dabz_discord_presence:get_data')
end
