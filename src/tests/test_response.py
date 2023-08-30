def test_response_normal(test_client):
    response = test_client.get('/')
    assert response.status_code == 200
    assert b'Hello, World!' in response.data