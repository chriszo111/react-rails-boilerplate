import { useQuery, gql } from '@apollo/client';

const GET_USERS = gql`
  query GetUsers {
    users {
      id
      username
      firstName
      lastName
    }
  }
`;

const Users = () => {
    const { loading, error, data } = useQuery(GET_USERS);

    if (loading) return <p>Loading...</p>;
    if (error) return <p>Error : {error.message}</p>;

    return data?.users.map(({ id, username, firstName, lastName }) => (
      <div key={id}>
        <h3>{username}</h3>
        {/* <img width="400" height="250" alt="location-reference" src={`${photo}`} /> */}
        <br />
        <b>Full Name</b>
        <p>{`${firstName} ${lastName}`}</p>
        <br />
      </div>
    ));
}

export default Users;