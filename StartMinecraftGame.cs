using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OwMCore
{
    /** A Class For Start Minecraft */
    internal class StartMinecraftGame
    {
        SquareMinecraftLauncher.Minecraft.Tools tools = new SquareMinecraftLauncher.Minecraft.Tools();
        /** Minecraft Edition */
        string gameVersion;
        /** Minecraft Starting RAM */
        int minecraftRam;
        /** Java Path */
        string javaPath;
        /** Offline Login PlayerName*/
        string offlineName;
        /** Start Error Return */
        bool startStatus = true;

        /** Start Game*/
        async public void StartMinecraft(string versionTemp, int ramTemp, string javaTemp, string nameTemp)
        {
            gameVersion = versionTemp;
            minecraftRam = ramTemp;
            javaPath = javaTemp;
            offlineName = nameTemp;
            /** new Game Procress */
            SquareMinecraftLauncher.Minecraft.Game game = new SquareMinecraftLauncher.Minecraft.Game();
            /** Start Game */
            try
            {
                await game.StartGame(gameVersion, javaPath, minecraftRam, offlineName);
            }
            catch
            {
                startStatus = false;

            }

        }
    }
}
