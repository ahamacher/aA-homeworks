const initialState = {
  city: "Please Select", 
  jobs: []
};

const reducer = (state = initialState, action) => {
  switch(action.type){
    default:
      return state;
    case "SWITCH_LOCATION":
      return { jobs: action.jobs, city: action.city };
  }
};

export default reducer;
