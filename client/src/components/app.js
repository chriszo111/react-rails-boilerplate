import React, { useState } from 'react';
import './app.css';
import Users from './users/users';

const App = () => {
    const [message, setMessage] = useState("Click the button to fetch data!");
    const [showUsers, setShowUsers] = useState(false);

    return (
        <div className="App">
        <h1>{ message }</h1>
        <button onClick={() => setShowUsers(true)} >
            Fetch Data
        </button>

        {showUsers && <Users />}
        </div>
    );
}

export default App;
