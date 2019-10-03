disp("Bab 4 Soal 1");

function s = poisson(m, n)
    for bil = 1:n
        u = rand;
        i = 0;
        p = exp(-m);
        F = p;
        sw = 0;
        
        while sw == 0
            if u < F
                x(bil) = i;
                sw = 1;
            else
                p = m * p / (i + 1);
                F = F + p;
                i = i + 1;
            end
        end
    end
    
    s = x;
    return;
end

function num = uniform_generate_lcm()
    random = floor(rand(1,1)*10);
    
    if random > 8 || random < 1
        num = uniform_generate_lcm();
        return;
    end
    
    num = random;
    return;
end

total_vehicles = 256;
poison_m = 5;

x = poisson(poison_m,total_vehicles);

trucks = [];

for bil = 1:100
    trucks = [trucks; [bil x(bil) uniform_generate_lcm()]]
end

disp("Nomor Urut, Waktu Kedatangan, Jumlah Barang");
disp(trucks);
