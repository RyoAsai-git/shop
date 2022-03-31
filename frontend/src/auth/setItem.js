const setItem = (headers, data) => {
    window.localStorage.setItem('access-token', headers['access-token'])
    window.localStorage.setItem('client', headers.client)
    window.localStorage.setItem('uid', headers.uid)
    window.localStorage.setItem('id', data.data.id)
    window.localStorage.setItem('name', data.data.name)
}

export default setItem