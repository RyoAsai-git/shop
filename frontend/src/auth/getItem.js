const getItem = () => {
    const accessToken = window.localStorage.getItem('access-token')
    return accessToken;
}

export default getItem