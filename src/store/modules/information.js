export default {
    state: {
        age: 0
    },

    getters: {
        getAge(state){
            return state.age
        }
    },

    mutations: {
        calculateCurrentAge(state){
            const birthday = new Date("2002-05-27");
            const ageDifference = new Date(Date.now() - birthday.getTime());

            state.age = Math.abs(ageDifference.getUTCFullYear() - 1970);
        }
    }
}
