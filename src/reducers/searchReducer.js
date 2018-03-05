const initialState = {
  searching: false,
  query: null,
  results: [],
  resultCount: null,
  err: null,
  mode: 'simple',
  instructions: true,
}

const searchReducer = (state = initialState, action) => {
  switch (action.type) {

    case 'SET_SEARCH_MODE':
      return Object.assign({}, state, {
        mode: action.mode,
      })

    case 'SEARCHING':
      return Object.assign({}, state, {
        searching: true,
        instructions: false,
      })

    case 'RECEIVE_SEARCH_RESULTS':
      return Object.assign({}, state, {
        searching: false,
        query: action.obj.query,
        results: action.obj.result.results,
        resultCount: action.obj.result.total,
        err: null,
        initialized: true,
      })

    case 'SEARCH_ERROR':
      return Object.assign({}, state, {
        err: true,
        results: [],
        resultCount: null,
      })

    default:
      return state
  }
}

export default searchReducer;