def test_hello_world_response(client):
    response_body = client.get('/').json()
    assert response_body.get('message') == 'Hello World. Version 0.0.2'


def test_say_hello(client):
    name = 'Iharok'
    response_body = client.get(f'/hello/{name}').json()
    assert response_body.get('message') == f'Hello {name}'


def test_enum_with_valid_enum_member(client):
    member = 'one'
    response_body = client.get(f'/enum/{member}').json()
    assert response_body.get('message') == member


def test_enum_with_invalid_enum_member(client):
    member = 'адзін'
    response_body = client.get(f'/enum/{member}').json()
    assert not response_body.get('message')


def test_enum_without_member(client):
    response_body = client.get(f'/enum/').json()
    assert response_body.get('detail') == 'Not Found'
