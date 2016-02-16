defmodule BandIndigo.PageControllerTest do
  use BandIndigo.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Band Indigo"
  end
end
