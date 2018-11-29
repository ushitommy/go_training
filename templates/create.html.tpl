<!DOCTYPE html>
<html>
<body>
    <h3>新規登録</h3>
    ==============<br>
    ***ここに登録フォームを出したい***<br>
    <b>実行条件：</b>
    <form action="/add">
    曜日：
    <input type="checkbox" name="day" value="sun" checked="checked" />日曜日
    <input type="checkbox" name="day" value="mon" />月曜日
    <input type="checkbox" name="day" value="tue" />火曜日
    <input type="checkbox" name="day" value="wed" />水曜日
    <input type="checkbox" name="day" value="thu" />木曜日
    <input type="checkbox" name="day" value="fri" />金曜日
    <input type="checkbox" name="day" value="stu" />土曜日<br>
    <input type="hidden" name="date" value="*" />
    <input type="hidden" name="month" value="*" />
    時間：
    <input type="txt" size="5" name="hour" />時<input type="txt" size="5" name="min" />分<br>
    しゃべらせる内容：
    <input type="text" size="120" name="text" /><br>
    <input type="submit" value="追加" />
    </form>
    ==============<br>
<br><br>
    <h3>ジョブ一覧</h3>
    <table border="1">
        <tr>
            <th>ID</th><th>分</th><th>時</th><th>日</th><th>月</th><th>曜日</th><th>しゃべる内容</th>
        </tr>
        {{range .}}
        <tr>
            <td>{{ .ID }}</td><td>{{ .Hour }}</td><td>{{ .Min }}</td><td>{{ .Date }}</td><td>{{ .Month }}</td><td>{{ .Day }}</td><td>{{ .Text }}</td>
        </tr>
        {{end}}
    </table>
    <br><br>
    <form>
    <input type="button" onclick="location.href='../'" value="Topにもどる" />
    </form>
</body>
</html>
