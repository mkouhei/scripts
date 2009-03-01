#!/usr/bin/ruby
#
# NAME:
#       kabegami.rb
#
# DESCRIPTION:
#       Windowsで「日替わり壁紙君」というのがあるので、
#       (http://www.vector.co.jp/soft/win95/amuse/se186329.html)
#       Linuxでも欲しいなあと思い、シェルスクリプトで書けばすぐできるが、
#       Rubyの勉強を兼ねて、あえてRubyで書いてみた。
#
# USAGE:
#       ./kabegami.rb
#       (1)まず、ホームディレクトリ直下にwallpaperというディレクトリを作る
#       (2)そこに拡張子がjpg,pngの画像ファイルを置く
#          サブディレクトリを作っても良し
#       (3).bash_profileなどで呼び出すようにしておけば、ログインのたびに
#          ランダムで壁紙を切替える。
#
# CHANGELOG:
#       2005-12-20  Kouhei Maeda <mkouhei at palmtb.net>
#       * Version 1.0
#       * Original 
#============================================================================
require "fileutils"
findpath = "**/*.jpg\0**/*.png\0/usr/share/xfce4/backdrops/*.png"
path = ENV["HOME"] + "/wallpaper"



def randomfile(path, findpath)
  Dir.chdir(path)
  filelist = Dir.glob(findpath) 
  filename = filelist[rand(filelist.length)]
#  p filename
  return filename
end

def linkimage(filename)

  FileUtils.ln_s(filename, "imagefile", {:force => true})
#  p filename
end

#def filetype
# JPEG image data
# GIF image data
# PNG image data
# PC bitmap data
#end

linkimage(randomfile(path, findpath))

exit
