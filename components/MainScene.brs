' 1st function that runs for the scene component on channel startup
sub init()
  url = "https://roku.s.cpl.delvenetworks.com/media/59021fabe3b645968e382ac726cd6c7b/60b4a471ffb74809beb2f7d5a15b3193/roku_ep_111_segment_1_final-cc_mix_033015-a7ec8a288c4bcec001c118181c668de321108861.m3u8"

  m.Video = m.top.findNode("Video")
  ContentNode = CreateObject("roSGNode", "ContentNode")
  ContentNode.url = url
  print("playing url: " + url)
  ContentNode.streamFormat = "hls"
  ContentNode.title = "Test Video"
  m.Video.content = ContentNode
  m.Video.control = "play"
  m.Video.setFocus(true)
end sub
