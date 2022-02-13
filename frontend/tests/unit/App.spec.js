import {
    mount
} from '@vue/test-utils'
import Component from '@/components/LoginForm.vue'

describe('LoginForm', () => {
    test('display LoginForm Text', () => {
        const wrapper = mount(Component)
        expect(wrapper.text()).toBe("ログインログインする")
    })
})