#!/bin/bash
source .env

# text formatting (Bold Cyan Background or Text for Title)
echo -e "\n\t\e[1;36m=== DVD Rental Database Creation ===\e[0m\n"

# getting data
echo -e "\t\e[1mTesting download....\e[0m"
wget -q -O "$savepath" "$url"
if [ $? -eq 0 ]; then
    echo -e "\t\e[32mSuccess: Command wget succeeded.\e[0m"
else
    echo -e "\t\e[31mError: Command wget failed.\e[0m"
fi

echo -e "\t\e[1mTesting unzip....\e[0m"
unzip -q "$savepath" -d "$tar_name"
if [ $? -eq 0 ]; then
    echo -e "\t\e[32mSuccess: Command unzip succeeded.\e[0m"
else
    echo -e "\t\e[31mError: Command unzip failed.\e[0m"
fi

# creating/removing database
echo -e "\t\e[1mTesting database setup....\e[0m"
PGPASSWORD="$password" psql -q -U "$username" -c "DROP DATABASE IF EXISTS \"$database\" WITH (FORCE);"
if [ $? -eq 0 ]; then
    echo -e "\t\e[32mSuccess: Postgres dropped database.\e[0m"
else
    echo -e "\t\e[31mError: Postgres failed to drop database.\e[0m"
fi

PGPASSWORD="$password" psql -q -U "$username" -c "CREATE DATABASE \"$database\";"
if [ $? -eq 0 ]; then
    echo -e "\t\e[32mSuccess: Postgres created database.\e[0m"
else
    echo -e "\t\e[31mError: Postgres failed to create database.\e[0m"
fi

# restoring database
echo -e "\t\e[1mTesting restore....\e[0m"
PGPASSWORD="$password" pg_restore -p 5432 -U "$username" -d "$database" "$tar_name/dvdrental.tar"
if [ $? -eq 0 ]; then
    echo -e "\t\e[32mSuccess: Postgres restored database from tar file.\e[0m"
else
    echo -e "\t\e[31mError: Postgres failed to restore database.\e[0m"
fi

# cleaning
echo -e "\t\e[1mCleaning up....\e[0m"
rm $savepath
if [ $? -eq 0 ]; then
    echo -e "\t\e[32mSuccess: Removed zip file.\e[0m"
else
    echo -e "\t\e[31mError: Failed to remove zip file.\e[0m"
fi

rm -rf $tar_name
if [ $? -eq 0 ]; then
    echo -e "\t\e[32mSuccess: Removed tar file.\e[0m"
else
    echo -e "\t\e[31mError: Failed to remove tar file.\e[0m"
fi
echo -e "\n"
