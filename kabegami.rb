#!/usr/bin/ruby
#
# NAME:
#       kabegami.rb
#
# DESCRIPTION:
#       Windows�ǡ����ؤ���ɻ淯�פȤ����Τ�����Τǡ�
#       (http://www.vector.co.jp/soft/win95/amuse/se186329.html)
#       Linux�Ǥ��ߤ����ʤ��Ȼפ��������륹����ץȤǽ񤱤Ф����Ǥ��뤬��
#       Ruby���ٶ����ͤơ�������Ruby�ǽ񤤤Ƥߤ���
#
# USAGE:
#       ./kabegami.rb
#       (1)�ޤ����ۡ���ǥ��쥯�ȥ�ľ����wallpaper�Ȥ����ǥ��쥯�ȥ����
#       (2)�����˳�ĥ�Ҥ�jpg,png�β����ե�������֤�
#          ���֥ǥ��쥯�ȥ���äƤ��ɤ�
#       (3).bash_profile�ʤɤǸƤӽФ��褦�ˤ��Ƥ����С�������Τ��Ӥ�
#          ��������ɻ�����ؤ��롣
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
