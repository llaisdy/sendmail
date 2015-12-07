-module(sendmail_egs).

-export([stext/2, shtml/2]).

stext(To, From) ->
    Subject = "Test Message #3",
    Message = "qwe asd zxc\nrty fgh vbn\nuio jkl mp!\n\n",
    sendmail:send(To, From, Subject, Message).

shtml(To, From) ->
    Subject = "HTML Test #1",
    MessageHtm = "<div>\n<h1>qwe asd zxc</h1>\n\n<p>rty fgh vbn</p>\n<p>uio jkl mp!</p>\n</div>\n\n",
    Opts = [html],
    sendmail:send(To, From, Subject, MessageHtm, Opts).
    
