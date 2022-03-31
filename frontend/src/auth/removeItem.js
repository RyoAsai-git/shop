const removeItem = () => {
    window.localStorage.removeItem('access-token')
    window.localStorage.removeItem('client')
    window.localStorage.removeItem('uid')
    window.localStorage.removeItem('name')
    window.localStorage.setItem('id')
}

export default removeItem