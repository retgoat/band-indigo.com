defmodule BandIndigo.BandControllerTest do
  use BandIndigo.ConnCase

  test "GET /" do
    conn = get conn(), "/band"
    assert html_response(conn, 200) =~ "Indigo is an instrumental playing band based in Novosibirsk, Russia."
  end
end
