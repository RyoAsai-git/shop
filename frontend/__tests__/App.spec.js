import { mount } from '@vue/test-utils';
import Component from '@/App.vue';

describe('Testing App component', () => {
    it('is a Vue instance', () => {
        const wrapper = mount(Component)
        expect(wrapper.isVueInstance).toBeTruthy()
    })
})