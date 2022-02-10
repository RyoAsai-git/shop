import {
    mount
} from '@vue/test-utils'
import Component from '../src/App.vue'


describe('Testing App component', () => {
    it('is a Vue instance', () => {
        const wrapper = mount(Component)
        expect(wrapper.isVueInstance).toBeTruthy()
    })
})