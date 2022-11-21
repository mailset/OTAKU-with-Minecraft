using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OwMCore {
    internal class CompletionGameFile {
        /** Tools */
        SquareMinecraftLauncher.Minecraft.Tools sqTools = new SquareMinecraftLauncher.Minecraft.Tools();
        /** Be Completed Version */
        string minecraftVersion;

        /** Completion Function */
        public void Completion(string versionTemp) {

            /** Get Missing Files */
            SquareMinecraftLauncher.Minecraft.MCDownload[] missingFiles = sqTools.GetMissingFiles(versionTemp);
            /** Download Missing Files */
            Gac.DownLoadFile downloadFile = new Gac.DownLoadFile();

            for (int i = 0; i < missingFiles.Length; i++)
            {

                downloadFile.AddDown(missingFiles[i].Url, missingFiles[i].path);
                downloadFile.StartDown(3);
            }
        }
    }
}
