function FindProxyForURL (url, host)
{
    var proxy = "PROXY mao.bmobile.ne.jp:32080";

    if (shExpMatch(host, "127.0.0.1"))
	return "DIRECT";
    else
	return proxy;
}
