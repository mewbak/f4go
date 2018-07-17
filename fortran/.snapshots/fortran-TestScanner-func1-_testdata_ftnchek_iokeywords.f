(string) (len=3394) "COMMENT\t  Exerciser for recognition and flagging of various I/O keywords.\nIDENT\tprogram\nIDENT\tiokeywds\nIDENT\tcall\nIDENT\tvms_isms\nIDENT\tcall\nIDENT\tdirect_access\nIDENT\tcall\nIDENT\tf90_stuff\nIDENT\tend\nIDENT\tsubroutine\nIDENT\tvms_isms\nIDENT\tcharacter\n*\t*5\nIDENT\t12\nIDENT\tline\n(\t(\nIDENT\t4\n)\t)\nCOMMENT\tC  This one uses some VMS-isms\nIDENT\topen\n(\t(\nIDENT\tunit\n=\t=\nIDENT\t1\n,\t,\nIDENT\tcarriagecontrol\n=\t=\nSTRING\t'none'\n,\t,\nIDENT\trecordtype\n=\t=\nSTRING\t'fixed'\n,\t,\nIDENT\trecl\n=\t=\nIDENT\t2048\n,\t,\nIDENT\tstatus\n=\t=\nSTRING\t'new'\n,\t,\nIDENT\tname\n=\t=\nSTRING\t'file1'\n)\t)\nIDENT\topen\n(\t(\nIDENT\tunit\n=\t=\nIDENT\t2\n,\t,\nIDENT\tcarriagecontrol\n=\t=\nSTRING\t'none'\n,\t,\nIDENT\trecl\n=\t=\nIDENT\t512\n,\t,\nIDENT\tstatus\n=\t=\nSTRING\t'old'\n,\t,\nIDENT\terr\n=\t=\nIDENT\t1\n)\t)\nIDENT\tgoto\nIDENT\t2\nIDENT\t1\nIDENT\tstop\nSTRING\t'Please $ASSIGN/USER output FOR001'\nIDENT\t2\nIDENT\tdo\nIDENT\ti\n=\t=\nIDENT\t1\n,\t,\nIDENT\t4\nIDENT\tread\n(\t(\nIDENT\t2\n,\t,\nSTRING\t'(a)'\n,\t,\nIDENT\terr\n=\t=\nIDENT\t3\n)\t)\nIDENT\tline\n(\t(\nIDENT\ti\n)\t)\nIDENT\tend\nIDENT\tdo\nIDENT\twrite\n(\t(\nIDENT\t1\n,\t,\nSTRING\t'(a)'\n)\t)\nIDENT\tline\n(\t(\nIDENT\t1\n)\t)\n/\t/\n/\t/\nIDENT\tline\n(\t(\nIDENT\t2\n)\t)\n/\t/\n/\t/\nIDENT\tline\n(\t(\nIDENT\t3\n)\t)\n/\t/\n/\t/\nIDENT\tline\n(\t(\nIDENT\t4\n)\t)\nIDENT\tgoto\nIDENT\t2\nIDENT\t3\nIDENT\tcontinue\nIDENT\tclose\n(\t(\nIDENT\tunit\n=\t=\nIDENT\t1\n)\t)\nIDENT\tclose\n(\t(\nIDENT\tunit\n=\t=\nIDENT\t2\n)\t)\nIDENT\tend\nIDENT\tsubroutine\nIDENT\tdirect_access\nIDENT\tcharacter\nIDENT\tinline\n*\t*7\nIDENT\t9\nIDENT\topen\n(\t(\nIDENT\tunit\n=\t=\nIDENT\t1\n,\t,\nIDENT\tfile\n=\t=\nSTRING\t'test'\n,\t,\nIDENT\taccess\n=\t=\nSTRING\t'direct'\n,\t,\nIDENT\tform\n=\t=\nSTRING\t'formatted'\n,\t,\nIDENT\t1\nIDENT\tstatus\n=\t=\nSTRING\t'new'\n,\t,\nIDENT\trecl\n=\t=\nIDENT\t80\n,\t,\nIDENT\terr\n=\t=\nIDENT\t909\n)\t)\nCOMMENT\t*\nCOMMENT\t*       Read a line from standard input, write it to the new file,\nCOMMENT\t*       and echo it to standard output.\nCOMMENT\t*\nIDENT\tdo\nIDENT\tj\n=\t=\nIDENT\t1\n,\t,\nIDENT\t100\nIDENT\tread\n(\t(\nIDENT\t5\n,\t,\nIDENT\t10\n,\t,\nIDENT\tend\n=\t=\nIDENT\t910\n)\t)\nIDENT\tinline\nIDENT\twrite\n(\t(\nIDENT\t1\n,\t,\nIDENT\t20\n,\t,\nIDENT\trec\n=\t=\nIDENT\tj\n)\t)\nIDENT\tinline\nIDENT\twrite\n(\t(\nIDENT\t5\n,\t,\nIDENT\t20\n)\t)\nIDENT\tinline\nIDENT\tenddo\nIDENT\t10\nIDENT\tformat\n(\t(\nIDENT\t79\nIDENT\ta\n)\t)\nIDENT\t20\nIDENT\tformat\n(\t(\nIDENT\t1\nIDENT\tx79a\n)\t)\nIDENT\tGoTo\nIDENT\t910\nIDENT\t909\nIDENT\tprint\n*\t*,\nSTRING\t'Error opening file.'\nIDENT\t910\nIDENT\tcontinue\nIDENT\tclose\n(\t(\nIDENT\tunit\n=\t=\nIDENT\t1\n)\t)\nIDENT\tclose\n(\t(\nIDENT\tunit\n=\t=\nIDENT\t5\n)\t)\nIDENT\tend\nIDENT\tsubroutine\nIDENT\tf90_stuff\nIDENT\tinteger\nIDENT\tunit\n,\t,\nIDENT\tinputsize\n,\t,\nIDENT\tval\n,\t,\nIDENT\ti1\nIDENT\tcharacter\n*\t*2\nIDENT\t0\nIDENT\tc1\n,\t,\nIDENT\tc2\nIDENT\tunit\n=\t=\nIDENT\t3\nIDENT\topen\n(\t(\nIDENT\tunit\n=\t=\nIDENT\tunit\n,\t,\nIDENT\tfile\n=\t=\nSTRING\t'data.dat'\n,\t,\nIDENT\tstatus\n=\t=\nSTRING\t'old'\n,\t,\nIDENT\taction\n=\t=\nSTRING\t'read'\n,\t,\nIDENT\taccess\n=\t=\nSTRING\t'sequential'\n,\t,\nIDENT\tform\n=\t=\nSTRING\t'formatted'\n,\t,\nIDENT\terr\n=\t=\nIDENT\t910\n)\t)\nIDENT\tread\n(\t(\nIDENT\tunit\n=\t=\nIDENT\tunit\n,\t,\nIDENT\tfmt\n=\t=\nSTRING\t'(i10)'\n,\t,\nIDENT\tadvance\n=\t=\nSTRING\t'no'\n,\t,\nIDENT\tsize\n=\t=\nIDENT\tinputsize\n,\t,\nIDENT\terr\n=\t=\nIDENT\t920\n)\t)\nIDENT\tval\nIDENT\tinquire\n(\t(\nIDENT\tunit\n=\t=\nIDENT\tunit\n,\t,\nIDENT\trecl\n=\t=\nIDENT\ti1\n,\t,\nIDENT\taccess\n=\t=\nIDENT\tc1\n,\t,\nIDENT\tposition\n=\t=\nIDENT\tc2\n)\t)\nIDENT\twrite\n(\t(\nIDENT\tunit\n=\t=\n*\t*,\nIDENT\tfmt\n=\t=\nSTRING\t'(1x,a7)'\n,\t,\nIDENT\tadvance\n=\t=\nSTRING\t'yes'\n)\t)\nSTRING\t'Success'\nIDENT\tclose\n(\t(\nIDENT\tunit\n)\t)\nIDENT\treturn\nIDENT\t910\nIDENT\tprint\n*\t*,\nSTRING\t'Error opening file.'\nIDENT\treturn\nIDENT\t920\nIDENT\tprint\n*\t*,\nSTRING\t'Error reading file.'\nIDENT\treturn\nIDENT\tend\n"