local connection = nil
addEventHandler("onResourceStart",resourceRoot,function(resource)
		connection = dbConnect("mysql","dbname=dbname;host=127.0.0.1;port=3306;","user","pass", "autoreconnect=1")
		if connection then
			outputDebugString(getResourceName(resource) .. " : connected to database.")
			return true
		else
			outputDebugString(getResourceName(resource) .. " : Unable to connect with database. Please contact Developer.")
			return false
		end
	end
)

function _Query( ... )
	if connection then
		local query = dbQuery(connection, ... )
		local result = dbPoll(query,-1)
		return result
	else
		return false
	end
end

function _QuerySingle(str,...)
	if connection then
		local result = _Query(str,...)
		if type(result) == 'table' then
			return result[1]
		end
	else
		return false
	end
end

function _Exec(str,...)
	if connection then
		local query = dbExec(connection,str,...)
		return query
	else
		return false
	end
end