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
            minecraftVersion = versionTemp;
            /** Get Missing Files */
            SquareMinecraftLauncher.Minecraft.MCDownload[] missingFiles = sqTools.GetMissingFile(versionTemp);
            /** Download Missing Files */
            Gac.DownLoadFile downloadFile = new Gac.DownLoadFile();
            int id = 0;
            for (int i = 0; i < missingFiles.Length; i++) {
                
                downloadFile.AddDown(missingFiles[i].Url, missingFiles[i].path.Replace(System.IO.Path.GetFileName(missingFiles[i].path), ""), System.IO.Path.GetFileName(missingFiles[i].path),id);
                downloadFile.StartDown(3);
                id++;
            }
        }
    }
}
