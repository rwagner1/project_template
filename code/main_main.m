%Hauptfunktion
%Bekommt Parameter von main_initialize_system und gibt ???? aus

function[path_length]= main_main(alpha, beta_0, no_agents, data_set, rounds)



%Auslesen der Anzahl Städte
no_cities = length (data_set(1));									%Länge der ersten Spalte der Matrix auslesen

%Memory der Ameise, Matrix mit Anzahl Städten x Anzahl Agents
%1 heisst noch nicht besucht.
M_k = ones(no_cities, no_agents);
tau = zeros (no_cities);											%tau als pheromenin-matrix mit dimension no_cities x no_cities, zu beginn alles null

%Berechnen von L_nn, benötigt für tau0

L_nn = calc_Lnn(data_set, no_cities);								%Function calc_Lnn aufrufen um L_nn zu berechnen
tau0 = 1/(no_cities*L_nn);



start_city = 1; 													%Agent startet bei erster Stadt
current_city = start_city;


%-------------------------------------------------------------------------------
%Start der Berechnung mit "rounds"-Durchgängen
%-------------------------------------------------------------------------------


for ii = 1:rounds
    
    path_length = zeros(no_agents,1);


	for current_agent = 1:no_agents

		while sum(M_k(:, current_agent)) > 0							%Solange es noch unbesuchte Städte gibt

			sadfasarghdfjfgjdrsrg

		end

		path_length(current_agent) = path_length(current_agent) + data_set(current_city, start_city);						%Weg nach Hause dazu addieren
		M_k(:, current_agent) = 1;																							%Die Memory auf Anfang setzten

		tau(start_city, current_city) = (1-alpha)*tau(start_city, current_city)+alpha*tau0;									%Pheromaninupdate

		%------------------------
		%Finde shortest path
		%------------------------

		if current_agent == 1											%Erster Path als shortest setzen														
			shortest_path = path_length(current_agent);
		else   															%Für alle weiteren Agents vergleichen
										
			if path_length(current_agent) < shortest_path

				shortest_path = path_length(current_agent);
				shortest_path_index = current_agent;					%Welcher Agent hatte shortest path, wird benötigt um später globales phenomanim update zu machen


			end

		end

		%------shortest path gefunden-------------

	end  %current_agent

	%-----------------------------------------------------
	%Globales Update
	%-----------------------------------------------------

end




		

