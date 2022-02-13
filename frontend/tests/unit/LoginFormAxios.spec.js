import axios from 'axios'

jest.mock('axios');

describe('LoginTest', () => {
    it('postリクエストでユーザーが作成できていれば、ステータスコード200が返ってくる', async () => {
        const response = await axios.post('http://localhost:3000/auth/sign_in', {
            email: "test@test.com",
            password: "testtest",
            error: null,
        });
        // expect(response.statusCode).toBe(200)
        console.log(response)
    });
})
