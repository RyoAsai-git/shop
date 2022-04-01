import {
    mount
} from '@vue/test-utils'
import LoginForm from '@/components/Auth/LoginForm.vue'

describe('LoginForm', () => {
    test('display LoginForm Text', () => {
        const wrapper = mount(LoginForm)
        expect(wrapper.text()).toBe("ログインログインする")
    })
})