module Paths_EulerProj (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/iso/EulerProj/.stack-work/install/x86_64-linux/lts-6.0/7.10.3/bin"
libdir     = "/home/iso/EulerProj/.stack-work/install/x86_64-linux/lts-6.0/7.10.3/lib/x86_64-linux-ghc-7.10.3/EulerProj-0.1.0.0-CXKf0AA2Udw4JRL7DCOEOh"
datadir    = "/home/iso/EulerProj/.stack-work/install/x86_64-linux/lts-6.0/7.10.3/share/x86_64-linux-ghc-7.10.3/EulerProj-0.1.0.0"
libexecdir = "/home/iso/EulerProj/.stack-work/install/x86_64-linux/lts-6.0/7.10.3/libexec"
sysconfdir = "/home/iso/EulerProj/.stack-work/install/x86_64-linux/lts-6.0/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "EulerProj_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "EulerProj_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "EulerProj_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "EulerProj_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "EulerProj_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
