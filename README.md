# Commands used for testing 
```sh
leo run mint 1000u64
leo run transfer "{
    owner: aleo1rhgdu77hgyqd3xjj8ucu3jj9r2krwz6mnzyd80gncr5fxcwlh5rsvzp9px.private,
    amount: 100u64.private,
    _nonce: 2862854231602763909745872587975855627690020247876952621029518525976339362324group.public
}" "aleo1w68h4k2zkr7ah54qkfuz3m2dt6fawut83jhgwtva59v6xp6c058qt980kd" 10u64 
leo run balance_of 
```