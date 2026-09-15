from desktoppet import greeting


def test_greeting_time_ranges():
    assert greeting(4) == '早上好.mp3'
    assert greeting(10) == '早上好.mp3'
    assert greeting(11) == '中午好.mp3'
    assert greeting(14) == '中午好.mp3'
    assert greeting(18) == '晚上好.mp3'
    assert greeting(24) == '晚上好.mp3'
    assert greeting(3) is False